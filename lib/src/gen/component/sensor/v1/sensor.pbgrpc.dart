///
//  Generated code. Do not modify.
//  source: component/sensor/v1/sensor.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'sensor.pb.dart' as $0;
import '../../../common/v1/common.pb.dart' as $1;
export 'sensor.pb.dart';

class SensorServiceClient extends $grpc.Client {
  static final _$getReadings =
      $grpc.ClientMethod<$0.GetReadingsRequest, $0.GetReadingsResponse>(
          '/viam.component.sensor.v1.SensorService/GetReadings',
          ($0.GetReadingsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetReadingsResponse.fromBuffer(value));
  static final _$doCommand =
      $grpc.ClientMethod<$1.DoCommandRequest, $1.DoCommandResponse>(
          '/viam.component.sensor.v1.SensorService/DoCommand',
          ($1.DoCommandRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.DoCommandResponse.fromBuffer(value));
  static final _$getGeometries =
      $grpc.ClientMethod<$1.GetGeometriesRequest, $1.GetGeometriesResponse>(
          '/viam.component.sensor.v1.SensorService/GetGeometries',
          ($1.GetGeometriesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetGeometriesResponse.fromBuffer(value));

  SensorServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetReadingsResponse> getReadings(
      $0.GetReadingsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReadings, request, options: options);
  }

  $grpc.ResponseFuture<$1.DoCommandResponse> doCommand(
      $1.DoCommandRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$doCommand, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetGeometriesResponse> getGeometries(
      $1.GetGeometriesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getGeometries, request, options: options);
  }
}

abstract class SensorServiceBase extends $grpc.Service {
  $core.String get $name => 'viam.component.sensor.v1.SensorService';

  SensorServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.GetReadingsRequest, $0.GetReadingsResponse>(
            'GetReadings',
            getReadings_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetReadingsRequest.fromBuffer(value),
            ($0.GetReadingsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DoCommandRequest, $1.DoCommandResponse>(
        'DoCommand',
        doCommand_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DoCommandRequest.fromBuffer(value),
        ($1.DoCommandResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.GetGeometriesRequest, $1.GetGeometriesResponse>(
            'GetGeometries',
            getGeometries_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.GetGeometriesRequest.fromBuffer(value),
            ($1.GetGeometriesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetReadingsResponse> getReadings_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetReadingsRequest> request) async {
    return getReadings(call, await request);
  }

  $async.Future<$1.DoCommandResponse> doCommand_Pre($grpc.ServiceCall call,
      $async.Future<$1.DoCommandRequest> request) async {
    return doCommand(call, await request);
  }

  $async.Future<$1.GetGeometriesResponse> getGeometries_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GetGeometriesRequest> request) async {
    return getGeometries(call, await request);
  }

  $async.Future<$0.GetReadingsResponse> getReadings(
      $grpc.ServiceCall call, $0.GetReadingsRequest request);
  $async.Future<$1.DoCommandResponse> doCommand(
      $grpc.ServiceCall call, $1.DoCommandRequest request);
  $async.Future<$1.GetGeometriesResponse> getGeometries(
      $grpc.ServiceCall call, $1.GetGeometriesRequest request);
}
