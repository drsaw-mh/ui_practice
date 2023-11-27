import 'package:flutter/material.dart';

class Patient extends StatefulWidget {
  static const String route = "/patient";
  const Patient({super.key});

  @override
  State<Patient> createState() => _PatientState();
}

class _PatientState extends State<Patient> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Container(
          padding: const EdgeInsets.all(8),
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: const Icon(
                      Icons.person,
                      color: Colors.green,
                      size: 50,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'U HanSawAung,' + " 40 years",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("No.049, Phwenu Sisat St, Ywarma"),
                      Text("095203340")
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Text(
                    "Bipolar I(Manic)",
                    style: TextStyle(color: Colors.lightBlue),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [Text("Current Treatment")],
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Olanzapine 10 mg 1 hs"),
                  Text("Encoreate CR 500 1 bd"),
                  Text("Lotex2mg 1 hs")
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Text(
                    "Next vist: 1-1-2024",
                    style: TextStyle(color: Colors.red),
                  ),
                  Spacer(),
                  Icon(Icons.next_plan)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
