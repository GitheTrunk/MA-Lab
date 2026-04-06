import 'package:flutter/material.dart';
import 'package:week_3_lab/widgets/dashboard/forcast_item_card.dart';
import 'package:week_3_lab/widgets/dashboard/weather_detail_card.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4FACFE), Color(0xFF00F2FE)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Phnom Penh",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.location_on, color: Colors.red),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "36°",
                  style: TextStyle(
                    fontSize: 64,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.wb_sunny, color: Colors.yellow, size: 32),
                    SizedBox(width: 6),
                    Text(
                      "Sunny",
                      style: TextStyle(fontSize: 20, color: Colors.white70),
                    ),
                  ],
                ),

                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    WeatherDetailCard(
                      icon: Icons.thermostat,
                      color: Colors.redAccent,
                      label: "Feels Like",
                      value: "38°",
                    ),
                    WeatherDetailCard(
                      icon: Icons.opacity,
                      color: Colors.blueAccent,
                      label: "Dew Point",
                      value: "22°",
                    ),
                    WeatherDetailCard(
                      icon: Icons.cloud,
                      color: Colors.grey,
                      label: "Cloud Cover",
                      value: "20%",
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black.withAlpha(70),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ForcastItemCard(
                        day: 'Mon',
                        temp: '34°',
                        icon: Icons.wb_sunny,
                      ),
                      ForcastItemCard(
                        day: 'Tue',
                        temp: '30°',
                        icon: Icons.wb_cloudy,
                      ),
                      ForcastItemCard(
                        day: 'Wed',
                        temp: '28°',
                        icon: Icons.grain,
                      ),
                      ForcastItemCard(
                        day: 'Thu',
                        temp: '32°',
                        icon: Icons.wb_sunny,
                      ),
                      ForcastItemCard(
                        day: 'Fri',
                        temp: '31°',
                        icon: Icons.wb_cloudy,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
