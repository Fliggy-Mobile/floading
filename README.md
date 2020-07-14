<p align="center">
  <a href="https://github.com/Fliggy-Mobile">
    <img width="200" src="https://gw.alicdn.com/tfs/TB1a288sxD1gK0jSZFKXXcJrVXa-360-360.png">
  </a>
</p>

<h1 align="center">floading</h1>


<div align="center">

<p>Help developers create loading in the most convenient way.</p>

<p>Easily create and manage Loading, support global customization and one-time customization, support timing disappear.</p>

<p><strong>Author：<a href="">Changyi</a>(<a href="fupeng.fp@alibaba-inc.com">fupeng.fp@alibaba-inc.com</a>)</strong></p>

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

**English | [简体中文](https://github.com/Fliggy-Mobile/floading/blob/master/README_CN.md)**

> Like it? Please cast your **Star**  🥰 ！

# ✨ Features

- Provide the most convenient way to control **Showing/Hiding** of **Loading**

- Support to modify background color

- Support timing auto hide

- Support local and global custom styles

# 🛠 Guide

## Show/hide

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

It's too simple to implement **Show/Hide** of **Loading** through **FLoading**.


## Custom style

![](https://gw.alicdn.com/tfs/TB1cZHVpcKfxu4jSZPfXXb3dXXa-750-468.gif)

**FLoading** allows developers to freely define the global **Loading** style or the **Loading** style for a single impression.

### Custom global style

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

### Custom one-shot style

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

## Timed hiding and background color

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

# 😃 How to use？

Add dependencies in the project `pubspec.yaml` file:

## 🌐 pub dependency

```
dependencies:
  floading: ^<version number>
```

> ⚠️ Attention，please go to [**pub**] (https://pub.dev/packages/floading) to get the latest version number of **FSearch**

## 🖥 Git dependency

```
dependencies:
  floading:
    git:
      url: 'git@github.com:Fliggy-Mobile/floading.git'
      ref: '<Branch number or tag number>'
```

> ⚠️ Attention，please refer to [**FSearch**] (https://github.com/Fliggy-Mobile/floading) official project for branch number or tag.


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


### Like it? Please cast your [**Star**](https://github.com/Fliggy-Mobile/floading) 🥰 ！


---

# How to run Demo project?

1. **clone** project to local

2. Enter the project `example` directory and run the following command

```
flutter create .
```

3. Run the demo in `example`



