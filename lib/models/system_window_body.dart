import 'package:system_alert_window/system_alert_window.dart';
import 'package:system_alert_window/utils/commons.dart';

class SystemWindowBody {
  /// Rows to show in the body
  List<EachRow>? rows;

  /// Padding for the system window body
  SystemWindowPadding? padding;

  /// Decoration of the system window body
  SystemWindowDecoration? decoration;

  SystemWindowBody({this.rows, this.padding, this.decoration});

  /// Internal method to convert SystemWindowBody to primitive dataTypes
  Map<String, dynamic> getMap() {
    final Map<String, dynamic> map = <String, dynamic>{
      'rows': (rows == null)
          ? null
          : List<dynamic>.from(rows!.map((x) => x.getMap())),
      'padding': padding?.getMap(),
      'decoration': decoration?.getMap()
    };
    return map;
  }
}

class EachRow {
  List<EachColumn>? columns;
  SystemWindowPadding? padding;
  SystemWindowMargin? margin;
  ContentGravity? gravity;
  SystemWindowDecoration? decoration;

  EachRow(
      {this.columns, this.padding, this.margin, this.gravity, this.decoration});

  /// Internal method to convert EachRow to primitive dataTypes
  Map<String, dynamic> getMap() {
    final Map<String, dynamic> map = <String, dynamic>{
      'columns': (columns == null)
          ? null
          : List<dynamic>.from(columns!.map((x) => x.getMap())),
      'padding': padding?.getMap(),
      'margin': margin?.getMap(),
      'gravity': Commons.getContentGravity(gravity),
      'decoration': decoration?.getMap()
    };
    return map;
  }
}

class EachColumn {
  SystemWindowText? text;
  SystemWindowPadding? padding;
  SystemWindowMargin? margin;
  SystemWindowDecoration? decoration;

  EachColumn({this.text, this.padding, this.margin, this.decoration});

  /// Internal method to convert EachColumn to primitive dataTypes
  Map<String, dynamic> getMap() {
    final Map<String, dynamic> map = <String, dynamic>{
      'text': text?.getMap(),
      'padding': padding?.getMap(),
      'margin': margin?.getMap(),
      'decoration': decoration?.getMap()
    };
    return map;
  }
}
