import 'dart:io';
import 'dart:math';

import 'package:counter_grpc/src/generated/order.pbgrpc.dart';
import 'package:grpc/src/server/call.dart';

class OrderService extends OrderServiceBase {
  static final List<Menu> _menus =
      File('assets/menu.tsv').readAsLinesSync().skip(2).map((line) {
    final values = line.split('	');
    return Menu()
      ..type = values[0]
      ..name = values[1]
      ..price = int.parse(values[2]);
  }).toList();

  @override
  Future<MenuResponse> omakase(ServiceCall call, MenuRequest request) async {
    var budgetLeft = request.budget;
    final response = MenuResponse();
    while (budgetLeft > 0) {
      var affordable =
          _menus.where((menu) => menu.price <= budgetLeft).toList();
      if (affordable.length == 0) {
        break;
      }
      var i = Random().nextInt(affordable.length);
      var menu = affordable[i];
      budgetLeft -= menu.price;
      response.menus.add(menu);
    }
    return response;
  }
}
