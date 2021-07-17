import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        child: Column(children: [
          Container(
            height: 220,
            width: queryData.size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 400,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextForm(
                        hintText: 'User Name',
                        iconHint: Icons.person,
                      ),
                      TextForm(
                        hintText: "Email",
                        iconHint: Icons.email,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'PassWord',
                            hintStyle: TextStyle(
                              color: Colors.lightBlue,
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                FocusScope.of(context).unfocus();
                              },
                              child: Icon(Icons.visibility),
                            )),
                      ),
                      TextForm(hintText: "Phone", iconHint: Icons.phone),
                      Container(
                          height: 45,
                          width: double.infinity,
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text('Register'),
                            color: Colors.blueGrey[200],
                          ))
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text('I Have Already an account '),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      child: Text('Login',
                          style: TextStyle(
                            color: Colors.cyan,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
          Container()
        ]),
      ),
    );
  }
}

class TextForm extends StatelessWidget {
  final String hintText;
  final IconData iconHint;
  const TextForm({
    Key? key,
    required this.hintText,
    this.iconHint = Icons.ac_unit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
      border: OutlineInputBorder(),
      hintText: hintText,
      hintStyle: TextStyle(
        color: Colors.lightBlue,
      ),
    ));
  }
}
