import 'package:desktop_p_p/projects_page.dart';
import 'package:desktop_p_p/skills_page.dart';
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
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [Color(0xffdd5e89), Color(0xfff7bb97)],
        stops: [0, 1],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          scrolledUnderElevation: 0,
          surfaceTintColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text("♡ mina's OS", style: TextStyle(color: Colors.white)),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: Center(
                child: Text("06:13 am  ♡  7 °C",
                    style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //spacing
                  const SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                      onTap: () {
                        _showDialog(
                          "Hi!! My name is Amina Bardak. I am a student, currently studying software engineering.\nI live in Bosnia and Herzegovina.\nMy e-mail address (click to send!!)",
                          'amina.bardak@edu.fit.ba',
                          url: "mailto:amina.bardak@edu.fit.ba}",
                        );
                      },
                      child: Image.network("https://i.imgur.com/eaFkRQc.png")),
                  const Text("About me\n(Contact)"),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SkillsPageScreen()),
                        );
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
                  GestureDetector(
                      onTap: () {
                        _showDialog("My education",
                            "♡ High School: STŠ 'Hasib Hadžović' Goražde\n♡ Bachelor Degree: Faculty Of Information Technology Mostar");
                      },
                      child: Image.network("https://i.imgur.com/yBVOMex.png")),
                  const Text("education"),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProjectsPageScreen()),
                        );
                      },
                      child: Image.network("https://i.imgur.com/1jgBLMW.png")),
                  const Text("projects"),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                      onTap: () {
                        _openGitHub();
                      },
                      child: Image.network("https://i.imgur.com/eiYgLC2.png")),
                  const Text("github"),
                  const SizedBox(
                    height: 70,
                  ),
                  Text(
                    "Icons used are Designed By Freepik.",
                    style: TextStyle(color: Colors.grey.shade500),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showDialog(String title, String content, {String? url}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          backgroundColor: const Color.fromRGBO(255, 180, 162, 1),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Color.fromRGBO(181, 130, 140, 1),
                  ),
                ),
                const SizedBox(height: 15),
                InkWell(
                  onTap: url != null ? () => _launchURL(url) : null,
                  child: Text(
                    content,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      height: 1.4,
                      decoration: url != null ? TextDecoration.underline : null,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.white,
                      shadowColor: const Color.fromARGB(255, 255, 181, 107),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 2,
                    ),
                    child: const Text(
                      "close",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _downloadPdf() async {
    const pdfUrl =
        'https://drive.google.com/uc?export=download&id=1IW81wFe7Woe7ImJ8hgWz7ZO4jEEY6b74';

    // ignore: deprecated_member_use
    if (await canLaunch(pdfUrl)) {
      // ignore: deprecated_member_use
      await launch(pdfUrl);
    } else {
      throw 'Could not launch $pdfUrl';
    }
  }

  Future<void> _openGitHub() async {
    const gitUrl = 'https://github.com/minniedd';

    // ignore: deprecated_member_use
    if (await canLaunch(gitUrl)) {
      // ignore: deprecated_member_use
      await launch(gitUrl);
    } else {
      throw 'Could not launch $gitUrl';
    }
  }
}
