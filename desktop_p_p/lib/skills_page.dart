import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class SkillsPageScreen extends StatefulWidget {
  const SkillsPageScreen({super.key});

  @override
  State<SkillsPageScreen> createState() => _SkillsPageScreenState();
}

class _SkillsPageScreenState extends State<SkillsPageScreen> {
  Map<String, double> softSkills = {
    "Flexibility": 5,
    "Creativity": 5,
    "Communication": 5,
    "Team player": 5,
    "Active listening": 5,
  };

  Map<String, double> digitalSkills = {
    "C# & .NET Framework": 5,
    "Dart/Flutter Framework": 5,
    "SQL": 5,
    "Python": 4,
    "HTML/CSS/JS": 4,
    "Angular": 3,
    "Bootstrap": 4,
    "Git": 5,
    "Figma": 3,
    "Visual Studio/Visual Studio Code": 5,
    "Office": 5,
    "SQL Server": 5,
  };

  final List<Color> colorPalette = const [
    Color(0xFFB2EBF2),
    Color(0xFF80DEEA),
    Color(0xFFC8E6C9),
    Color(0xFFF48FB1),
    Color(0xFFA5D6A7),
    Color(0xFFF8BBD0),
    Color.fromARGB(255, 252, 220, 123),
    Color(0xFFCE93D8),
    Color(0xFF80CBC4),
    Color.fromARGB(255, 210, 88, 247),
    Color(0xFFE57373),
    Color(0xFFAED581),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [Color(0xffd53369), Color(0xffcbad6d)],
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
            child: Text("♡ My Skills", style: TextStyle(color: Colors.white)),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 70),
              const Text(
                "my soft skills",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                height: 300,
                child: PieChart(
                  dataMap: softSkills,
                  animationDuration: const Duration(milliseconds: 800),
                  chartLegendSpacing: 100,
                  chartRadius: MediaQuery.of(context).size.width / 4,
                  initialAngleInDegree: 0,
                  chartType: ChartType.ring,
                  ringStrokeWidth: 90,
                  legendOptions: const LegendOptions(
                    showLegendsInRow: true,
                    legendPosition: LegendPosition.bottom,
                    showLegends: true,
                    legendShape: BoxShape.circle,
                    legendTextStyle: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  chartValuesOptions: const ChartValuesOptions(
                    showChartValueBackground: false,
                    showChartValues: true,
                    showChartValuesInPercentage: false,
                    showChartValuesOutside: false,
                    decimalPlaces: 0,
                    chartValueStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  colorList: colorPalette,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                "my digital skills",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                height: 300,
                child: PieChart(
                  dataMap: digitalSkills,
                  animationDuration: const Duration(milliseconds: 800),
                  chartLegendSpacing: 100,
                  chartRadius: MediaQuery.of(context).size.width / 4,
                  initialAngleInDegree: 0,
                  chartType: ChartType.ring,
                  ringStrokeWidth: 90,
                  legendOptions: const LegendOptions(
                    showLegendsInRow: true,
                    legendPosition: LegendPosition.bottom,
                    showLegends: true,
                    legendShape: BoxShape.circle,
                    legendTextStyle: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  chartValuesOptions: const ChartValuesOptions(
                    showChartValueBackground: false,
                    showChartValues: true,
                    showChartValuesInPercentage: false,
                    showChartValuesOutside: false,
                    decimalPlaces: 0,
                    chartValueStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  colorList: colorPalette,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
