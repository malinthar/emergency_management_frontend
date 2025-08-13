import 'package:flutter/material.dart';

class EmergencyDetails extends StatelessWidget {
  final Map<String, dynamic> details;

  const EmergencyDetails({super.key, required this.details});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF336051),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.maybePop(context),
          icon: Icon(Icons.close, color: Color(0xFFFAFAFA)),
        ),
        forceMaterialTransparency: true,
        title: Text(
          "Aoteroa Aid",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFEAF7F4),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: Center(
          child: Column(
            children: [
              Text(
                "Situation",
                style: TextStyle(
                  fontFamily: 'Tahoma',
                  fontSize: 24,
                  color: Color(0xFFEAF7F4),
                ),
              ),
              Text(
                "Pūnaha",
                style: TextStyle(
                  fontFamily: 'Tahoma',
                  fontSize: 24,
                  color: Color.fromARGB(255, 187, 187, 187),
                ),
              ),

              SizedBox(height: 75),

              // Response Message
              Text(
                "Message/Karere",
                style: TextStyle(
                  fontFamily: 'Tahoma',
                  fontSize: 18,
                  color: Color(0xFFEAF7F4),
                  fontWeight: FontWeight.w900,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  textAlign: TextAlign.center,
                  details["response_message"],
                  style: TextStyle(
                    fontFamily: 'Tahoma',
                    fontSize: 16,
                    color: Color(0xFFEAF7F4),
                  ),
                ),
              ),

              SizedBox(height: 50),

              // Emergency Type
              Text(
                "Emergency Type/Momo Āwhina",
                style: TextStyle(
                  fontFamily: 'Tahoma',
                  fontSize: 18,
                  color: Color(0xFFEAF7F4),
                  fontWeight: FontWeight.w900,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  textAlign: TextAlign.center,
                  details["emergency_type"],
                  style: TextStyle(
                    fontFamily: 'Tahoma',
                    fontSize: 16,
                    color: Color(0xFFEAF7F4),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
