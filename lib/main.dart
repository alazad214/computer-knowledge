import 'dart:async';

import 'package:computer_knowledge/reUsible.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({super.key});
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.push(context, CupertinoPageRoute(builder: (_) => MyHomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Column(
          children: [
            Text(
              "Open App",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, this.child});
  final Widget? child;

  Exit(context) {
    showDialog(
        context: context,
        builder: (_) {
          return CupertinoAlertDialog(
            title: Text('অ্যাপ থেকে বের হতে চান?'),
            content: Row(
              children: [
                OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("না")),
                SizedBox(
                  width: 30,
                ),
                OutlinedButton(
                    onPressed: () {
                      SystemNavigator.pop();
                    },
                    child: Text("হ্যাঁ")),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () {
        Exit(context);
        return Future.value(false);
      },
      child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 50,
              backgroundColor: Colors.pink,
              title: _CustomText("স্কিল গাইডলাইন-২০২৩"),
              centerTitle: true,
              elevation: 0,
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: 'ধারনা',
                  ),
                  Tab(
                    text: 'স্কিলসমুহ',
                  ),
                  Tab(
                    text: 'ডেভেলপার',
                  ),
                ],
                labelStyle: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            body: TabBarView(
              children: [
                SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        MyReusableWidget(
                            text: "আউটসোর্সিং ও ফ্রিল্যান্সিং",
                            ontap: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (_) => TextDes_s(
                                          text1: "আউটসোর্সিং ও ফ্রিল্যান্সিং",
                                          text2: "আউটসোর্সিং ও ফ্রিল্যান্সিং ",
                                          text3:
                                              "Freelancing শব্দটি এসেছে ‘free’ ও ‘lance’ শব্দ দুইটি থেকে। প্রচলিতভাবে ‘freelancing’ এর অর্থ হলে মুক্তপেশা বা স্বাধীনভাবে কাজ করা। "
                                              "ফ্রিল্যান্সিং অর্থ ধরাবাঁধা নিয়ম ছাড়াই স্বাধীনভাবে কাজ করা। মূলত অর্থের বিনিময়ে কাজ করা যোদ্ধাদের থেকে ফ্রিল্যান্সারদের উৎপত্তি।"
                                              "\n"
                                              " ১৮১৯ সালে প্রথম ফ্রিল্যান্সার শব্দ ছাপা হয় “Walter Scott” নামক এক লেখকের বইতে মুক্তপেশা কোনো নির্দিষ্ট ব্যক্তি বা প্রতিষ্ঠানের অধীনে না থেকে মু্ক্তভাবে কাজ করাকে বোঝায়। যারা এধরনের কাজ করেন তাদের বলা হয় ফ্রিলেন্সার।"
                                              "\n"
                                              " আধুনিক যুগে বেশিরভাগ মুক্তপেশার কাজগুলো ইন্টারনেটের মাধ্যমে সম্পন্ন হয়ে থাকে। ফলে মুক্ত পেশাজীবীরা ঘরে বসেই তাদের কাজ করে উপার্জন করতে পারেন। এ পেশার মাধ্যমে অনেকে প্রচলিত চাকরি থেকে বেশি আয় করে থাকেন, তবে তা আপেক্ষিক।"
                                              " ইন্টারনেটভিত্তিক কাজ হওয়াতে এ পেশার মাধ্যমে দেশি-বিদেশি হাজারো ক্লায়েন্টের সাথে পরিচিত হওয়ার সুযোগ ঘটে।"
                                              "\n"
                                              "\n"
                                              "আউটসোর্সিং (Outsourcing) মূলত একটি ব্যবসায়িক শব্দ, যার মানে হচ্ছে, কোন কাজ কোম্পানির অভ্যন্তরীণ কর্মচারীকে দিয়ে না করিয়ে ওই কাজ বাইরের কাউকে দিয়ে করিয়া নেয়া। আউটসোর্সিং কে ফ্রিল্যান্সিং এর মাধ্যমে ব্যবহার করা বুঝায়। মানে হচ্ছে, আপনি যদি যেকোন একটি বিষয়ে পারদর্শী হন, আর সেই কাজ অন্য কোন কোম্পানির জন্যে করতে চান, তখন সেটা ফ্রিল্যান্সিং বুঝায়।"
                                              "\n"
                                              "ধরুন, আপনার একটা কোম্পানি আছে। সেই কোম্পানিতে অনেক মানুষ চাকরি করে। তো প্রচারের তাগিদে আপনার কোম্পানির জন্য একজন Logo Designer এর প্রয়োজন হলো। কিন্তু আপনার কোম্পানিতে যতো মানুষ আছে, তারা তো এই লোগো ডিজাইনের কাজটা করতে পারবে না। তখন আপনি কি করবেন? একজন ডিজাইনারকে মাসিক বেতনে আপনার কোম্পানিতে রাখবেন? এর জন্য তো আপনাকে অনেক টাকা দিতে হবে। এবং আপনার শুধুমাএ একটি লোগোর প্রয়োজন। তাহলে শুধু শুধু মাসিক বেতন দিয়ে একটা ডিজাইনার কে আপনার কোম্পানিতে রেখেই বা লাভ কি? তাইনা!তো আপনার টাকা এবং সময় দুটোর অপচয় রোধ করার জন্য। আপনাকে সর্বপ্রথম ফ্রিল্যান্সিং মার্কেট প্লেসগুলোতে যেতে হবে। সেখান থেকে একজন ফ্রিল্যান্সারকে Hire করতে হবে। এবং সেই ফ্রিল্যান্সারকে দিয়ে আপনার কোম্পানির জন্য Logo তৈরি করে নিবেন। সটোই হলো আউটসোর্সিং।"
                                              "")));
                            }),
                        MyReusableWidget(
                            text: "যেভাবে শুরু করবেন", ontap: () {}),
                        MyReusableWidget(
                            text: "অনলাইনে কাজের ধরন", ontap: () {}),
                        MyReusableWidget(
                            text: "ফ্রিল্যান্সিং মার্কেটপ্লেস", ontap: () {}),
                        MyReusableWidget(
                            text: "ফ্রিল্যান্সিং ক্যারিয়ার কেন গড়বেন?",
                            ontap: () {}),
                        MyReusableWidget(
                            text: "মার্কেটপ্লেসে কীভাবে কাজ পাবেন?",
                            ontap: () {}),
                        MyReusableWidget(
                            text: "ফ্রিল্যান্সার হতে যা যা প্রয়োজন",
                            ontap: () {}),
                        MyReusableWidget(
                            text: "কীভাবে পারিশ্রমিক পাবেন?", ontap: () {}),
                        MyReusableWidget(
                            text: "কাদের জন্য ফ্রিল্যান্সিং ক্যারিয়ার",
                            ontap: () {}),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        Skill_s(
                            text1: "Programming",
                            ontap: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (_) => TextDes_s(
                                          text1: "azad",
                                          text2: "kabul",
                                          text3: "rohan")));
                            },
                            color: Colors.lightGreenAccent,
                            text2: "Digital marketing",
                            ontap2: () {},
                            color2: Colors.teal),
                        Skill_s(
                            text1: "Web Develop",
                            ontap: () {},
                            color: Colors.amberAccent,
                            text2: "App Develop",
                            ontap2: () {},
                            color2: Colors.white),
                        Skill_s(
                            text1: "Speed reading",
                            ontap: () {},
                            color: Colors.greenAccent,
                            text2: "Blockchain",
                            ontap2: () {},
                            color2: Colors.lightBlue),
                        Skill_s(
                            text1: "Data Analysis",
                            ontap: () {},
                            color: Colors.teal,
                            text2: " Graphic design",
                            ontap2: () {},
                            color2: Colors.lightGreenAccent),
                        Skill_s(
                            text1: "Photography",
                            ontap: () {},
                            color: Colors.white,
                            text2: "SEO",
                            ontap2: () {},
                            color2: Colors.amberAccent),
                        Skill_s(
                            text1: "AI",
                            ontap: () {},
                            color: Colors.lightBlue,
                            text2: "Machine learning",
                            ontap2: () {},
                            color2: Colors.greenAccent),
                        Skill_s(
                            text1: "Cybersecurity",
                            ontap: () {},
                            color: Colors.lightGreenAccent,
                            text2: "Robotics",
                            ontap2: () {},
                            color2: Colors.teal),
                        Skill_s(
                            text1: " 3D printing",
                            ontap: () {},
                            color: Colors.white,
                            text2: "Writing",
                            ontap2: () {},
                            color2: Colors.amberAccent),
                        Skill_s(
                            text1: "Video & Animation",
                            ontap: () {},
                            color: Colors.blueAccent,
                            text2: "Game Develop",
                            ontap2: () {},
                            color2: Colors.cyanAccent),
                        Skill_s(
                            text1: "UX & UI Design ",
                            ontap: () {},
                            color: Colors.deepPurpleAccent,
                            text2: "Cloud Computing",
                            ontap2: () {},
                            color2: Colors.limeAccent),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

Widget _CustomText(text) {
  return Text(
    text,
    style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 22,
        fontFamily: 'LiHasanlccheghuriUnicode'),
  );
}
