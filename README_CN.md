<p align="center">
  <a href="https://github.com/Fliggy-Mobile">
    <img width="200" src="https://gw.alicdn.com/tfs/TB1a288sxD1gK0jSZFKXXcJrVXa-360-360.png">
  </a>
</p>

<h1 align="center">floading</h1>


<div align="center">

<p>帮助开发者用最便捷的方式创建 Loading。</p>

<p>轻松创建和管理 Loading，支持全局自定义和单次自定义，支持定时消失。</p>

<p><strong>主理人：<a href="">昌易</a>(<a href="fupeng.fp@alibaba-inc.com">fupeng.fp@alibaba-inc.com</a>)</strong></p>

<p>

<a href="https://pub.dev/packages/floading#-readme-tab-">
    <img height="20" src="https://img.shields.io/badge/Version-1.0.0-important.svg">
</a>


<a href="https://github.com/Fliggy-Mobile/floading">
    <img height="20" src="https://img.shields.io/badge/Build-passing-brightgreen.svg">
</a>


<a href="https://github.com/Fliggy-Mobile">
    <img height="20" src="https://img.shields.io/badge/Team-FAT-ffc900.svg">
</a>

<a href="https://www.dartcn.com/">
    <img height="20" src="https://img.shields.io/badge/Language-Dart-blue.svg">
</a>

<a href="https://pub.dev/documentation/floading/latest/floading/floading-library.html">
    <img height="20" src="https://img.shields.io/badge/API-done-yellowgreen.svg">
</a>

<a href="http://www.apache.org/licenses/LICENSE-2.0.txt">
   <img height="20" src="https://img.shields.io/badge/License-Apache--2.0-blueviolet.svg">
</a>

<p>
<p>

</div>

![](https://gw.alicdn.com/tfs/TB1XHHyf8Bh1e4jSZFhXXcC9VXa-1462-552.png)


**[English](https://github.com/Fliggy-Mobile/floading) | 简体中文**

> 感觉还不错？请投出您的 **Star** 吧 🥰 ！

# ✨ 特性

- 提供最便捷的方式，控制  **Loading**  的  **展示/隐藏** 

- 支持修改背景颜色

- 支持定时自动隐藏

- 支持局部和全局自定义样式

# 🛠 使用指南

## 参数说明

```dart
  /// 显示 Loading
  /// [loading] - 自定义的 Loading 视图
  /// [duration] - 指定毫秒后，自动隐藏。如果为 null，则不自动隐藏
  /// [color] - loading 时的背景颜色，默认为 [Colors.black54]
  /// [closable] - 是否可以通过返回按钮关闭 loading
  static show(BuildContext context,
      {Widget loading, int duration, Color color, bool closable = false})



  /// 隐藏 loading。
  /// [context] 有时，开发者可能需要自行传入当前 [context]。
  ///
  /// Hide loading
  /// [context] Sometimes, developers may need to pass in the current [context] by themselves.
  static hide({BuildContext context})
```

## 🌈 显示/隐藏

![](https://gw.alicdn.com/tfs/TB1PN_dbwgP7K4jSZFqXXamhVXa-720-449.gif)

```dart

/// 显示
///
/// show 
FLoading.show(context);


/// 隐藏
///
/// hide 
FLoading.hide();
```

通过  **FLoading**  来实现  **Loading**  的 **显示/隐藏** ，真是太简单了。


## 💎 自定义样式

![](https://gw.alicdn.com/tfs/TB1cZHVpcKfxu4jSZPfXXb3dXXa-750-468.gif)

 **FLoading**  允许开发者自由的定义全局  **Loading**  样式或单次展示的  **Loading**  样式。

### 自定义全局样式

```dart

/// 定义全局 Loading 样式
///
///Define global loading style
FLoading.init(CupertinoActivityIndicator(), backgroundColor: Colors.black38);

/// 显示
///
/// show
FLoading.show(context);
```

### 自定义单次样式

```dart
FLoading.show(context,
  
  /// 通过 loading 配置单次样式
  ///
  /// One-shot style configuration via loading
  loading: Image.asset(
    "assets/loading_gif_2.gif",
    width: 100,
    height: 100,
  ));
```

## 🛰 定时隐藏和背景颜色

![](https://gw.alicdn.com/tfs/TB1LAuKaOpE_u4jSZKbXXbCUVXa-750-468.gif)

```dart
FLoading.show(
  context,
  loading: Image.asset(
    "assets/loading_gif_1.gif",
    width: 200,
    height: 200,
  ),

  /// 定时隐藏
  ///
  /// Timed hiding
  duration: 3000,

  /// 配置背景样式
  ///
  /// Configure background style
  color: Colors.red[300].withOpacity(0.3),
)
```

# 😃 如何使用？

在项目 `pubspec.yaml` 文件中添加依赖：

## 🌐 pub 依赖方式

```
dependencies:
  floading: ^<版本号>
```

> ⚠️ 注意，请到 [**pub**](https://pub.dev/packages/floading) 获取 **FLoading** 最新版本号

## 🖥 git 依赖方式

```
dependencies:
  floading:
    git:
      url: 'git@github.com:Fliggy-Mobile/floading.git'
      ref: '<分支号 或 tag>'
```


> ⚠️ 注意，分支号 或 tag 请以 [**FLoading**](https://github.com/Fliggy-Mobile/floading) 官方项目为准。


# 💡 License

```
Copyright 2020-present Fliggy Android Team <alitrip_android@list.alibaba-inc.com>.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at following link.

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

```


### 感觉还不错？请投出您的 [**Star**](https://github.com/Fliggy-Mobile/floading) 吧 🥰 ！


---

# 如何运行 Demo 工程？

1.**clone** 工程到本地

2.进入工程 `example` 目录，运行以下命令

```
flutter create .
```

3.运行 `example` 中的 Demo



