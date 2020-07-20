import 'package:grpc/grpc.dart';

import 'package:orderapp/src/generated/order.pbgrpc.dart';

class MyOrderClient {
  Future<MenuResponse> fetch(int budget) async {
    final channel = ClientChannel(
      'hellogrpc-txndfs65uq-an.a.run.app',
      port: 443,
    );
    final stub = OrderClient(channel);
    try {
      return await stub.omakase(MenuRequest()..budget = budget);
    } catch (e) {
      print('Caught error: $e');
    } finally {
      await channel.shutdown();
    }
  }
}
