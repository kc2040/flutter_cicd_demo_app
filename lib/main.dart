import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  String text = "";

  bool isLoginSuccess = true;

  bool authenticate() {
    setState(() {
      //_count = int.parse(num1Controller.text) + int.parse(num2Controller.text); //getSum(56, 67);
      isLoginSuccess = loginUser(usernameController.text , passwordController.text) ;
    });
    return isLoginSuccess;
  }

  bool loginUser(var usrname, var pwd) {
    if (usrname == 'demo' &&  pwd == 'demo')
      return true;
    return false;
  }

  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _showDialog(String alertText) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: Text('Hey, $alertText!'),
          content: Text(
              'You are looking sharp today!\n\nIt is going to be a great day!'),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Flutter Demo App'),
      ),
      body: Center(
        child: Container(
          decoration: kGradientStyle,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Login info',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Image.asset(
                'assets/login.jpg',
                width: 120.0,
                height: 120.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Form(
                  key: Key('_username'),
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    key: Key('text-field'),
                    controller: usernameController,
                    decoration: kTextInputStyle,
                    validator: (value) =>
                    value.isEmpty ? 'Input some text!' : null,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Form(
                  key: Key('_password'),
                  child: TextFormField(
                    obscureText: true,
                    style: TextStyle(color: Colors.black),
                    key: Key('text-field'),
                    controller: passwordController,
                    decoration: kTextInputStylePass,
                    validator: (value) =>
                    value.isEmpty ? 'Input some text!' : null,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  (isLoginSuccess) ?'' : 'Login failed.',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.red,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20.0),
                child: ElevatedButton(
                    onPressed: () {
                      if (authenticate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage()),
                        );
                      }
                    },

                    child: Text(
                      'Log in',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        onPressed: () => {
          if (_formKey.currentState.validate())
            {setText(_controller.text)}
          else
            (setText(''))
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),*/
    );
  }
}

class DetailPage extends StatefulWidget {

  const DetailPage({
    Key key,
  }): super (key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Flutter DEMO App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Image.asset(
                'assets/happy-smiley.png',
                width: 100.0,
                height: 100.0,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Log in success.',
                  style: TextStyle( fontFamily: 'Arial',
                      color: Colors.cyan,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
              ),

            ],
          ),

        ));
  }
}
