import 'package:flutter/material.dart';

class CommonPageView extends StatefulWidget {
  final String head;
  final List<Widget> body;
  CommonPageView({this.head,this.body});
  @override
  _CommonPageViewState createState() => _CommonPageViewState();
}

class _CommonPageViewState extends State<CommonPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: LayoutBuilder(
            builder: (_, __) {
              var size = __.biggest;
              return Column(
                children: <Widget>[
                  SizedBox(
                    width: size.width,
                    height: size.height * 0.15,
                    child: Center(child: Text(widget.head)),
                  ),
                  SizedBox(
                    width: size.width,
                    height: size.height * 0.85,
                    child: PageView.builder(
                      itemCount: widget.body.length,
                        itemBuilder:(context,index){
                      return widget.body[index];
                    }),
                  )
                ],
              );
            },
          )
    );
  }
}

class CommonWidget extends StatelessWidget {
  final String head, body;

  CommonWidget({this.head, this.body});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, __) {
        var size = __.biggest;
        return Column(
          children: <Widget>[
            SizedBox(
              width: size.width,
              height: size.height * 0.3,
              child: Center(child: Text(head)),
            ),
            SizedBox(
              width: size.width,
              height: size.height * 0.7,
              child: Center(child: Text(body)),
            )
          ],
        );
      },
    );
  }
}
