import 'package:emergency_management_system/components/emergency_text_field.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF336051),
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Text(
          "Aoteroa Aid",
          style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFEAF7F4)),
        ),
        centerTitle: true,
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Text("Speak or Text your Emergency", style: TextStyle(fontFamily: 'Tahoma', fontSize: 24, color: Color(0xFFEAF7F4))),
          ),
          Text("Korero, Tuhia ranei to ohorere", style: TextStyle(fontFamily: 'Tahoma', fontSize: 24, color: Color.fromARGB(255, 187, 187, 187))),
          SizedBox(height: 25,),
          EmergencyTextField()
        ],
      )),
    );
  }
}
