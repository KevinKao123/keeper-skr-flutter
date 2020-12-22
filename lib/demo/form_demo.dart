import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ThemeDemo(),
      body: Theme(
        // data: ThemeData(primaryColor: Colors.black),
        data: Theme.of(context).copyWith(primaryColor: Colors.black),
        // child: ThemeDemo(),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // TextFieldDemo(),
              RegisterForm()
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  // RegisterForm({Key key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerFormKey = GlobalKey<FormState>();
  String username, password;
  bool autovalidate = false;

  void submitRegisterForm() {
    if (registerFormKey.currentState.validate()) {
      registerFormKey.currentState.save();
      registerFormKey.currentState.validate();
      debugPrint('username:$username,password:$password');
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('Registering...'),
        ),
      );
    } else {
      setState(() {
        autovalidate = true;
      });
    }

    registerFormKey.currentState.save();
  }

  String validateUsername(value) {
    if (value.isEmpty) {
      return 'Username is required';
    }
    return null;
  }

  String validatePassword(value) {
    if (value.isEmpty) {
      return 'Password is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: registerFormKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration:
                  InputDecoration(labelText: 'Username', helperText: ''),
              onSaved: (value) {
                username = value;
              },
              validator: validateUsername,
              autovalidate: autovalidate,
            ),
            TextFormField(
              obscureText: true,
              decoration:
                  InputDecoration(labelText: 'Password', helperText: ''),
              onSaved: (value) {
                password = value;
              },
              validator: validatePassword,
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              width: double.infinity,
              child: RaisedButton(
                onPressed: submitRegisterForm,
                color: Theme.of(context).accentColor,
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white),
                ),
                elevation: 0.0,
              ),
            )
          ],
        ));
  }
}

class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key key}) : super(key: key);

  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // textEditingController.text = "hello skr";
    textEditingController.addListener(() {
      debugPrint('input:${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      // onChanged: (value) {
      //   debugPrint('input:$value');
      // },
      onSubmitted: (value) {
        debugPrint('submit:$value');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject_sharp),
        labelText: 'Titleskr',
        hintText: 'Enter the skr title',
        border: InputBorder.none,
        // border: OutlineInputBorder(),
        filled: true,
        // fillColor: Theme.of(context).accentColor,
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Theme.of(context).primaryColor,
      color: Theme.of(context).accentColor,
    );
  }
}
