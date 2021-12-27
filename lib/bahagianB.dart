import 'package:flutter/material.dart';
import 'ExpandedListAnimationWidget.dart';
import 'Scrollbar.dart';

class bahagianB extends StatefulWidget {
  @override
  _bahagianBState createState() => _bahagianBState();
}

///////////////////////////////////List Jawapan/////////////////////////////////////////////////////
List<String> _list1B = [
  'Tidak bersih',
  '''Bersih & memenuhi satu kriteria''',
  '''Bersih & memenuhi dua kriteria''',
  "Bersih dan memenuhi tiga kriteria",
  'Bersih dan memenuhi semua kriteria'
];

final List<Map<String, dynamic>> _questions = [
  {
    'questionsText': '''Memastikan lantai memenuhi kriteria yang berikut:
i. Selamat dan tidak licin
ii. Tiada kekotoran/sampah di lantai
iii.Tidak berlubang/pecah atau rosak
iv. Tong sampah disediakan''',
    'answers': [
      {'answer': 'Tidak bersih', 'score': 1},
      {'answer': 'Bersih & memenuhi satu kriteria', 'score': 2},
      {'answer': 'Bersih & memenuhi dua kriteria', 'score': 3},
      {'answer': 'Bersih dan memenuhi tiga kriteria', 'score': 4},
      {'answer': 'Bersih dan memenuhi semua kriteria', 'score': 5},
    ]
  },
  {
    'questionsText': '''Menyediakan program pemantauan dan
memastikan jadual pembersihan dipatuhi.''',
    'answers': [
      {'answer': 'Tiada program pemantauan', 'score': 5},
      {
        'answer': 'Menyediakan program pemantauan tetapi tidak dipatuhi',
        'score': 5
      },
      {'answer': 'Menyediakan program pemantauan dan dipatuhi', 'score': 5},
    ]
  },
];

class _bahagianBState extends State<bahagianB> {
/////////////////////////////////// value dropdown ////////////////////////////////////////////////////////
  ///1
  bool isStrechedDropDown1B = false;
  int groupValue1B;
  String title1B = 'Pilih';
  int score = 0;

  ///2
  bool isStrechedDropDown2B = false;
  int groupValue2B;
  String title2B = 'Pilih';

  /////////////////////////////////// main function ////////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Komponen B1-Lantai"),
      ),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                  color: Colors.white,
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Color(0x802196F3),
                  child: ListView.builder(
                      padding: EdgeInsets.all(0),
                      shrinkWrap: true,
                      itemCount: _list1B.length,
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Container(
                                          child: Text(
                                        _questions[index][
                                            'questionsText'], //Access to questions
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 550,
                              height: 400,
                              child: ClipRRect(
                                borderRadius: new BorderRadius.circular(24.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(50.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Container(
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.0, vertical: 10.0),
                                          child: SafeArea(
                                            child: Column(
                                              children: [
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                        child: Container(
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Color(
                                                                  0xffbbbbbb)),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          27))),
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                              // height: 45,
                                                              width: double
                                                                  .infinity,
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          10),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xffbbbbbb),
                                                                      ),
                                                                      borderRadius: BorderRadius.all(Radius
                                                                          .circular(
                                                                              25))),
                                                              constraints:
                                                                  BoxConstraints(
                                                                minHeight: 45,
                                                                minWidth: double
                                                                    .infinity,
                                                              ),
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                              .symmetric(
                                                                          horizontal:
                                                                              20,
                                                                          vertical:
                                                                              10),
                                                                      child:
                                                                          Text(
                                                                        title1B,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        setState(
                                                                            () {
                                                                          isStrechedDropDown1B =
                                                                              !isStrechedDropDown1B;
                                                                        });
                                                                      },
                                                                      child: Icon(isStrechedDropDown1B
                                                                          ? Icons
                                                                              .arrow_upward
                                                                          : Icons
                                                                              .arrow_downward))
                                                                ],
                                                              )),
                                                          ExpandedSection(
                                                            expand:
                                                                isStrechedDropDown1B,
                                                            height: 100,
                                                            child: MyScrollbar(
                                                              builder: (context, scrollController2) => ListView
                                                                  .builder(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              0),
                                                                      controller:
                                                                          scrollController2,
                                                                      shrinkWrap:
                                                                          true,
                                                                      itemCount:
                                                                          _list1B
                                                                              .length,
                                                                      itemBuilder:
                                                                          (context,
                                                                              index1) {
                                                                        return RadioListTile(
                                                                            title: Text(_questions[index]['answers'][index1][
                                                                                'answer']), //Access to answers
                                                                            value:
                                                                                index,
                                                                            groupValue:
                                                                                groupValue1B,
                                                                            onChanged:
                                                                                (val) {
                                                                              setState(() {
                                                                                groupValue1B = val;
                                                                                title1B = _questions[index]['answers'][index1]['answer'];
                                                                                score = _questions[index]['answers'][index1]['score'];
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
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: new Text("Seterusnya"),
          onPressed: () => Navigator.pushNamed(context, '/bahagianB2')),
    );
  }
}
