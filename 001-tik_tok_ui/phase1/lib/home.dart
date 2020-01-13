import 'package:flutter/material.dart';
import 'package:tik_tok_ui/widgets/actions_toolbar.dart';
import 'package:tik_tok_ui/widgets/bottom_toolbar.dart';
import 'package:tik_tok_ui/widgets/video_description.dart';


/// Empty page widget fo developers that want to follow along with the tutorial
/// on breaking down and implementing the Tik Tok UI (BLOG_LINK)
class Home extends StatelessWidget {
  Widget get topSection => Container(
    height: 100.0,
    child: Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text('Following'),
        Container(
          width: 15.0,
        ),
        Text('For you', style: TextStyle(
          fontSize: 17.0,
          fontWeight: FontWeight.bold
        ),)
      ],
    ),

  );

  Widget get middleSection => Expanded(
    child: Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        VideoDescription(),
        ActionsToolbar(),
      ],
    ),
  );

  Widget get bottomSection => Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: List<Widget>.generate(5, (index) => Container(
      width: 40.0,
      height: 40.0,
      color: Colors.purple[300],
    )),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          // Top section
          topSection,

          // Middle section
          middleSection,

          // Button section
          BottomToolbar()
        ],
      )
    );
  }
}
