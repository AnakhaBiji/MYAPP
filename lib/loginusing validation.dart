import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/listpage.dart';

class loginform extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends State{
  var formkey=GlobalKey<FormState>();
  bool showpass =true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Loginform"),),
      body: Form(
        key: formkey,
        child: ListView(
          children: [
            Center(child: Text("Login Page",
        style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
        Padding(
            padding: const EdgeInsets.all(20),
        child: TextFormField(
            decoration: InputDecoration(
            hintText: "Enter Username",
          labelText: "Username",
          prefixIcon: Icon(Icons.account_box_sharp),
          border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
          )
        ),
      textInputAction: TextInputAction.next,
      validator: (Username){
              if(Username!.isEmpty || !Username.contains('@')){
                return "Enter a valid username";
              }
      },
        )
    ),
    Padding(padding: const EdgeInsets.all(20),
    child: TextFormField(
    obscureText: showpass,
    obscuringCharacter: "*",
    decoration: InputDecoration(
    prefixIcon: Icon(Icons.visibility_off),
    suffixIcon: IconButton(onPressed: (){setState(() {
      if(showpass){
        showpass=false;
    }else{
        showpass=true;
    }
    });
      },
                icon: Icon(showpass==true ?Icons.visibility_off : Icons.visibility,),
    ),
    labelText: "PASSWORD",
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20)
    )
    ),
    textInputAction: TextInputAction.done,
    validator: (Password){
      if(Password!.isEmpty || Password.length<6){
        return "password must contain 6 charachters";
    }else
      {
        return null;
      }
    },
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 100,right: 100),
    child: ElevatedButton(onPressed: (){final valid = formkey.currentState!.validate();
    if(valid){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>listpage()));
    }else{
      return null;
    }
      }, child: Text("Login")
    ),
    )
          ],
        ),
      ),
    );
  }

}