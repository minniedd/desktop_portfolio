import 'package:desktop_p_p/project_card.dart';
import 'package:flutter/material.dart';

class ProjectsPageScreen extends StatelessWidget {
  const ProjectsPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> projects = [
      {
        'imageUrl':
            'https://images.unsplash.com/photo-1745012592855-230839078d30?q=80&w=2075&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        'title': 'VitaCareApp',
        'description':
            'This full-stack web application, architected with a robust .NET backend and a dynamic Angular frontend, aims to revolutionize the daily workflows of medical staff and doctors by digitizing and streamlining critical processes. As a key contributor to this group project, I was responsible for implementing the secure authentication mechanism, leveraging JWT (JSON Web Tokens). This ensures that only authorized personnel can access sensitive patient data and functionalities within the application. The .NET backend provides a secure and scalable API for managing patient records, appointments, and other essential medical information, while the Angular frontend offers an intuitive and responsive user experience for seamless interaction with these features. This digital transformation promises to enhance efficiency, reduce administrative burden, and ultimately improve the quality of patient care.',
        'githubUrl': 'https://github.com/minniedd/VitaCareApp',
      },
      {
        'imageUrl':
            'https://images.unsplash.com/photo-1624454002429-40ed87a5ec04?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        'title': 'Diabetes Risk Prediction Tool',
        'description':
            'This project develops a web-based tool to predict the risk of diabetes. The front-end is built using HTML, CSS, and JavaScript, providing an interactive user interface for inputting relevant health parameters. Behind the scenes, a robust Python backend, constructed with the FastAPI framework and the os library for system interactions, receives this data. The core of the prediction engine utilizes the data manipulation capabilities of Pandas and NumPy, along with a pre-trained Random Forest Classifier (rfc) from the Scikit-learn (sklearn) library. FastAPI, in conjunction with Pydantic for data validation, ensures efficient and reliable communication between the front-end and the predictive model. By leveraging these technologies, the tool offers users a convenient way to assess their potential risk of developing diabetes based on established machine learning techniques.',
        'githubUrl': 'https://github.com/minniedd/Diabetes-Prediction',
      },
      {
        'imageUrl':
            'https://images.unsplash.com/photo-1558346490-a72e53ae2d4f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        'title': 'IoT Smart Waste Management System',
        'description':
            'This project leverages the power of the Internet of Things to create a smart waste management system. At its core, a NodeMCU ESP8266 microcontroller, programmed using C++ within the Arduino IDE, forms the intelligent hub. It interfaces with an HC-SR04 ultrasonic sensor to continuously monitor the fill level of a waste bin. This distance data is then transmitted wirelessly to a Firebase database, providing real-time information on waste levels. To provide a local visual indication, an I2C LCD is integrated to display the current fill status directly on the bin. Furthermore, a web interface built with HTML, CSS, and JavaScript allows users to remotely monitor the fill levels of multiple bins through the Firebase database. This comprehensive system enables efficient waste collection scheduling, potentially reducing costs and improving urban cleanliness.',
        'githubUrl': 'https://github.com/minniedd/iot_trash_bin',
      },
      // more projects can be added here
    ];

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [Color(0xfff857a6), Color(0xffff5858)],
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
            child: Text("♡ mina's projects",
                style: TextStyle(color: Colors.white)),
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
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 24),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "♡ my projects ♡",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "here are some of my projects i've worked on",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width < 600 ? 16 : 200,
                    ),
                  itemCount: projects.length,
                  itemBuilder: (context, index) {
                    return ProjectCard(
                      imageUrl: projects[index]['imageUrl']!,
                      title: projects[index]['title']!,
                      description: projects[index]['description']!,
                      githubUrl: projects[index]['githubUrl']!,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
