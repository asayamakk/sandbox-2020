import 'dart:io' show Platform;

import 'package:grpc/grpc.dart';
import 'package:args/args.dart';
import 'package:counter_grpc/src/generated/order.pbgrpc.dart';

Future<void> main(List<String> args) async {
  final parser = ArgParser()..addOption('budget', abbr: 'b');
  final results = parser.parse(args);
  final budget = int.parse(results['budget'] ?? "1000");
  print("budget: ${budget}");

  final channel = ClientChannel(
    'localhost',
    port: int.parse(Platform.environment["PORT"] ?? "50051"),
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
  final stub = OrderClient(channel);
  try {
    final response = await stub.omakase(MenuRequest()..budget = budget);
    print('menus are: ${response.menus}');
  } catch (e) {
    print('Caught error: $e');
  }
  await channel.shutdown();
}
