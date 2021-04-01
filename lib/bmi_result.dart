import 'package:flutter/material.dart';
import 'dart:math';

class BMIResult extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final int tinggi_badan;
  // ignore: non_constant_identifier_names
  final int berat_badan;
  // ignore: non_constant_identifier_names
  final String nama_baru;
  // ignore: non_constant_identifier_names
  final String jk_baru;
  // ignore: non_constant_identifier_names
  final String tl_baru;
  // ignore: non_constant_identifier_names
  final String umur_baru;

  BMIResult(
      // ignore: non_constant_identifier_names
      {this.tinggi_badan,
      // ignore: non_constant_identifier_names
      this.berat_badan,
      // ignore: non_constant_identifier_names
      this.nama_baru,
      // ignore: non_constant_identifier_names
      this.jk_baru,
      // ignore: non_constant_identifier_names
      this.tl_baru,
      // ignore: non_constant_identifier_names
      this.umur_baru});

  @override
  Widget build(BuildContext context) {
    double bmi = berat_badan / pow(tinggi_badan / 100, 2);
    String cBMI;
    if (bmi >= 28)
      cBMI = "Obese";
    else if (bmi >= 23)
      cBMI = "Overweight";
    else if (bmi >= 17.5)
      cBMI = "Normal";
    else
      cBMI = "Underweight";
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('HASIL'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              // ignore: unnecessary_brace_in_string_interps
              '${nama_baru}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
                color: Colors.blue,
              ),
            ),
            Text(
              // ignore: unnecessary_brace_in_string_interps
              '${jk_baru}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
                color: Colors.blue,
              ),
            ),
            Text(
              // ignore: unnecessary_brace_in_string_interps
              '${tl_baru}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
                color: Colors.blue,
              ),
            ),
            Text(
              // ignore: unnecessary_brace_in_string_interps
              '${umur_baru} Tahun',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
                color: Colors.blue,
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            Text(
              cBMI,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.greenAccent,
              ),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            Text(
              'Normal BMI Range',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white60,
              ),
            ),
            Text(
              '17,5 -  22.9 ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 80,
        child: ElevatedButton(
          child: Text(
            'BACK',
            style: TextStyle(fontSize: 30),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
