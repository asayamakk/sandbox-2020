import 'dart:io' show Platform;

import 'package:grpc/grpc.dart';

import 'package:counter_grpc/src/grpc_services/order_service.dart';

Future<void> main() async {
  final server = Server([OrderService()]);
  await server.serve(port: int.parse(Platform.environment["PORT"] ?? "50051"));
  print('Server listening on port ${server.port}...');
}
