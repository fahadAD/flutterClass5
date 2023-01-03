import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool switchFrom=false;
  final _formKey=GlobalKey<FormState>();
  final controoler=TextEditingController();
  printInput(){
    if(_formKey.currentState!.validate()){
    controoler.text;
    setState(() {
      switchFrom=!switchFrom;
    });
  }}
  @override
  void dispose() {
   controoler.clear();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

     body: Form(
       key: _formKey,
       child: Column(
         children: [

       TextFormField(
         decoration: InputDecoration(
           labelText: "User Name",
           hintText: "Enter your User Name",
           border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(34)))
         ),
         controller: controoler,
validator: (value){
   if(value!.length<3){
     return 'fill up';
   }
           return null;
},
       ),

           ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 100
              ),
               onPressed: (){
             printInput();
           }, child: Text('Submit')),
switchFrom?
ElevatedButton(
    style: ElevatedButton.styleFrom(
        elevation: 100
    ),
    onPressed: (){
      printInput();
    }, child: Text('succes')):Container(),

         Container(
             height: 200,
             width: 300,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(50)),
                 border: Border.all(style: BorderStyle.solid),
                 color: Colors.deepOrange
             ),
             child: Text("")),

Row(
  children: [
    Container(
        height: 200,
        width: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            border: Border.all(style: BorderStyle.solid),
            color: Colors.orange
        ),
        child: Text("")),
    Container(
        height: 200,
        width: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
          border: Border.all(style: BorderStyle.solid),
          color: Colors.lightGreen
        ),
        child: Text("")),
  ],
),

           Container(
               height: 200,
               width: 300,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.all(Radius.circular(50)),
                   border: Border.all(style: BorderStyle.solid),
                   color: Colors.lightBlueAccent
               ),
               child: Text("")),
         ],
       ),
     ),

    );
  }
}

