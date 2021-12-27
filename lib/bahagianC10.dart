import 'package:flutter/material.dart';
import 'ExpandedListAnimationWidget.dart';
import 'Scrollbar.dart';

class bahagianC10 extends StatefulWidget {
  @override
  _bahagianC10State createState() => _bahagianC10State();
}

///////////////////////////////////List Jawapan/////////////////////////////////////////////////////
List<String> _list = ['Jawapan A', "Jawapan B", "Jawapan C", 'Jawapan D'];
List<String> _list2 = ['Jawapan 1', "Jawapan 2", "Jawapan 3", 'Jawapan 4'];
List<String> _list3 = ['Jawapan A', "Jawapan B", "Jawapan C", 'Jawapan D'];
List<String> _list4 = ['Jawapan 1', "Jawapan 2", "Jawapan 3", 'Jawapan 4'];
List<String> _list5 = ['Jawapan A', "Jawapan B", "Jawapan C", 'Jawapan D'];
List<String> _list6 = ['Jawapan 1', "Jawapan 2", "Jawapan 3", 'Jawapan 4'];
List<String> _list7 = ['Jawapan 1', "Jawapan 2", "Jawapan 3", 'Jawapan 4'];

class _bahagianC10State extends State<bahagianC10> {
/////////////////////////////////// value dropdown ////////////////////////////////////////////////////////
  ///1
  bool isStrechedDropDown = false;
  int groupValue;
  String title = 'Pilih';

  ///2
  bool isStrechedDropDown2 = false;
  int groupValue2;
  String title2 = 'Pilih';

  ///3
  bool isStrechedDropDown3 = false;
  int groupValue3;
  String title3 = 'Pilih';

  ///4
  bool isStrechedDropDown4 = false;
  int groupValue4;
  String title4 = 'Pilih';

  ///5
  bool isStrechedDropDown5 = false;
  int groupValue5;
  String title5 = 'Pilih';

  ///6
  bool isStrechedDropDown6 = false;
  int groupValue6;
  String title6 = 'Pilih';

  ///7
  bool isStrechedDropDown7 = false;
  int groupValue7;
  String title7 = 'Pilih';

  /////////////////////////////////// main function ////////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Komponen C10 - Tandas"),
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
                            child: myDetailsContainer1(),
                          ),
                        ),
                        Container(
                          width: 250,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Padding(
                              padding: const EdgeInsets.all(50.0),
                              child: QuestionDetails1(),
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
                            child: myDetailsContainer2(),
                          ),
                        ),
                        Container(
                          width: 250,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Padding(
                              padding: const EdgeInsets.all(50.0),
                              child: QuestionDetails2(),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),

/////////////////////////////////// 3 ////////////////////////////////////////////////////////

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
                            child: myDetailsContainer3(),
                          ),
                        ),
                        Container(
                          width: 250,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Padding(
                              padding: const EdgeInsets.all(50.0),
                              child: QuestionDetails3(),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),

/////////////////////////////////// 4 ////////////////////////////////////////////////////////

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
                            child: myDetailsContainer4(),
                          ),
                        ),
                        Container(
                          width: 250,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Padding(
                              padding: const EdgeInsets.all(50.0),
                              child: QuestionDetails4(),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),

/////////////////////////////////// 5 ////////////////////////////////////////////////////////

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
                            child: myDetailsContainer5(),
                          ),
                        ),
                        Container(
                          width: 250,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Padding(
                              padding: const EdgeInsets.all(50.0),
                              child: QuestionDetails5(),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),

/////////////////////////////////// 6 ////////////////////////////////////////////////////////

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
                            child: myDetailsContainer6(),
                          ),
                        ),
                        Container(
                          width: 250,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Padding(
                              padding: const EdgeInsets.all(50.0),
                              child: QuestionDetails6(),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),

/////////////////////////////////// 7 ////////////////////////////////////////////////////////

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
                            child: myDetailsContainer7(),
                          ),
                        ),
                        Container(
                          width: 250,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Padding(
                              padding: const EdgeInsets.all(50.0),
                              child: QuestionDetails7(),
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
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Kepastian"),
                    content: Text("Adakah anda ingin ke Bahagian D?"),
                    actions: <Widget>[
                      FlatButton(
                          child: Text("Ya"),
                          onPressed: () =>
                              Navigator.pushNamed(context, '/bahagianD')),
                      FlatButton(
                        child: Text("Tidak"),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  title: Text("Kepastian"),
                                  content:
                                      Text("Adakah anda ingin ke Bahagian E1?"),
                                  actions: <Widget>[
                                    FlatButton(
                                        child: Text("Ya"),
                                        onPressed: () => Navigator.pushNamed(
                                            context, '/bahagianE1')),
                                    FlatButton(
                                        child: Text("Tidak"),
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                    title: Text("Kepastian"),
                                                    content: Text(
                                                        "Adakah anda ingin ke Bahagian E2?"),
                                                    actions: <Widget>[
                                                      FlatButton(
                                                          child: Text("Ya"),
                                                          onPressed: () =>
                                                              Navigator.pushNamed(
                                                                  context,
                                                                  '/bahagianE2')),
                                                      FlatButton(
                                                          child: Text("Tidak"),
                                                          onPressed: () =>
                                                              Navigator.pushNamed(
                                                                  context,
                                                                  '/results')),
                                                    ]);
                                              });
                                        })
                                  ]);
                            },
                          );
                        },
                      ),
                    ],
                  );
                });
          }),
    );
  }

