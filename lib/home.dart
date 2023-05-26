import 'package:flutter/material.dart';

import 'BMT_CALCULATOR.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double sliderValue = 170.0;
  int age = 20;
  int weight = 50;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("BMI"),
        ),
        body: Column(children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black38,
                  ),
                  child: Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.male),
                          color: Colors.white,
                          iconSize: 120),
                      const Text("MALE",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20))
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black38,
                  ),
                  child: Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.female),
                          color: Colors.white,
                          iconSize: 120),
                      const Text(
                        "FEMALE",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black38,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Height",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${sliderValue.round()}cm',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 60)),
                          const Text("cm")
                        ],
                      ),
                      /*Slider(value: sliderValue.toDouble(),
                            min:0.0 ,
                            max:1.0 ,
                            onChanged: (value) {
                              setState(() {

                                sliderValue=value.toInt();
                              });
                              },
                            inactiveColor: Colors.white,
                          )*/
                      Slider(
                        min: 150.0,
                        max: 220.0,
                        value: sliderValue,
                        onChanged: (value) {
                          setState(() {
                            sliderValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
          Row(children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black38,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("WEIGHT",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30)),
                    Text("$weight",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 50)),
                    Row(
                      children: [
                        Expanded(
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: const Icon(Icons.add),
                            ),
                          ),
                        ),
                        Expanded(
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              icon: const Icon(Icons.minimize),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black38,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("AGE",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30)),
                    Text("$age",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 50)),
                    Row(
                      children: [
                        Expanded(
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                                age++;
                              },
                              icon: const Icon(Icons.add),
                            ),
                          ),
                        ),
                        Expanded(
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                                age--;
                              },
                              icon: const Icon(Icons.minimize),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ]),
          SizedBox(height: 12,),
          Container(
            width: double.infinity,
            height: 80,
            color: Colors.black38,
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BMT_CALCULATOR(
                          sliderValue: sliderValue, weight: weight)),
                );
              },
              child: const Text(
                "CALCULATE",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
