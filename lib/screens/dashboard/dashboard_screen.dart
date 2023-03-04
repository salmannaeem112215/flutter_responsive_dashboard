import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import '../../constants.dart';
import './components/header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<PieChartSectionData> pieChartSectionData = [
                              PieChartSectionData(
                                showTitle: false,
                                value: 25,
                                color: primaryColor,
                                radius: 22,
                              ),                                                         
                              PieChartSectionData(
                                showTitle: false,
                                value: 20,
                                color: const Color(0xFF26E5FF),
                                radius: 20,
                              ),
                              PieChartSectionData(
                                showTitle: false,
                                value: 15,
                                color: const Color(0xFFFFCF26),
                                radius: 18,
                              ),
                              PieChartSectionData(
                                showTitle: false,
                                value: 10,
                                color: const Color(0xFFEE2727),
                                radius: 15,
                              ),
                              PieChartSectionData(
                                showTitle: false,
                                value: 25,
                                color: primaryColor.withOpacity(0.1),
                                radius: 10,
                              ),
                              

                            ];
    return SafeArea(
        child: SingleChildScrollView(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          const Header(),
          const SizedBox(height: defaultPadding),
          Row(
            children: [
              Expanded(
                  flex: 5,
                  child: Container(
                    height: 500,
                    color: Colors.white,
                  )),
              const SizedBox(width: defaultPadding),
              Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(defaultPadding),
                    height: 500,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'Storage Details',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 200,
                          child: PieChart(PieChartData(
                            sectionsSpace: 0,
                            centerSpaceRadius: 70,
                            startDegreeOffset: -90,
                            sections: pieChartSectionData,
                          )),
                        )
                      ],
                    ),
                  ))
            ],
          )
        ],
      ),
    ));
  }
}
