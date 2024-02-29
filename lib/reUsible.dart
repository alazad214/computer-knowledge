import 'package:flutter/material.dart';

class ReUsible extends StatelessWidget {
  const ReUsible({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reusable Widget Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [MyReusableWidget(text: "Bangladesh", ontap: () {})],
        ),
      ),
    );
  }
}

class MyReusableWidget extends StatelessWidget {
  final String text;
  var ontap;
  MyReusableWidget({required this.text, required this.ontap});
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
          height: 90,
          margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
          child: Card(
            elevation: 15,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: GestureDetector(
              onTap: ontap,
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ),
        ),
      )
    ]);
  }
}

class Devloper_s extends StatelessWidget {
  var ontap;
  var text;
  Devloper_s({required this.text, required this.ontap});
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
          height: 200,
          color: Colors.pink,
        ),
      )
    ]);
  }
}

class Skill_s extends StatelessWidget {
  var text1;
  var ontap;
  final Color color;
  var text2;
  var ontap2;
  final Color color2;

  Skill_s({
    required this.text1,
    required this.ontap,
    required this.color,
    required this.text2,
    required this.ontap2,
    required this.color2,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          margin: EdgeInsets.fromLTRB(15, 10, 5, 5),
          height: 150,
          child: GestureDetector(
            onTap: ontap,
            child: Card(
              elevation: 12,
              color: color,
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Icon(
                        Icons.quora,
                        size: 50,
                        color: Colors.pink,
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Center(
                        child: Text(
                      text1,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17.0,
                        color: Colors.black,
                      ),
                    )),
                  ),
                ],
              ),
            ),
          ),
        )),
        Expanded(
            child: Container(
          margin: EdgeInsets.fromLTRB(5, 10, 15, 5),
          height: 150,
          child: GestureDetector(
            onTap: ontap2,
            child: Card(
              elevation: 12,
              color: color2,
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Icon(
                        Icons.quora,
                        size: 50,
                        color: Colors.pink,
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Center(
                        child: Text(
                      text2,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17.0,
                        color: Colors.black,
                      ),
                    )),
                  ),
                ],
              ),
            ),
          ),
        )),
      ],
    );
  }
}

class TextDes_s extends StatelessWidget {
  var text1;
  var text2;
  var text3;
  TextDes_s({
    required this.text1,
    required this.text2,
    required this.text3,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          text1,
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: Colors.teal,
        toolbarHeight: 75,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(margin: EdgeInsets.all(4),
            width: double.infinity,
            child: Card(
              color: Colors.white,
              elevation: 20,
             child: Padding(
               padding: EdgeInsets.all(10),
               child: Text(
                    text3,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        ),
                ),
             ),
          ),),
        ],
      )),
    );
  }
}
