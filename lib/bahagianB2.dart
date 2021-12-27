import 'package:flutter/material.dart';
import 'ExpandedListAnimationWidget.dart';
import 'Scrollbar.dart';

class bahagianB2 extends StatefulWidget {
  @override
  _bahagianB2State createState() => _bahagianB2State();
}

///////////////////////////////////List Jawapan/////////////////////////////////////////////////////
List<String> _list1B2 = [
  'Dinding kotor dan rosak',
  "Dinding dalam keadaan baik tetapi tidak bersih",
  "Dinding dalam keadaan baik dan bersih"
];
List<String> _list2B2 = [
  '''Hiasan keterlaluan dan tidak bersesuaian''',
  '''Hiasan sederhana tetapi tidak selaras dengan imej korporat''',
  '''Hiasan bersesuaian dan selaras 
     dengan imej korporat'''
];

class _bahagianB2State extends State<bahagianB2> {
/////////////////////////////////// value dropdown ////////////////////////////////////////////////////////
  ///1
  bool isStrechedDropDown1B2 = false;
  int groupValue1B2;
  String title1B2 = 'Pilih';

  ///2
  bool isStrechedDropDown2B2 = false;
  int groupValue2B2;
  String title2B2 = 'Pilih';

  /////////////////////////////////// main function ////////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Komponen B2 - Dinding dan Siling"),
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
                            child: myDetailsContainer1B2(),
                          ),
                        ),
                        Container(
                          width: 550,
                          height: 400,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Padding(
                              padding: const EdgeInsets.all(50.0),
                              child: QuestionDetails1B2(),
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
                            child: myDetailsContainer2B2(),
                          ),
                        ),
                        Container(
                          width: 550,
                          height: 400,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Padding(
                              padding: const EdgeInsets.all(50.0),
                              child: QuestionDetails2B2(),
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
          onPressed: () => Navigator.pushNamed(context, '/bahagianB3')),
    );
  }

////////////////////////////////////////////myDetailsContainer//////////////////////////////////////////////////////

  Widget myDetailsContainer1B2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            '''' Memastikan dinding dan siling bersih daripada 
                 kekotoran dan dalam keadaan baik.''',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
      ],
    );
  }

  Widget myDetailsContainer2B2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            '''Menyediakan hiasan yang bersesuaian dan 
               selaras dengan imej korporat.''',
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

  Widget QuestionDetails1B2() {
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
                                          title1B2,
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isStrechedDropDown1B2 =
                                                !isStrechedDropDown1B2;
                                          });
                                        },
                                        child: Icon(isStrechedDropDown1B2
                                            ? Icons.arrow_upward
                                            : Icons.arrow_downward))
                                  ],
                                )),
                            ExpandedSection(
                              expand: isStrechedDropDown1B2,
                              height: 100,
                              child: MyScrollbar(
                                builder: (context, scrollController2) =>
                                    ListView.builder(
                                        padding: EdgeInsets.all(0),
                                        controller: scrollController2,
                                        shrinkWrap: true,
                                        itemCount: _list1B2.length,
                                        itemBuilder: (context, index) {
                                          return RadioListTile(
                                              title: Text(
                                                  _list1B2.elementAt(index)),
                                              value: index,
                                              groupValue: groupValue1B2,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupValue1B2 = val;
                                                  title1B2 =
                                                      _list1B2.elementAt(index);
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

  Widget QuestionDetails2B2() {
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
                                          title2B2,
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isStrechedDropDown2B2 =
                                                !isStrechedDropDown2B2;
                                          });
                                        },
                                        child: Icon(isStrechedDropDown2B2
                                            ? Icons.arrow_upward
                                            : Icons.arrow_downward))
                                  ],
                                )),
                            ExpandedSection(
                              expand: isStrechedDropDown2B2,
                              height: 100,
                              child: MyScrollbar(
                                builder: (context, scrollController2) =>
                                    ListView.builder(
                                        padding: EdgeInsets.all(0),
                                        controller: scrollController2,
                                        shrinkWrap: true,
                                        itemCount: _list2B2.length,
                                        itemBuilder: (context, index) {
                                          return RadioListTile(
                                              title: Text(
                                                  _list2B2.elementAt(index)),
                                              value: index,
                                              groupValue: groupValue2B2,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupValue2B2 = val;
                                                  title2B2 =
                                                      _list2B2.elementAt(index);
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