////////////////////////////////////////////myDetailsContainer//////////////////////////////////////////////////////

  Widget myDetailsContainer1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Chocolate 1",
            style: TextStyle(
                color: Color(0xffe6020a),
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
      ],
    );
  }

  Widget myDetailsContainer2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Chocolate 2",
            style: TextStyle(
                color: Color(0xffe6020a),
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
      ],
    );
  }

  Widget myDetailsContainer3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Chocolate 3",
            style: TextStyle(
                color: Color(0xffe6020a),
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
      ],
    );
  }

  Widget myDetailsContainer4() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Chocolate 4",
            style: TextStyle(
                color: Color(0xffe6020a),
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
      ],
    );
  }

  Widget myDetailsContainer5() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Chocolate 5",
            style: TextStyle(
                color: Color(0xffe6020a),
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
      ],
    );
  }

  Widget myDetailsContainer6() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Chocolate 6",
            style: TextStyle(
                color: Color(0xffe6020a),
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
      ],
    );
  }

  Widget myDetailsContainer7() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Chocolate 7",
            style: TextStyle(
                color: Color(0xffe6020a),
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
      ],
    );
  }

//////////////////////////////////////////QuestionDetails//////////////////////////////////////////////////////

  Widget QuestionDetails1() {
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
                                builder: (context, scrollController2) =>
                                    ListView.builder(
                                        padding: EdgeInsets.all(0),
                                        controller: scrollController2,
                                        shrinkWrap: true,
                                        itemCount: _list.length,
                                        itemBuilder: (context, index) {
                                          return RadioListTile(
                                              title:
                                                  Text(_list.elementAt(index)),
                                              value: index,
                                              groupValue: groupValue,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupValue = val;
                                                  title =
                                                      _list.elementAt(index);
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

  Widget QuestionDetails2() {
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
                                          title2,
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isStrechedDropDown2 =
                                                !isStrechedDropDown2;
                                          });
                                        },
                                        child: Icon(isStrechedDropDown2
                                            ? Icons.arrow_upward
                                            : Icons.arrow_downward))
                                  ],
                                )),
                            ExpandedSection(
                              expand: isStrechedDropDown2,
                              height: 100,
                              child: MyScrollbar(
                                builder: (context, scrollController2) =>
                                    ListView.builder(
                                        padding: EdgeInsets.all(0),
                                        controller: scrollController2,
                                        shrinkWrap: true,
                                        itemCount: _list2.length,
                                        itemBuilder: (context, index) {
                                          return RadioListTile(
                                              title:
                                                  Text(_list2.elementAt(index)),
                                              value: index,
                                              groupValue: groupValue2,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupValue2 = val;
                                                  title2 =
                                                      _list2.elementAt(index);
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

  Widget QuestionDetails3() {
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
                                          title3,
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isStrechedDropDown3 =
                                                !isStrechedDropDown3;
                                          });
                                        },
                                        child: Icon(isStrechedDropDown3
                                            ? Icons.arrow_upward
                                            : Icons.arrow_downward))
                                  ],
                                )),
                            ExpandedSection(
                              expand: isStrechedDropDown3,
                              height: 100,
                              child: MyScrollbar(
                                builder: (context, scrollController2) =>
                                    ListView.builder(
                                        padding: EdgeInsets.all(0),
                                        controller: scrollController2,
                                        shrinkWrap: true,
                                        itemCount: _list3.length,
                                        itemBuilder: (context, index) {
                                          return RadioListTile(
                                              title:
                                                  Text(_list3.elementAt(index)),
                                              value: index,
                                              groupValue: groupValue3,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupValue3 = val;
                                                  title3 =
                                                      _list3.elementAt(index);
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

  Widget QuestionDetails4() {
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
                                          title4,
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isStrechedDropDown4 =
                                                !isStrechedDropDown4;
                                          });
                                        },
                                        child: Icon(isStrechedDropDown4
                                            ? Icons.arrow_upward
                                            : Icons.arrow_downward))
                                  ],
                                )),
                            ExpandedSection(
                              expand: isStrechedDropDown4,
                              height: 100,
                              child: MyScrollbar(
                                builder: (context, scrollController2) =>
                                    ListView.builder(
                                        padding: EdgeInsets.all(0),
                                        controller: scrollController2,
                                        shrinkWrap: true,
                                        itemCount: _list4.length,
                                        itemBuilder: (context, index) {
                                          return RadioListTile(
                                              title:
                                                  Text(_list4.elementAt(index)),
                                              value: index,
                                              groupValue: groupValue4,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupValue4 = val;
                                                  title4 =
                                                      _list4.elementAt(index);
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

  Widget QuestionDetails5() {
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
                                          title5,
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isStrechedDropDown5 =
                                                !isStrechedDropDown5;
                                          });
                                        },
                                        child: Icon(isStrechedDropDown5
                                            ? Icons.arrow_upward
                                            : Icons.arrow_downward))
                                  ],
                                )),
                            ExpandedSection(
                              expand: isStrechedDropDown5,
                              height: 100,
                              child: MyScrollbar(
                                builder: (context, scrollController2) =>
                                    ListView.builder(
                                        padding: EdgeInsets.all(0),
                                        controller: scrollController2,
                                        shrinkWrap: true,
                                        itemCount: _list5.length,
                                        itemBuilder: (context, index) {
                                          return RadioListTile(
                                              title:
                                                  Text(_list5.elementAt(index)),
                                              value: index,
                                              groupValue: groupValue5,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupValue5 = val;
                                                  title5 =
                                                      _list5.elementAt(index);
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

  Widget QuestionDetails6() {
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
                                          title6,
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isStrechedDropDown6 =
                                                !isStrechedDropDown6;
                                          });
                                        },
                                        child: Icon(isStrechedDropDown6
                                            ? Icons.arrow_upward
                                            : Icons.arrow_downward))
                                  ],
                                )),
                            ExpandedSection(
                              expand: isStrechedDropDown6,
                              height: 100,
                              child: MyScrollbar(
                                builder: (context, scrollController2) =>
                                    ListView.builder(
                                        padding: EdgeInsets.all(0),
                                        controller: scrollController2,
                                        shrinkWrap: true,
                                        itemCount: _list6.length,
                                        itemBuilder: (context, index) {
                                          return RadioListTile(
                                              title:
                                                  Text(_list6.elementAt(index)),
                                              value: index,
                                              groupValue: groupValue6,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupValue6 = val;
                                                  title6 =
                                                      _list6.elementAt(index);
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

  Widget QuestionDetails7() {
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
                                          title7,
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isStrechedDropDown7 =
                                                !isStrechedDropDown7;
                                          });
                                        },
                                        child: Icon(isStrechedDropDown7
                                            ? Icons.arrow_upward
                                            : Icons.arrow_downward))
                                  ],
                                )),
                            ExpandedSection(
                              expand: isStrechedDropDown7,
                              height: 100,
                              child: MyScrollbar(
                                builder: (context, scrollController2) =>
                                    ListView.builder(
                                        padding: EdgeInsets.all(0),
                                        controller: scrollController2,
                                        shrinkWrap: true,
                                        itemCount: _list7.length,
                                        itemBuilder: (context, index) {
                                          return RadioListTile(
                                              title:
                                                  Text(_list7.elementAt(index)),
                                              value: index,
                                              groupValue: groupValue7,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupValue7 = val;
                                                  title7 =
                                                      _list7.elementAt(index);
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
