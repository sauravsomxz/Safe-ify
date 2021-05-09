import 'package:flutter/material.dart';

class AddUser extends StatefulWidget {
  @override
  _AddUserState createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              validator: (String value){
                if(value==null || value.isEmpty){
                  return "Enter some text";
                }
                return null;
              },
            ),
            ElevatedButton(
                onPressed: () {
                  if(_formKey.currentState.validate()){
                    //send data to firebase
                  }
                },
                child: Text("Submit")
            )
          ],
        )
    );
  }
}
