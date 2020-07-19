///
//  Generated code. Do not modify.
//  source: order.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class MenuRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MenuRequest', createEmptyInstance: create)
    ..a<$core.int>(1, 'budget', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  MenuRequest._() : super();
  factory MenuRequest() => create();
  factory MenuRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MenuRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MenuRequest clone() => MenuRequest()..mergeFromMessage(this);
  MenuRequest copyWith(void Function(MenuRequest) updates) => super.copyWith((message) => updates(message as MenuRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MenuRequest create() => MenuRequest._();
  MenuRequest createEmptyInstance() => create();
  static $pb.PbList<MenuRequest> createRepeated() => $pb.PbList<MenuRequest>();
  @$core.pragma('dart2js:noInline')
  static MenuRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MenuRequest>(create);
  static MenuRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get budget => $_getIZ(0);
  @$pb.TagNumber(1)
  set budget($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBudget() => $_has(0);
  @$pb.TagNumber(1)
  void clearBudget() => clearField(1);
}

class Menu extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Menu', createEmptyInstance: create)
    ..aOS(1, 'type')
    ..aOS(2, 'name')
    ..a<$core.int>(3, 'price', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Menu._() : super();
  factory Menu() => create();
  factory Menu.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Menu.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Menu clone() => Menu()..mergeFromMessage(this);
  Menu copyWith(void Function(Menu) updates) => super.copyWith((message) => updates(message as Menu));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Menu create() => Menu._();
  Menu createEmptyInstance() => create();
  static $pb.PbList<Menu> createRepeated() => $pb.PbList<Menu>();
  @$core.pragma('dart2js:noInline')
  static Menu getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Menu>(create);
  static Menu _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get price => $_getIZ(2);
  @$pb.TagNumber(3)
  set price($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrice() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrice() => clearField(3);
}

class MenuResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MenuResponse', createEmptyInstance: create)
    ..pc<Menu>(1, 'menus', $pb.PbFieldType.PM, subBuilder: Menu.create)
    ..hasRequiredFields = false
  ;

  MenuResponse._() : super();
  factory MenuResponse() => create();
  factory MenuResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MenuResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MenuResponse clone() => MenuResponse()..mergeFromMessage(this);
  MenuResponse copyWith(void Function(MenuResponse) updates) => super.copyWith((message) => updates(message as MenuResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MenuResponse create() => MenuResponse._();
  MenuResponse createEmptyInstance() => create();
  static $pb.PbList<MenuResponse> createRepeated() => $pb.PbList<MenuResponse>();
  @$core.pragma('dart2js:noInline')
  static MenuResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MenuResponse>(create);
  static MenuResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Menu> get menus => $_getList(0);
}

