import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_v1/theme_provider/theme_provider.dart';

class Weather extends StatefulWidget {
  const Weather({super.key});

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Consumer<ThemeProvider>(
              builder: (BuildContext context, ThemeProvider, Widget? child) {
                return Switch(
                  value: ThemeProvider.isSelect,
                  onChanged: (value) {
                    setState(() {
                      ThemeProvider.toggleTheme();
                    });
                  },
                  activeColor: Colors.white,
                  inactiveThumbColor: Colors.white,
                  thumbColor: MaterialStateProperty.all(Colors.orange),
                  thumbIcon: MaterialStateProperty.all(ThemeProvider.isSelect
                      ? Icon(Icons.nights_stay)
                      : Icon(Icons.sunny)),
                );
              },
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Text(
                'Niamey',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Consumer<ThemeProvider>(
                builder: (BuildContext context, ThemeProvider, Widget? child) {
                  return Icon(
                    ThemeProvider.isSelect ? Icons.nights_stay : Icons.sunny,
                    color:
                        ThemeProvider.isSelect ? Colors.white : Colors.orange,
                    size: 250,
                  );
                },
              ),
              Text(
                '20 * c ',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Bonjour Bonjour ',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade500,
                ),
              ),
              Text(
                'YANTALA',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade600,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 50,
                child: Divider(
                  thickness: 3,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.wb_twighlight),
                      Text('Lévée du Soleil'),
                      Text('7:0'),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                  ),
                  Column(
                    children: [
                      Icon(Icons.air),
                      Text('vent'),
                      Text('4m/s'),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                  ),
                  Column(
                    children: [
                      Icon(Icons.thermostat_auto),
                      Text('Température'),
                      Text('25'),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
