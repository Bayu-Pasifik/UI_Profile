import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              height: Get.mediaQuery.size.height / 2,
              width: Get.mediaQuery.size.width,
              // color: Colors.amber,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "Assets/images/bg.jpg",
                      ),
                      fit: BoxFit.cover)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage("Assets/images/bayu.jpg"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Bayu Pasifik",
                      style: GoogleFonts.notoSerif(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Flutter Developer",
                      style: GoogleFonts.notoSerif(
                          fontSize: 14,
                          // fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        Text(
                          "Malang , Jawa Timur , Indonesia",
                          style: GoogleFonts.notoSerif(
                              fontSize: 14, color: Colors.white),
                        )
                      ],
                    )
                  ]),
            ),
            TabBar(tabs: [
              Tab(
                child: Text(
                  "About Me",
                  style:
                      GoogleFonts.notoSerif(fontSize: 14, color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "My Skills",
                  style:
                      GoogleFonts.notoSerif(fontSize: 14, color: Colors.black),
                ),
              )
            ]),
            Expanded(
                child: TabBarView(
              children: [
                // ! tabs about me
                ListView(
                  padding: const EdgeInsets.all(8),
                  children: [
                    Text(
                      "Hey There ,",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "I'm Bayu Pasifik",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "i'm currently studying for bachelor degree in Computers and Science field, and My recent activities are studying and doing my assignments, even though I'm busy with assignments but I don't forget to take the time to improve my skills ",
                      style: GoogleFonts.notoSerif(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "You can Find me on",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      spacing: 8,
                      children: [
                        GestureDetector(
                          onTap: () => controller.facebook(),
                          child: const Sosmed(
                            assetName: 'Assets/images/facebook.png',
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () => controller.instagram(),
                          child: const Sosmed(
                            assetName: 'Assets/images/instagram.png',
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () => controller.discord(),
                          child: const Sosmed(
                            assetName: 'Assets/images/discord.png',
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () => controller.telegram(),
                          child: const Sosmed(
                            assetName: 'Assets/images/telegram.png',
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () => controller.whatsApp(),
                          child: const Sosmed(
                            assetName: 'Assets/images/whatsapp.png',
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () => controller.github(),
                          child: const Sosmed(
                            assetName: 'Assets/images/github-sign.png',
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                // ! tabs skills
                ListView(
                  padding: const EdgeInsets.all(8),
                  children: [
                    // ! HTML
                    LinearPercentIndicator(
                      progressColor: Colors.blue,
                      backgroundColor: Colors.black45,
                      curve: Curves.linearToEaseOut,
                      animation: true,
                      barRadius: const Radius.circular(15),
                      lineHeight: 15,
                      restartAnimation: true,
                      percent: .8,
                      animationDuration: 4000,
                      center: Text(
                        "80%",
                        style: GoogleFonts.dosis(fontWeight: FontWeight.bold),
                      ),
                      animateFromLastPercent: true,
                      trailing: Text(
                        "8/10",
                        style: GoogleFonts.dosis(fontWeight: FontWeight.bold),
                      ),
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      // onAnimationEnd: () => ,
                      leading:
                          Image.asset("Assets/images/html.png", height: 35),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // ! Css3
                    LinearPercentIndicator(
                      progressColor: Colors.blue,
                      backgroundColor: Colors.black45,
                      curve: Curves.linearToEaseOut,
                      animation: true,
                      barRadius: const Radius.circular(15),
                      lineHeight: 15,
                      restartAnimation: true,
                      percent: .5,
                      animationDuration: 4000,
                      center: Text("50%",
                          style:
                              GoogleFonts.dosis(fontWeight: FontWeight.bold)),
                      animateFromLastPercent: true,
                      trailing: Text("5/10",
                          style:
                              GoogleFonts.dosis(fontWeight: FontWeight.bold)),
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      // onAnimationEnd: () => ,
                      leading:
                          Image.asset("Assets/images/css-3.png", height: 35),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // ! JS
                    LinearPercentIndicator(
                      progressColor: Colors.blue,
                      backgroundColor: Colors.black45,
                      curve: Curves.linearToEaseOut,
                      animation: true,
                      barRadius: const Radius.circular(15),
                      lineHeight: 15,
                      restartAnimation: true,
                      percent: .4,
                      animationDuration: 4000,
                      center: Text("40%",
                          style:
                              GoogleFonts.dosis(fontWeight: FontWeight.bold)),
                      animateFromLastPercent: true,
                      trailing: Text("4/10",
                          style:
                              GoogleFonts.dosis(fontWeight: FontWeight.bold)),
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      // onAnimationEnd: () => ,
                      leading: Image.asset("Assets/images/js.png", height: 35),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // ! Botstrap
                    LinearPercentIndicator(
                      progressColor: Colors.blue,
                      backgroundColor: Colors.black45,
                      curve: Curves.linearToEaseOut,
                      animation: true,
                      barRadius: const Radius.circular(15),
                      lineHeight: 15,
                      restartAnimation: true,
                      percent: .8,
                      animationDuration: 4000,
                      center: Text("80%",
                          style:
                              GoogleFonts.dosis(fontWeight: FontWeight.bold)),
                      animateFromLastPercent: true,
                      trailing: Text("8/10",
                          style:
                              GoogleFonts.dosis(fontWeight: FontWeight.bold)),
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      // onAnimationEnd: () => ,
                      leading: Image.asset("Assets/images/bootstrap.png",
                          height: 35),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // ! PHP
                    LinearPercentIndicator(
                      progressColor: Colors.blue,
                      backgroundColor: Colors.black45,
                      curve: Curves.linearToEaseOut,
                      animation: true,
                      barRadius: const Radius.circular(15),
                      lineHeight: 15,
                      restartAnimation: true,
                      percent: .7,
                      animationDuration: 4000,
                      center: Text("70%",
                          style:
                              GoogleFonts.dosis(fontWeight: FontWeight.bold)),
                      animateFromLastPercent: true,
                      trailing: Text("7/10",
                          style:
                              GoogleFonts.dosis(fontWeight: FontWeight.bold)),
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      // onAnimationEnd: () => ,
                      leading: Image.asset("Assets/images/php.png", height: 35),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // ! Laravel
                    LinearPercentIndicator(
                      progressColor: Colors.blue,
                      backgroundColor: Colors.black45,
                      curve: Curves.linearToEaseOut,
                      animation: true,
                      barRadius: const Radius.circular(15),
                      lineHeight: 15,
                      restartAnimation: true,
                      percent: .5,
                      animationDuration: 4000,
                      center: Text("50%",
                          style:
                              GoogleFonts.dosis(fontWeight: FontWeight.bold)),
                      animateFromLastPercent: true,
                      trailing: Text("5/10",
                          style:
                              GoogleFonts.dosis(fontWeight: FontWeight.bold)),
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      // onAnimationEnd: () => ,
                      leading:
                          Image.asset("Assets/images/laravel.png", height: 35),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // ! SQL
                    LinearPercentIndicator(
                      progressColor: Colors.blue,
                      backgroundColor: Colors.black45,
                      curve: Curves.linearToEaseOut,
                      animation: true,
                      barRadius: const Radius.circular(15),
                      lineHeight: 15,
                      restartAnimation: true,
                      percent: .4,
                      animationDuration: 4000,
                      center: Text("40%",
                          style:
                              GoogleFonts.dosis(fontWeight: FontWeight.bold)),
                      animateFromLastPercent: true,
                      trailing: Text("4/10",
                          style:
                              GoogleFonts.dosis(fontWeight: FontWeight.bold)),
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      // onAnimationEnd: () => ,
                      leading: Image.asset("Assets/images/sql.png", height: 35),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // ! C++
                    LinearPercentIndicator(
                      progressColor: Colors.blue,
                      backgroundColor: Colors.black45,
                      curve: Curves.linearToEaseOut,
                      animation: true,
                      barRadius: const Radius.circular(15),
                      lineHeight: 15,
                      restartAnimation: true,
                      percent: .45,
                      animationDuration: 4000,
                      center: Text("45%",
                          style:
                              GoogleFonts.dosis(fontWeight: FontWeight.bold)),
                      animateFromLastPercent: true,
                      trailing: Text("4.5/10",
                          style:
                              GoogleFonts.dosis(fontWeight: FontWeight.bold)),
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      // onAnimationEnd: () => ,
                      leading: Image.asset("Assets/images/c-.png", height: 35),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // ! Java
                    LinearPercentIndicator(
                      progressColor: Colors.blue,
                      backgroundColor: Colors.black45,
                      curve: Curves.linearToEaseOut,
                      animation: true,
                      barRadius: const Radius.circular(15),
                      lineHeight: 15,
                      restartAnimation: true,
                      percent: .5,
                      animationDuration: 4000,
                      center: Text("50%",
                          style:
                              GoogleFonts.dosis(fontWeight: FontWeight.bold)),
                      animateFromLastPercent: true,
                      trailing: Text("5/10",
                          style:
                              GoogleFonts.dosis(fontWeight: FontWeight.bold)),
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      // onAnimationEnd: () => ,
                      leading:
                          Image.asset("Assets/images/java.png", height: 35),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // ! Dart
                    LinearPercentIndicator(
                      progressColor: Colors.blue,
                      backgroundColor: Colors.black45,
                      curve: Curves.linearToEaseOut,
                      animation: true,
                      barRadius: const Radius.circular(15),
                      lineHeight: 15,
                      restartAnimation: true,
                      percent: .6,
                      animationDuration: 4000,
                      center: Text("60%",
                          style:
                              GoogleFonts.dosis(fontWeight: FontWeight.bold)),
                      animateFromLastPercent: true,
                      trailing: Text("6/10",
                          style:
                              GoogleFonts.dosis(fontWeight: FontWeight.bold)),
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      // onAnimationEnd: () => ,
                      leading:
                          Image.asset("Assets/images/dart.png", height: 35),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // ! Flutter
                    LinearPercentIndicator(
                      progressColor: Colors.blue,
                      backgroundColor: Colors.black45,
                      curve: Curves.linearToEaseOut,
                      animation: true,
                      barRadius: const Radius.circular(15),
                      lineHeight: 15,
                      restartAnimation: true,
                      percent: .6,
                      animationDuration: 4000,
                      center: Text("60%",
                          style:
                              GoogleFonts.dosis(fontWeight: FontWeight.bold)),
                      animateFromLastPercent: true,
                      trailing: Text("6/10",
                          style:
                              GoogleFonts.dosis(fontWeight: FontWeight.bold)),
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      // onAnimationEnd: () => ,
                      leading: const FlutterLogo(size: 35),
                    ),
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    ));
  }
}

class Sosmed extends GetView<HomeController> {
  final String assetName;

  const Sosmed({
    required this.assetName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(assetName))),
    );
  }
}
