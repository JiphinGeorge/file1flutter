import 'package:flutter/material.dart';

class Hireath extends StatefulWidget {
  const Hireath({Key? key}) : super(key: key);

  @override
  State<Hireath> createState() => _PageState();
}

class _PageState extends State<Hireath> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double result=0;
  double h_value=0;
  double w_value=0;
  void calculator(){
    h_value= double.parse(height.text);
    w_value= double.parse(weight.text);
    result=w_value/(h_value*h_value);
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          TextField(
            controller: height,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.lightGreenAccent,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30)
              ), hintText: 'Type to enter',
              labelText: 'Height',
            ),
          ),
          SizedBox(height: 25,),
          TextField(
            controller: weight,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.lightGreenAccent,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30)
                ),
                labelText: 'weight',
                hintText: 'Type to enter'),
          ),
          TextButton(
              onPressed: (){
                setState(()
                {
                  calculator();
                });

              }, child: Text('Calculate',)),
          Text(result.toString()),
        ],
      ),
    );
  }
}