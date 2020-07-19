///
//  Generated code. Do not modify.
//  source: order.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'order.pb.dart' as $0;
export 'order.pb.dart';

class OrderClient extends $grpc.Client {
  static final _$omakase = $grpc.ClientMethod<$0.MenuRequest, $0.MenuResponse>(
      '/Order/Omakase',
      ($0.MenuRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MenuResponse.fromBuffer(value));

  OrderClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.MenuResponse> omakase($0.MenuRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$omakase, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class OrderServiceBase extends $grpc.Service {
  $core.String get $name => 'Order';

  OrderServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.MenuRequest, $0.MenuResponse>(
        'Omakase',
        omakase_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MenuRequest.fromBuffer(value),
        ($0.MenuResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.MenuResponse> omakase_Pre(
      $grpc.ServiceCall call, $async.Future<$0.MenuRequest> request) async {
    return omakase(call, await request);
  }

  $async.Future<$0.MenuResponse> omakase(
      $grpc.ServiceCall call, $0.MenuRequest request);
}
