import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
void main() => runApp(MaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    ));

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.grey,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.grey,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        Container(
          height: 400,
          width: double.infinity,
          color: Colors.white,
          child: CircularPercentIndicator(
            radius: 280.0,
            lineWidth: 13.0,
            animation: true,
            percent: 0.7,
            center: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Filter Usage",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                )
              ],
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: Colors.lightBlueAccent,
          ),
        ),
        const IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "29",
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    "Temperature (℃)",
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 0, 15, 0),
                child: VerticalDivider(
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
              Column(
                children: [
                  Text(
                    "73",
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    "Humidity (%)", 
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        const Row(
          children: [
            ControlButton(label: "Auto" ,icon: Icons.adobe,),
            ControlButton(label: "Freeze", icon: Icons.ac_unit),
            ControlButton(label: "Night", icon: Icons.nightlight_round),
            ControlButton(label: "Circulation", icon: Icons.wifi_protected_setup),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.power_settings_new,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

class ControlButton extends StatelessWidget {
  final String label;
  final IconData icon;

  const ControlButton({super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey,
                width: 2.0,
              ),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Icon(icon),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(label),
        ],
      ),
    );
  }
}

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Example'),
      ),
      body: Center(
        child: Image.asset('https://static.vecteezy.com/system/resources/previews/000/606/474/original/vector-letter-a-logo-design-concept-template.jpg'),
      ),
    );
  }
}