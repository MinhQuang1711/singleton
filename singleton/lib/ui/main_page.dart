import 'package:flutter/material.dart';
import 'package:singleton/singleton/singleton.dart';
import 'package:singleton/widget/custombutton.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void onChangeTitle() {
    setState(() {
      Singleton.instance.changeTitle('New Title');
    });
  }

  void onResetTitle() {
    setState(() {
      Singleton.instance.initTitle();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          Singleton.instance.getTitle() ?? '',
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onPressed: onResetTitle,
              content: '   Reset title   ',
            ),
            CustomButton(
              onPressed: onChangeTitle,
              content: 'Changed title',
              backgroundColor: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
