import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Student> students = [
    Student(name: 'FUAD SYURURI', nim: 202002091),
    Student(name: 'EVAN FIKRI ADITYA', nim: 202102109 ),
    Student(name: 'UNIKUL KHOLILAH', nim: 202102112),
    Student(name: 'ADIT FEBRI NUR HIDAYAT', nim: 202102123),
    Student(name: 'SHAFIRA INDES PRAFITRI (saya)', nim:202102125),
    Student(name: 'ZAHWA NACA SYAFIKA', nim: 202102132),
    Student(name: 'RAHAYU DWI SETIOWATI', nim: 202102133),
    Student(name: 'MUARIF SUBEKHI', nim: 202102135),
    Student(name: 'TAMA ADI LUSIONO', nim: 202102142),
    Student(name: 'ABDUL FAIZ', nim: 202102147),
    Student(name: 'ANGGORO MUSTIKA PUTRA  ', nim: 202102152),
  ];

  final List<Color> colors = [
    Color.fromARGB(255, 54, 162, 244),
    const Color.fromARGB(255, 255, 0, 0),
    Colors.yellow,
    Color.fromARGB(255, 76, 175, 160),
    const Color.fromARGB(255, 243, 33, 198),
    Colors.indigo,
    const Color.fromARGB(255, 123, 176, 39),
    Color.fromARGB(255, 233, 132, 30),
    Colors.teal,
    Colors.cyan,
    const Color.fromARGB(255, 130, 57, 220),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Mahasiswa'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 20),
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.all(20),
              width: 300, // Set width to align boxes to center
              decoration: BoxDecoration(
                color: colors[index % colors.length],
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center, // Align text to center
                children: [
                  Text(
                    student.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10), // Spacing between name and nim
                  Text(
                    'NIM: ${student.nim}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Student {
  final String name;
  final int nim;

  Student({required this.name, required this.nim});
}