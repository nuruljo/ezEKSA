import 'package:flutter/material.dart';
import 'ExpandedListAnimationWidget.dart';
import 'Scrollbar.dart';

class bahagianB15 extends StatefulWidget {
  @override
  _bahagianB15State createState() => _bahagianB15State();
}

///////////////////////////////////List Jawapan/////////////////////////////////////////////////////
List<String> _list1B15 = [
  'Tidak memenuhi kriteria.',
  "Memenuhi satu kriteria",
  "Memenuhi dua kriteria",
  'Memenuhi tiga hingga empat kriteria',
  'Memenuhi semua kriteria'
];

class _bahagianB15State extends State<bahagianB15> {
/////////////////////////////////// value dropdown ////////////////////////////////////////////////////////
  ///1
  bool isStrechedDropDown1B15 = false;
  int groupValue1B15;
  String title1B15 = 'Pilih';

  /////////////////////////////////// main function ////////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Komponen B15 - Bilik Pelayan(Server)/Terperingkat"),
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
                              child: myDetailsContainer1B15(),
                            ),
                          ),
                          Container(
                            width: 250,
                            height: 180,
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(24.0),
                              child: Padding(
                                padding: const EdgeInsets.all(50.0),
                                child: QuestionDetails1B15(),
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
                      content: Text("Adakah anda ingin ke Bahagian C?"),
                      actions: <Widget>[
                        FlatButton(
                            child: Text("Ya"),
                            onPressed: () =>
                                Navigator.pushNamed(context, '/bahagianC')),
                        FlatButton(
                            child: Text("Tidak"),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text("Kepastian"),
                                      content: Text(
                                          "Adakah anda ingin ke BahagianD?"),
                                      actions: <Widget>[
                                        FlatButton(
                                            child: Text("Ya"),
                                            onPressed: () =>
                                                Navigator.pushNamed(
                                                    context, '/bahagianD')),
                                        FlatButton(
                                          child: Text("Tidak"),
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                    title: Text("Kepastian"),
                                                    content: Text(
                                                        "Adakah anda ingin ke Bahagian E1?"),
                                                    actions: <Widget>[
                                                      FlatButton(
                                                          child: Text("Ya"),
                                                          onPressed: () =>
                                                              Navigator.pushNamed(
                                                                  context,
                                                                  '/bahagianE1')),
                                                      FlatButton(
                                                          child: Text("Tidak"),
                                                          onPressed: () {
                                                            showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  return AlertDialog(
                                                                      title: Text(
                                                                          "Kepastian"),
                                                                      content: Text(
                                                                          "Adakah anda ingin ke Bahagian E2?"),
                                                                      actions: <
                                                                          Widget>[
                                                                        FlatButton(
                                                                            child:
                                                                                Text("Ya"),
                                                                            onPressed: () => Navigator.pushNamed(context, '/bahagianE2')),
                                                                        FlatButton(
                                                                            child:
                                                                                Text("Tidak"),
                                                                            onPressed: () => Navigator.pushNamed(context, '/results')),
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
                      ],
                    );
                  });
            }));
  }

////////////////////////////////////////////myDetailsContainer//////////////////////////////////////////////////////

  Widget myDetailsContainer1B15() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Chocolate 1",
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

  Widget QuestionDetails1B15() {
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
                                          title1B15,
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isStrechedDropDown1B15 =
                                                !isStrechedDropDown1B15;
                                          });
                                        },
                                        child: Icon(isStrechedDropDown1B15
                                            ? Icons.arrow_upward
                                            : Icons.arrow_downward))
                                  ],
                                )),
                            ExpandedSection(
                              expand: isStrechedDropDown1B15,
                              height: 100,
                              child: MyScrollbar(
                                builder: (context, scrollController2) =>
                                    ListView.builder(
                                        padding: EdgeInsets.all(0),
                                        controller: scrollController2,
                                        shrinkWrap: true,
                                        itemCount: _list1B15.length,
                                        itemBuilder: (context, index) {
                                          return RadioListTile(
                                              title: Text(
                                                  _list1B15.elementAt(index)),
                                              value: index,
                                              groupValue: groupValue1B15,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupValue1B15 = val;
                                                  title1B15 = _list1B15
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
