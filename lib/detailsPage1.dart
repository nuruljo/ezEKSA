import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _negeriVal;
  List _negeriNames = [
    'Sarawak',
    'Sabah',
    'Pahang',
    'Perak',
    'Johor',
    'Kelantan',
    'Terengganu',
    'Kedah',
    'Selangor',
    'Negeri Sembilan',
    'Melaka',
    'Pulau Pinang',
    'Perlis',
    'Kuala Lumpur',
    'Labuan',
    'Putrajaya'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('ezEKSA'),
        backgroundColor: Colors.yellow[700],
        elevation: 1.0,
        centerTitle: true,
      ),
      body: Container(
        child: Form(
          autovalidate: true,
          child: ListView(
            padding: EdgeInsets.only(left: 30.0, right: 30.0),
            children: <Widget>[
              SizedBox(
                height: 50.0,
                width: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20.0, left: 80.0, right: 80.0, bottom: 20.0),
                child: Divider(
                  color: Colors.white,
                ),
              ),

              TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  labelText: "Auditor (Tekan 'Enter' untuk tambah nama baru)",
                ),
                validator: RequiredValidator(errorText: "Required **"),
              ),
              Padding(padding: EdgeInsets.only(top: 20.0)),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  labelText: "Agensi",
                ),
                validator: RequiredValidator(errorText: "Required **"),
              ),

              Padding(padding: EdgeInsets.only(top: 20.0)),
              DropdownButtonFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  labelText: "Negeri",
                ),
                hint: Text('Pilih Negeri'),
                icon: Icon(Icons.arrow_drop_down),
                value: _negeriVal,
                onChanged: (value) {
                  setState(() {
                    _negeriVal = value;
                  });
                },
                items: _negeriNames.map((value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),

              //Untuk Cawangan
              Padding(padding: EdgeInsets.only(top: 20.0)),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  labelText: "Cawangan",
                ),
                validator: RequiredValidator(errorText: "Required **"),
              ),
              //Untuk Blok/Aras
              Padding(padding: EdgeInsets.only(top: 20.0)),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  labelText: "Blok/Aras",
                ),
                validator: RequiredValidator(errorText: "Required **"),
              ),
              //UntukTarikhPenilaian
              Padding(padding: EdgeInsets.only(top: 20.0)),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  labelText: "Tarikh Penilaian",
                ),
                validator: RequiredValidator(errorText: "Required **"),
              ),

              //TAMBAH UNTUK SUBMIT PRINTF!!
              Padding(padding: EdgeInsets.only(top: 20.0, bottom: 10.0)),
              new ElevatedButton(child: new Text("Hantar"), onPressed: () {}),
//Dialogue button untuk ke Bahagian A ataupun tidak
              Padding(padding: EdgeInsets.only(bottom: 20.0)),
              new ElevatedButton(
                  child: new Text("Seterusnya"),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                              title: Text("Kepastian"),
                              content: Text("Adakah anda ingin ke Bahagian A?"),
                              actions: <Widget>[
                                FlatButton(
                                    child: Text("Ya"),
                                    onPressed: () => Navigator.pushNamed(
                                        context, '/bahagianA')),
                                FlatButton(
                                    child: Text("Tidak"),
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: Text("Kepastian"),
                                              content: Text(
                                                  "Adakah anda ingin ke Bahagian B?"),
                                              actions: <Widget>[
                                                FlatButton(
                                                    child: Text("Ya"),
                                                    onPressed: () =>
                                                        Navigator.pushNamed(
                                                            context,
                                                            '/bahagianB')),
                                                FlatButton(
                                                    child: Text("Tidak"),
                                                    onPressed: () {
                                                      showDialog(
                                                          context: context,
                                                          builder: (context) {
                                                            return AlertDialog(
                                                              title: Text(
                                                                  "Kepastian"),
                                                              content: Text(
                                                                  "Adakah anda ingin ke Bahagian C?"),
                                                              actions: <Widget>[
                                                                FlatButton(
                                                                    child: Text(
                                                                        "Ya"),
                                                                    onPressed: () =>
                                                                        Navigator.pushNamed(
                                                                            context,
                                                                            '/bahagianC')),
                                                                FlatButton(
                                                                  child: Text(
                                                                      "Tidak"),
                                                                  onPressed:
                                                                      () {
                                                                    showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                        return AlertDialog(
                                                                            title:
                                                                                Text("Kepastian"),
                                                                            content: Text("Adakah anda ingin ke Bahagian D?"),
                                                                            actions: <Widget>[
                                                                              FlatButton(child: Text("Ya"), onPressed: () => Navigator.pushNamed(context, '/bahagianD')),
                                                                              FlatButton(
                                                                                  child: Text("Tidak"),
                                                                                  onPressed: () {
                                                                                    showDialog(
                                                                                        context: context,
                                                                                        builder: (context) {
                                                                                          return AlertDialog(
                                                                                            title: Text("Kepastian"),
                                                                                            content: Text("Adakah anda ingin ke Bahagian E1?"),
                                                                                            actions: <Widget>[
                                                                                              FlatButton(child: Text("Ya"), onPressed: () => Navigator.pushNamed(context, '/bahagianE1')),
                                                                                              FlatButton(
                                                                                                child: Text("Tidak"),
                                                                                                onPressed: () {
                                                                                                  showDialog(
                                                                                                    context: context,
                                                                                                    builder: (context) {
                                                                                                      return AlertDialog(
                                                                                                        title: Text("Kepastian"),
                                                                                                        content: Text("Adakah anda ingin ke Bahagian E2?"),
                                                                                                        actions: <Widget>[
                                                                                                          FlatButton(child: Text("Ya"), onPressed: () => Navigator.pushNamed(context, '/bahagianE2')),
                                                                                                        ],
                                                                                                      );
                                                                                                    },
                                                                                                  );
                                                                                                },
                                                                                              ),
                                                                                            ],
                                                                                          );
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
                                    })
                              ]);
                        });
                  }),
            ],
          ),

          //if want change button's color
// style: ButtonStyle(
// backgroundColor: MaterialStateProperty.all(Colors.red),
//),
        ),
      ),
    );
  }
}
