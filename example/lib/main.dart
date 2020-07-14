import 'package:fbutton/fbutton.dart';
import 'package:fcommon/fcommon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:floading/floading.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    FLoading.init(CupertinoActivityIndicator(), backgroundColor: Colors.black38);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: mainBackgroundColor,
          appBar: AppBar(
            backgroundColor: mainBackgroundColor,
            title: const Text(
              'FLoading',
              style: TextStyle(color: mainTextTitleColor),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  buildTitle("Base FLoading"),
                  buildMiddleMargin(),
                  buildMiddleMargin(),
                  buildMiddleMargin(),

                  /// Base FLoading
                  FButton(
                    text: "Click to show FLoading",
                    style: TextStyle(color: mainTextTitleColor),
                    color: mainBackgroundColor,
                    padding: EdgeInsets.all(12.0),
                    onPressed: () {
                      FLoading.show(context, duration: 2000);
                    },
                    isSupportNeumorphism: true,
                  ),

                  buildMiddleMargin(),
                  buildMiddleMargin(),
                  buildMiddleMargin(),
                  buildTitle("Custom FLoading"),
                  buildMiddleMargin(),
                  buildMiddleMargin(),
                  buildMiddleMargin(),

                  /// Custom FLoading
                  FButton(
                    text: "Click to show FLoading",
                    style: TextStyle(color: mainTextTitleColor),
                    color: mainBackgroundColor,
                    padding: EdgeInsets.all(12.0),
                    onPressed: () {
                      FLoading.show(context,
                          loading: Image.asset(
                            "assets/loading_gif_2.gif",
                            width: 100,
                            height: 100,
                          ),
                          duration: 5000);
                    },
                    isSupportNeumorphism: true,
                  ),

                  buildMiddleMargin(),
                  buildMiddleMargin(),
                  buildMiddleMargin(),
                  buildTitle("Background Color"),
                  buildMiddleMargin(),
                  buildMiddleMargin(),
                  buildMiddleMargin(),

                  FButton(
                    text: "Click to show FLoading",
                    style: TextStyle(color: mainTextTitleColor),
                    color: mainBackgroundColor,
                    padding: EdgeInsets.all(12.0),
                    onPressed: () {
                      FLoading.show(
                        context,
                        loading: Image.asset(
                          "assets/loading_gif_1.gif",
                          width: 200,
                          height: 200,
                        ),
                        duration: 3000,
                        color: Colors.red[300].withOpacity(0.3),
                      );
                    },
                    isSupportNeumorphism: true,
                  ),

                  buildBiggestMargin(),
                  buildBiggestMargin(),

                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
