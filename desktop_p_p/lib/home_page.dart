import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text("♡ mina's OS"),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Center(
                child:
                    Text("06:13 am  ♡  7 °C", style: TextStyle(fontSize: 18))),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromRGBO(255, 205, 178, 1),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      _showDialog(
                          "My e-mail address", "amina.bardak@edu.fit.ba");
                    },
                    child: Image.network("https://i.imgur.com/eaFkRQc.png")),
                const Text("e-mail"),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                    onTap: () {
                      _showDialog("My skills",
                          "Soft skills:\n♡ Communication\n♡ Adaptability\n♡ Team work\n♡ Creativity\n♡ Empathy\n\nDigital Skills:\n♡ HTML,CSS,JS\n♡ C#\n♡ Flutter\n♡ Angular Framework\n♡ .NET Framework\n♡ SQL\n♡ Python\n♡ WebStorm\n♡ Microsoft Office\n♡ Power BI\n♡ Visual Studio");
                    },
                    child: Image.network("https://i.imgur.com/YXGOUY0.png")),
                const Text("skills"),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                    onTap: () {
                      _downloadPdf();
                    },
                    child: Image.network("https://i.imgur.com/Wp8L18n.png")),
                const Text("resume"),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(onTap: (){
                  _showDialog("My education", "♡ High School: STŠ 'Hasib Hadžović' Goražde\n♡ Bachelor Degree: Faculty Of Information Technology Mostar");
                },child: Image.network("https://i.imgur.com/yBVOMex.png")),
                const Text("education"),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(onTap: (){
                  _showDialog("My projects so far:", "♡ Garbage Monitoring IOT Project (more on my GitHub profile)\n♡ AI Machine Learning Diabetes Agent Predictor (more on my GitHub profile)\n♡ Animal Adoption App(work in progress; details on GitHub)");
                },child: Image.network("https://i.imgur.com/1jgBLMW.png")),
                const Text("projects"),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(onTap: (){
                  _openGitHub();
                },child: Image.network("https://i.imgur.com/eiYgLC2.png")),
                const Text("github"),
                const SizedBox(
                  height: 70,
                ),
                Text("Icons used are Designed By Freepik.",style: TextStyle(color: Colors.grey.shade500),)
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showDialog(String title, String content) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            backgroundColor: const Color.fromRGBO(255, 180, 162, 1),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Color.fromRGBO(
                            181, 130, 140, 1) //rgb(181, 130, 140)
                        ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(content),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(181, 130, 140, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Close",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Future<void> _downloadPdf() async {
    const pdfUrl =
        'https://drive.google.com/uc?export=download&id=1m9uJGHDuuq1hSN60tYZw8_5NudBsyZJX';

    // ignore: deprecated_member_use
    if (await canLaunch(pdfUrl)) {
      // ignore: deprecated_member_use
      await launch(pdfUrl);
    } else {
      throw 'Could not launch $pdfUrl';
    }
  }

  Future<void> _openGitHub() async {
    const gitUrl =
        'https://github.com/minniedd';

    // ignore: deprecated_member_use
    if (await canLaunch(gitUrl)) {
      // ignore: deprecated_member_use
      await launch(gitUrl);
    } else {
      throw 'Could not launch $gitUrl';
    }
  }
}
