import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class SharePage extends StatefulWidget {
  const SharePage({super.key});

  @override
  _SharePageState createState() => _SharePageState();
}

class _SharePageState extends State<SharePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("邀请好友")),
      body: Container(
        color: Colors.amber,
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(child: Text("https://pub.dev/packages/share_plus")),
                IconButton(onPressed: () {}, icon: Icon(Icons.share)),
              ],
            ),
            GFButton(
              onPressed: () {},
              color: Colors.red,
              blockButton: true,
              child: Text("保存二维码"),
            ),
          ],
        ),
      ),
    );
  }
}
