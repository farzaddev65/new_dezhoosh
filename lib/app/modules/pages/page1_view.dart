import 'package:bestdroid/app/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

class Page1View extends StatefulWidget {
  const Page1View({super.key});

  @override
  State<Page1View> createState() => _Page1ViewState();
}

class _Page1ViewState extends State<Page1View> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: _appBar(),
      body: Container(),
    );
  }
  AppBar _appBar()=>AppBar(
    title: Text('دستگاه های اتوماسیون').titleLarge(),
  );
}
