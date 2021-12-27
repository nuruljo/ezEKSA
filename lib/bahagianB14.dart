import 'package:flutter/material.dart';
import 'ExpandedListAnimationWidget.dart';
import 'Scrollbar.dart';

class bahagianB14 extends StatefulWidget {
  @override
  _bahagianB14State createState() => _bahagianB14State();
}

///////////////////////////////////List Jawapan/////////////////////////////////////////////////////
List<String> _list1B14 = [
  'Meja kerja tidak kemas, tidak bersih dan peralatan tidak disusun dengan baik',
  "Sebahagian meja kerja kemas, bersih dan peralatan  disusun dengan baik",
  "Semua meja kerja  kemas, bersih dan peralatan disusun dengan baik"
];

List<String> _list2B14 = [
  'Hiasan yang keterlaluan dan tidak berimej korporat',
  "Hiasan minimum tetapi tidak selaras dengan imej korporat",
  "Hiasan minimum dan selaras dengan imej korporat"
];

class _bahagianB14State extends State<bahagianB14> {
/////////////////////////////////// value dropdown ////////////////////////////////////////////////////////
  ///1
  bool isStrechedDropDown1B14 = false;
  int groupValue1B14;
  String title1B14 = 'Pilih';

  ///2
  bool isStrechedDropDown2B14 = false;
  int groupValue2B14;
  String title2B14 = 'Pilih';

  /////////////////////////////////// main function ////////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Komponen B14 - Bilik Pemandu"),
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
                            child: myDetailsContainer1B14(),
                          ),
                        ),
                        Container(
                          width: 250,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Padding(
                              padding: const EdgeInsets.all(50.0),
                              child: QuestionDetails1B14(),
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
                            child: myDetailsContainer2B14(),
                          ),
                        ),
                        Container(
                          width: 250,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Padding(
                              padding: const EdgeInsets.all(50.0),
                              child: QuestionDetails2B14(),
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
          onPressed: () => Navigator.pushNamed(context, '/bahagianB15')),
    );
  }

////////////////////////////////////////////myDetailsContainer//////////////////////////////////////////////////////

  Widget myDetailsContainer1B14() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            '''Memastikan meja kerja kemas, bersih 
            dan peralatan disusun dengan baik.''',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
      ],
    );
  }

  Widget myDetailsContainer2B14() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            '''Menyediakan perhiasan yang minimum 
dan selaras dengan imej korporat.''',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
      ],
    );
  }

//////////////////////////////////////////QuestionDetails//////////////////////////////////////////////////////

  Widget QuestionDetails1B14() {
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
                                          title1B14,
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isStrechedDropDown1B14 =
                                                !isStrechedDropDown1B14;
                                          });
                                        },
                                        child: Icon(isStrechedDropDown1B14
                                            ? Icons.arrow_upward
                                            : Icons.arrow_downward))
                                  ],
                                )),
                            ExpandedSection(
                              expand: isStrechedDropDown1B14,
                              height: 100,
                              child: MyScrollbar(
                                builder: (context, scrollController2) =>
                                    ListView.builder(
                                        padding: EdgeInsets.all(0),
                                        controller: scrollController2,
                                        shrinkWrap: true,
                                        itemCount: _list1B14.length,
                                        itemBuilder: (context, index) {
                                          return RadioListTile(
                                              title: Text(
                                                  _list1B14.elementAt(index)),
                                              value: index,
                                              groupValue: groupValue1B14,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupValue1B14 = val;
                                                  title1B14 = _list1B14
                                                      .elementAt(index);
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

  Widget QuestionDetails2B14() {
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
                                          title2B14,
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isStrechedDropDown2B14 =
                                                !isStrechedDropDown2B14;
                                          });
                                        },
                                        child: Icon(isStrechedDropDown2B14
                                            ? Icons.arrow_upward
                                            : Icons.arrow_downward))
                                  ],
                                )),
                            ExpandedSection(
                              expand: isStrechedDropDown2B14,
                              height: 100,
                              child: MyScrollbar(
                                builder: (context, scrollController2) =>
                                    ListView.builder(
                                        padding: EdgeInsets.all(0),
                                        controller: scrollController2,
                                        shrinkWrap: true,
                                        itemCount: _list2B14.length,
                                        itemBuilder: (context, index) {
                                          return RadioListTile(
                                              title: Text(
                                                  _list2B14.elementAt(index)),
                                              value: index,
                                              groupValue: groupValue2B14,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupValue2B14 = val;
                                                  title2B14 = _list2B14
                                                      .elementAt(index);
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
