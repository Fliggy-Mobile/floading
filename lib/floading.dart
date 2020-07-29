import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 便捷的创建 loading，支持设置全局样式，也支持设置单次样式。能够自动消失。
///
/// It is convenient to create loading, support setting global style, and also support setting single style. Can disappear automatically.
class FLoading {
  static bool _isShow = false;
  static BuildContext _cacheContext;
  static Widget _loading;
  static Color _backgroundColor;

  static Timer _timer;

  /// 是否正在显示 loading
  ///
  /// Whether loading is being displayed
  static bool get isShow {
    return _isShow;
  }

  /// 初始化默认的 loading 视图
  ///
  /// Initialize the default loading view
  static init(Widget widget, {Color backgroundColor}) {
    _loading = widget;
    if (backgroundColor != null) {
      _backgroundColor = backgroundColor;
    }
  }

  /// 显示 Loading
  /// [loading] - 自定义的 Loading 视图
  /// [duration] - 指定毫秒后，自动隐藏。如果为 null，则不自动隐藏
  /// [color] - loading 时的背景颜色，默认为 [Colors.black54]
  /// [closable] - 是否可以通过返回按钮关闭 loading
  ///
  /// Display Loading
  /// [loading]-custom loading view
  /// [duration]-automatically hide after specified milliseconds. If null, do not hide automatically
  /// [color]-background color when loading, default is [Colors.black54]
  /// [closable]-Is it possible to close loading via the back button
  static show(BuildContext context,
      {Widget loading, int duration, Color color, bool closable = false}) {
    if (!_isShow) {
      _isShow = true;
      showDialog(
          barrierColor: color ?? _backgroundColor,
          barrierDismissible: false,
          useSafeArea: false,
          context: context,
          builder: (context) {
            _cacheContext = context;
            Widget widget = loading ?? _loading ?? CupertinoActivityIndicator();
            return WillPopScope(
              onWillPop: () async {
                if (closable) {
                  _timer.cancel();
                  hide();
                }
                return Future.value(false);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [widget],
              ),
            );
          });
      if (duration != null) {
       _timer = Timer(Duration(milliseconds: duration), () {
          hide();
        });
      }
    }
  }

  /// 隐藏 loading
  ///
  /// Hide loading
  static hide() {
    if (_isShow && _cacheContext != null) {
      _isShow = false;
      Navigator.pop(_cacheContext);
      _cacheContext = null;
    }
  }

  /// 出现任何异常时可调用尝试修复
  ///
  /// When any exception occurs, you can call to try to repair
  static fix() {
    hide();
    _cacheContext = null;
    _isShow = false;
  }
}
