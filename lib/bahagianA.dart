import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ExpandedListAnimationWidget.dart';
import 'Scrollbar.dart';

class bahagianA extends StatefulWidget {
  const bahagianA({key}) : super(key: key);

  @override
  _bahagianAState createState() => _bahagianAState();
}

List<String> _list = ['Jawapan A', "Jawapan B", "Jawapan C", 'Jawapan D'];

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

class _bahagianAState extends State<bahagianA> {
  bool isStrechedDropDown = false;
  int groupValue;
  String title = 'Pilih';

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
        title: Text("Komponen A1 - Dasar EKSA"),
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
                              color: Colors.white,
                              width: displayWidth(context) * 0.20,
                              child: Text(
                                sQuestions[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: displayWidth(context) * 0.03),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      child: SafeArea(
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xffbbbbbb)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(27))),
                                  child: Column(
                                    children: [
                                      Container(
                                          // height: 45,
                                          width: double.infinity,
                                          padding: EdgeInsets.only(right: 10),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Color(0xffbbbbbb),
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(25))),
                                          constraints: BoxConstraints(
                                            minHeight: 45,
                                            minWidth: double.infinity,
                                          ),
                                          alignment: Alignment.center,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 20,
                                                      vertical: 10),
                                                  child: Text(
                                                    title,
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      isStrechedDropDown =
                                                          !isStrechedDropDown;
                                                    });
                                                  },
                                                  child: Icon(isStrechedDropDown
                                                      ? Icons.arrow_upward
                                                      : Icons.arrow_downward))
                                            ],
                                          )),
                                      ExpandedSection(
                                        expand: isStrechedDropDown,
                                        height: 100,
                                        child: MyScrollbar(
                                          builder: (context,
                                                  scrollController2) =>
                                              ListView.builder(
                                                  padding: EdgeInsets.all(0),
                                                  controller: scrollController2,
                                                  shrinkWrap: true,
                                                  itemCount: _list.length,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return RadioListTile(
                                                        title: Text(_list
                                                            .elementAt(index)),
                                                        value: index,
                                                        groupValue: groupValue,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            groupValue = val;
                                                            title =
                                                                _list.elementAt(
                                                                    index);
                                                          });
                                                        });
                                                  }),
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                              ],
                            )
                          ],
                        ),
                      ),
                      //IF NAK TAMBAH CHILD
                    ),
                    flex: 1,
                  ),
                ],
              ),
            ), //<Widget>[]
          ), //Row
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: new Text("Seterusnya"),
          onPressed: () => Navigator.pushNamed(context, '/bahagianA2')),
    );
  } //Card//Container
} //ListView.builder

//TRYBUATFUNCTIONUNTUKFLOATINGDIALOGUE
