import 'package:flutter/material.dart';
import 'ExpandedListAnimationWidget.dart';
import 'Scrollbar.dart';

class bahagianB3 extends StatefulWidget {
  @override
  _bahagianB3State createState() => _bahagianB3State();
}

///////////////////////////////////Bist Jawapan/////////////////////////////////////////////////////
List<String> _list1B3 = [
  'Ada lampu yang rosak',
  "Semua lampu berfungsi",
  "Semua lampu bersih, berfungsi dan dalam keadaan baik"
];
List<String> _list2B3 = [
  '''Soket elektrik tidak berfungsi''',
  '''Sebahagian soket elektrik berfungsi dan dalam keadaan baik''',
  '''Semua soket elektrik berfungsi dan dalam keadaan baik'''
];

class _bahagianB3State extends State<bahagianB3> {
/////////////////////////////////// value dropdown ////////////////////////////////////////////////////////
  ///1
  bool isStrechedDropDown1B3 = false;
  int groupValue1B3;
  String title1B3 = 'Pilih';

  ///2
  bool isStrechedDropDown2B3 = false;
  int groupValue2B3;
  String title2B3 = 'Pilih';

  /////////////////////////////////// main function ////////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Komponen B3 - Lampu dan Soket"),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
/////////////////////////////////// 1 ////////////////////////////////////////////////////////

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: myDetailsContainer1B3(),
                          ),
                        ),
                        Container(
                          width: 250,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Padding(
                              padding: const EdgeInsets.all(50.0),
                              child: QuestionDetails1B3(),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),

/////////////////////////////////// 2 ////////////////////////////////////////////////////////

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: myDetailsContainer2B3(),
                          ),
                        ),
                        Container(
                          width: 250,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Padding(
                              padding: const EdgeInsets.all(50.0),
                              child: QuestionDetails2B3(),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: new Text("Seterusnya"),
          onPressed: () => Navigator.pushNamed(context, '/bahagianB4')),
    );
  }

////////////////////////////////////////////myDetailsContainer//////////////////////////////////////////////////////

  Widget myDetailsContainer1B3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            '''' Memastikan semua lampu bersih, berfungsi 
                 dan dalam keadaan baik.
''',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
      ],
    );
  }

  Widget myDetailsContainer2B3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            '''Memastikan soket elektrik berfungsi dan dalam keadaan baik.''',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
      ],
    );
  }

///////////////////////////////1///////////QuestionDetails//////////////////////////////////////////////////////

  Widget QuestionDetails1B3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffbbbbbb)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(27))),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
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
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 10),
                                        child: Text(
                                          title1B3,
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isStrechedDropDown1B3 =
                                                !isStrechedDropDown1B3;
                                          });
                                        },
                                        child: Icon(isStrechedDropDown1B3
                                            ? Icons.arrow_upward
                                            : Icons.arrow_downward))
                                  ],
                                )),
                            ExpandedSection(
                              expand: isStrechedDropDown1B3,
                              height: 100,
                              child: MyScrollbar(
                                builder: (context, scrollController2) =>
                                    ListView.builder(
                                        padding: EdgeInsets.all(0),
                                        controller: scrollController2,
                                        shrinkWrap: true,
                                        itemCount: _list1B3.length,
                                        itemBuilder: (context, index) {
                                          return RadioListTile(
                                              title: Text(
                                                  _list1B3.elementAt(index)),
                                              value: index,
                                              groupValue: groupValue1B3,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupValue1B3 = val;
                                                  title1B3 =
                                                      _list1B3.elementAt(index);
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
    );
  }

  Widget QuestionDetails2B3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffbbbbbb)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(27))),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
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
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 10),
                                        child: Text(
                                          title2B3,
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isStrechedDropDown2B3 =
                                                !isStrechedDropDown2B3;
                                          });
                                        },
                                        child: Icon(isStrechedDropDown2B3
                                            ? Icons.arrow_upward
                                            : Icons.arrow_downward))
                                  ],
                                )),
                            ExpandedSection(
                              expand: isStrechedDropDown2B3,
                              height: 100,
                              child: MyScrollbar(
                                builder: (context, scrollController2) =>
                                    ListView.builder(
                                        padding: EdgeInsets.all(0),
                                        controller: scrollController2,
                                        shrinkWrap: true,
                                        itemCount: _list2B3.length,
                                        itemBuilder: (context, index) {
                                          return RadioListTile(
                                              title: Text(
                                                  _list2B3.elementAt(index)),
                                              value: index,
                                              groupValue: groupValue2B3,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupValue2B3 = val;
                                                  title2B3 =
                                                      _list2B3.elementAt(index);
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
    );
  }
}
