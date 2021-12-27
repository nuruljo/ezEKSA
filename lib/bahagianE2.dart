import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bahagianE2 extends StatefulWidget {
  const bahagianE2({key}) : super(key: key);

  @override
  _bahagianE2State createState() => _bahagianE2State();
}

Size displaySize(BuildContext context) {
  debugPrint('Size = ' + MediaQuery.of(context).size.toString());
  return MediaQuery.of(context).size;
}

double displayHeight(BuildContext context) {
  debugPrint('Height = ' + displaySize(context).height.toString());
  return displaySize(context).height;
}

double displayWidth(BuildContext context) {
  debugPrint('Width = ' + displaySize(context).width.toString());
  return displaySize(context).width;
}

class _bahagianE2State extends State<bahagianE2> {
  List questions = ["1.", "2.", "3.", "4.", "5.", "6.", "6."];

  List sQuestions = [
    '''Menyediakan Garis Panduan selaras dengan Dasar EKSA agensi.''',
    '''Menyebar Dasar dan Garis Panduan EKSA serta memastikan semua warga kerja memahaminya.''',
    '''Memastikan EKSA diamalkan dan dipatuhi oleh semua warga agensi.''',
    '''Memastikan dokumentasi berkaitan pelaksanaan EKSA disusun dengan teratur dan sentiasa dikemas kini termasuk perkara yang berikut:
        i. Minit mesyuarat
        ii. Surat lantikan Jawatankuasa
        iii. Laporan aktiviti Jawatankuasa
''',
    '''Mewujudkan  keseragaman pelaksanaan EKSA seperti ketetapan agensi/garis panduan yang dibangunkan oleh agensi.''',
    '''a) Menyediakan dan memaparkan SUDUT EKSA di tempat yang strategik (secara maya atau fizikal) dan mengandungi perkara seperti yang berikut: 
        i. Dasar EKSA agensi
        ii. Carta organisasi 
        iii. Gambar aktiviti SEBELUM dan  SELEPAS
        iv. Pelan lantai
        v. Carta Perbatuan semasa 
        vi. Informasi/hebahan
        vii. Tarikh kemas kini sudut EKSA
''',
    '''b) Memastikan maklumat dan bahan yang dipaparkan sentiasa dikemaskini dan dalam keadaan baik.''',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            '''Komponen E2 - Agensi Mempunyai Bangunan & Berkongsi Kawasan'''),
      ),
      body: ListView.builder(
        itemCount: 7,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) => Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              color: Colors.red,
                              width: displayWidth(context) * 0.25,
                              child: Text(
                                '''Memastikan dokumentasi berkaitan pelaksanaan EKSA disusun dengan teratur dan sentiasa dikemas kini termasuk perkara yang berikut:
        i. Minit mesyuarat
        ii. Surat lantikan Jawatankuasa
        iii. Laporan aktiviti Jawatankuasa
''',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: displayWidth(context) * 0.03),
                              ),
                            ),
                            Text(questions[index],
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 7.0,
                                    fontWeight: FontWeight.bold)),
                            Text(sQuestions[index],
                                style: TextStyle(color: Colors.black)),
                          ],
                        )
                      ],
                    ),
                    flex: 3,
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      child: FlatButton(
                        onPressed: () {},
                        color: Colors.red[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child:
                            //BUAT MACAM Text(sQuestions[index],
                            Text("Click",
                                style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    flex: 1,
                  ),
                ], //<Widget>[]
              ), //Row
            ), //Container
          ), //Card
        ), //Container
      ),
      floatingActionButton: FloatingActionButton(
          child: new Text("Seterusnya"),
          onPressed: () => Navigator.pushNamed(context, '/results')),
    );
  }
}
