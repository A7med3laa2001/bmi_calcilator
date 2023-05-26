
import 'package:flutter/material.dart';

class BMT_CALCULATOR extends StatelessWidget{
final double sliderValue;
final int weight;

  const BMT_CALCULATOR({super.key, required this.sliderValue, required this.weight});

//int _overweigh ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMT CALCULATOR"),
      ),
      body: Column(
        children :[
          const Align(child: Text(" YOUR RESULT " , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 50),),
              alignment:Alignment.topCenter ,),

          Expanded(
            child: Container(
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black38,),
              child: Center(
                child: Column(
                  children: [
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("OVERWEIGH" ,
                            style: TextStyle(fontWeight: FontWeight.bold ,
                            fontSize: 50 ,
                            color: Colors.lightGreenAccent)),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("${sliderValue-weight}" ,style: const TextStyle(fontWeight: FontWeight.bold , fontSize: 80)),
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("INTERPERTATION",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 50)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),


             Container(
              width: double.infinity,
              height: 90,
              color: Colors.black38,
              child: ElevatedButton(onPressed:(){
              Navigator.pop(context);
              } ,
              child: const Text("RECALCULATE",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 30) ),),
            ),

        ]
      ),
    );
  }
}