import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icon_disappear/screens/second_page.dart';
import 'package:icon_disappear/utils/batch_handler.dart';
import 'package:icon_disappear/utils/di.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Center(
        child: Stack(
          children: [
            FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ),
                );
                inject<BadgeNotifier>().hideBagde();
              },
              child: Icon(Icons.add),
            ),
            ValueListenableBuilder<bool>(
              valueListenable: inject<BadgeNotifier>(),
              builder: (context, show, child) {
                if (show)
                  return Positioned(
                    right: 0,
                    child: SvgPicture.asset(
                      "assets/icons/new.svg",
                      height: 25,
                    ),
                  );
                return SizedBox();
              },
            ),
          ],
        ),
      ),
    );
  }
}
