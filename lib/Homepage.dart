import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Utilities/variables.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Filter"),
          ),
          body: Column(
            children: [
            Slider(
            max: 8000,
            divisions: 10,
            value: slide, onChanged: (value) {
            setState(() {
              slide = value;
            });
          },
          ),
          Text("$slide"),
              Expanded(
                child: ListView.builder(
                  itemCount: lowimag.length,
                  itemBuilder: (context, index) {
                   return slide>=int.parse(lowpri[index])?Con(lowimag[index],lowpri[index]):SizedBox();
                },),
              ),

            ],
          ),)
    );
  }
  Widget Con(String img, String pri)
  {
    return Container(
      margin: EdgeInsets.all(10),
      height: 130,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            height: double.infinity,
            width: 150,
            child: Image.asset(img),
          ),
          Text(pri),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.blue,
            spreadRadius: 1,
          )
        ],
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
