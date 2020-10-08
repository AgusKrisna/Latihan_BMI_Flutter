import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('PROFIL'),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 50, bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://scontent.fdps1-1.fna.fbcdn.net/v/t1.0-9/49643248_2715808335312016_5442969357950910464_n.jpg?_nc_cat=103&_nc_sid=09cbfe&_nc_eui2=AeFYy5KtrsddNPqKs14XywVTuGhQqdaEw8e4aFCp1oTDx_XfotJik7RcoqeVKUxH7YyX-aNH31aWEGUXOvZx__-_&_nc_ohc=BW8tVfrIC8QAX-GNQjW&_nc_ht=scontent.fdps1-1.fna&oh=f8d15a11bdd3ad3a4c8568357f4fb067&oe=5FA50287'),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'I Gede Agus Krisna Perdana',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '1815091012',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: Colors.blue,
                        size: 68,
                      ),
                      Container(
                        color: Colors.cyan,
                        width: 100,
                        height: 20,
                        child: Center(
                            child: Text(
                          'Singaraja',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        )),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.home,
                        color: Colors.red,
                        size: 68,
                      ),
                      Container(
                        color: Colors.cyan,
                        width: 100,
                        height: 20,
                        child: Center(
                            child: Text(
                          'Banjar Jawa',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        )),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.library_music,
                        color: Colors.green,
                        size: 68,
                      ),
                      Container(
                        color: Colors.cyan,
                        width: 100,
                        height: 20,
                        child: Center(
                            child: Text(
                          'Lo-Fi',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        )),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.work,
                        color: Colors.amber,
                        size: 68,
                      ),
                      Container(
                        color: Colors.cyan,
                        width: 100,
                        height: 20,
                        child: Center(
                            child: Text(
                          'Mahasiswa',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
