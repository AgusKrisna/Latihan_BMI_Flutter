import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'bmi_result.dart';
import 'about.dart';

class InputBMI extends StatefulWidget {
  @override
  _InputBMIState createState() => _InputBMIState();
}

class _InputBMIState extends State<InputBMI> {
  int tinggi = 0;
  int berat = 0;
  String nama;
  String gender;
  DateTime tglLahir;
  int noGender;

  final TextEditingController dateFieldController = new TextEditingController();

  datePicker(BuildContext context) async {
    final DateTime date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2045),
    );
    if (date != null) {
      setState(() {
        tglLahir = date;
      });
      dateFieldController.text = tglLahir.day.toString() +
          " - " +
          tglLahir.month.toString() +
          " - " +
          tglLahir.year.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('MENGHITUNG BMI'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.info_outline,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => About()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Image.network(
                'https://www.cdc.gov/healthyweight/images/assessing/bmi-adult-fb-600x315.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: TextField(
                        onChanged: (textValue) {
                          setState(() {
                            nama = textValue;
                          });
                        },
                        keyboardType: TextInputType.text,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                            filled: true,
                            // fillColor: Colors.blue[50],
                            hintText: 'Nama'),
                      ),
                    ),
                  ],
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Jenis Kelamin : ',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: DropdownButton(
                                value: noGender,
                                items: [
                                  DropdownMenuItem(
                                    child: Text("Laki-Laki",
                                        style: TextStyle(fontSize: 20)),
                                    value: 1,
                                  ),
                                  DropdownMenuItem(
                                    child: Text("Perempuan",
                                        style: TextStyle(fontSize: 20)),
                                    value: 2,
                                  ),
                                ],
                                onChanged: (int value) {
                                  setState(() {
                                    noGender = value;
                                    if (noGender == 1) {
                                      gender = "Laki-Laki";
                                    } else {
                                      gender = "Perempuan";
                                    }
                                  });
                                },
                              ),
                            ),
                          ],
                        )),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: <Widget>[
                  TextField(
                    onTap: () {
                      datePicker(context);
                    },
                    controller: dateFieldController,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "Tanggal Lahir",
                    ),
                    readOnly: true,
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(10),
                // color: Colors.blue[700],
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            tinggi = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                            suffix: Text('cm'),
                            filled: true,
                            hintText: 'Tinggi'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            berat = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                            suffix: Text('kg'),
                            filled: true,
                            hintText: 'Berat'),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              //height: double.infinity,
              margin: EdgeInsets.only(left: 50, right: 50, bottom: 20),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BMIResult(
                              tinggi_badan: tinggi,
                              berat_badan: berat,
                              nama: nama,
                              gender: gender,
                              tglLahir: tglLahir,
                            )),
                  );
                },
                padding: EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.white,
                // textColor: Colors.white,
                child: Text(
                  'HITUNG BMI',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
