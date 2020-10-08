import 'package:flutter/material.dart';
import 'dart:math';
import 'bmi.dart';

class BMIResult extends StatelessWidget {
  BMIResult({
    @required this.tinggi_badan,
    @required this.berat_badan,
    @required this.nama,
    @required this.gender,
    @required this.tglLahir,
  });
  final int tinggi_badan;
  final int berat_badan;
  final String nama;
  final String gender;
  final DateTime tglLahir;

  @override
  Widget build(BuildContext context) {
    int umur = DateTime.now().year - tglLahir.year;
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
        title: Text('RESULT'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 90,
            ),
            Container(
              width: double.infinity,
              color: Colors.blue[400],
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Nama : $nama",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Jenis Kelamin : $gender",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Umur : $umur",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              cBMI,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.green,
              ),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            Text(
              'Normal BMI Range',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            Text(
              '17,5 -  22.9 ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 80,
        child: RaisedButton(
          color: Colors.blue,
          child: Text(
            'Kembali',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
