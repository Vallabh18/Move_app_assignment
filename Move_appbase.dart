import 'package:flutter/material.dart';

void main() {
  runApp(const CardExamplesApp());
}

class CardExamplesApp extends StatelessWidget {
  const CardExamplesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Orders')),
        body: Column(
          children: const <Widget>[
            //Spacer(),
            OutlinedCardExample1(),
            OutlinedCardExample2(),
            OutlinedCardExample3(),
            OutlinedCardExample4(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

/// An example of the outlined card type.

class OutlinedCardExample1 extends StatelessWidget {
  const OutlinedCardExample1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
          elevation: 0,
          child: SizedBox(
            width: 350,
            height: 100,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget>[
                  Container(
                    margin: EdgeInsets.all(12.0),
                    padding: EdgeInsets.all(8.0),
                    decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(8),
                        color:Colors.black
                    ),
                    child: Text("Ongoing Loads",style: TextStyle(color:Colors.white,fontSize:13),),
                  ),
                  Container(
                    margin: EdgeInsets.all(12.0),
                    padding: EdgeInsets.all(8.0),
                    decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(8),
                        color:Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 1.5,
                        )
                    ),
                    child: Text("Past Loads",style: TextStyle(color:Colors.black,fontSize:13),),
                  ),
                ],
            ),
            ),
          ),
        );
  }
}

//outline card 2
class OutlinedCardExample2 extends StatelessWidget {
  const OutlinedCardExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: SizedBox(
          width: 320,
          height: 150,
          child: Row(
            children: [
              Expanded (
                child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Spacer(),
                      Container(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Text('  \u{20B9}1000.00', style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          //child: new Image.asset('assets/uber_pin.png')
                        padding: EdgeInsets.only(bottom: 8),
                        child: Text('  Pickup Location', style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                Text(
              '  10:20 am',
              style: TextStyle(
                color: Colors.grey,
                ),
              ),
                      Container(
                        //child: new Image.asset('assets/uber_pin.png')
                        padding: EdgeInsets.only(bottom: 8),
                        child: Text('  Drop Location', style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      Text(
                        '  not assigned',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ]
                ),
              ),
              Expanded(
                child: Container(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  margin: EdgeInsets.all(32.0),
                  padding: EdgeInsets.all(8.0),
                  decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(22),
                      color:Colors.grey,
                  ),
                   child: ElevatedButton(
                    child: Text("In Transit",style: TextStyle(color:Colors.black,fontSize:10,fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => const TrackOrder()) );
                    },
                  ),
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}

//outline card 3

class OutlinedCardExample3 extends StatelessWidget {
  const OutlinedCardExample3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: SizedBox(
          width: 320,
          height: 150,
          child: Row(
              children: [
                Expanded (
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Spacer(),
                        Container(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text('  \u{20B9}400.00', style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          //child: new Image.asset('assets/uber_pin.png')
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text('  Pickup Location', style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Text(
                          '  10:20 am',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          //child: new Image.asset('assets/uber_pin.png')
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text('  Drop Location', style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Text(
                          '  not assigned',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ]
                  ),
                ),
                Expanded(
                  child: Container(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    margin: EdgeInsets.all(32.0),
                    padding: EdgeInsets.all(8.0),
                    decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(22),
                      color:Colors.grey,
                    ),
                    child: ElevatedButton(
                      child: Text("In Transit",style: TextStyle(color:Colors.black,fontSize:10,fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => const TrackOrder()) );
                      },
                    ),
                  ),
                ),
              ]

          ),

        ),
      ),
    );
  }
}

//outline card 4

class OutlinedCardExample4 extends StatelessWidget {
  const OutlinedCardExample4({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: SizedBox(
          width: 320,
          height: 150,
         // child: Center(child: Text('Outlined Card')),
          child: Row(
              children: [
                Expanded (
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Spacer(),
                        Container(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text('  \u{20B9}400.00', style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          //child: new Image.asset('assets/uber_pin.png')
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text('  Pickup Location', style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Text(
                          '  10:20 am',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          //child: new Image.asset('assets/uber_pin.png')
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text('  Drop Location', style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Text(
                          '  not assigned',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ]
                  ),
                ),
                Expanded(
                  child: Container(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    margin: EdgeInsets.all(32.0),
                    padding: EdgeInsets.all(8.0),
                    decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(22),
                      color:Colors.grey,
                    ),
                    child: ElevatedButton(
                      child: Text("In Transit",style: TextStyle(color:Colors.black,fontSize:10,fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => const TrackOrder()) );
                      },
                    ),
                  ),
                ),
              ]

          ),
        ),
      ),
    );
  }
}

//TrackOrder
//page 2
class TrackOrder extends StatelessWidget{
  const TrackOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Track Orders')),
        body: Column(
          children: <Widget>[
            //Spacer(),
            OutlinedCardExample_1(),
            OutlinedCardExample_2(),
            OutlinedCardExample_3(),
            OutlinedCardExample_4(),
            OutlinedCardExample_5(),
            OutlinedCardExample_6(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

//outlinecard_1

class OutlinedCardExample_1 extends StatelessWidget {
  const OutlinedCardExample_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        child: SizedBox(
          width: 350,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:<Widget>[
              Container(
                //
                child:Icon(Icons.arrow_back_ios),

        ),
              Container(

                child: Text("   Track Load",style: TextStyle(color:Colors.black,fontSize:18,fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//outlinecard_2

class OutlinedCardExample_2 extends StatelessWidget {
  const OutlinedCardExample_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        /*shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),*/
        child: SizedBox(
          width: 350,
          height: 150,
          child: Row(
              children: [
                Expanded (
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Spacer(),
                        Container(
                          //child: new Image.asset('assets/uber_pin.png')
                          padding: EdgeInsets.only(bottom: 3),
                          child: Text('  Pickup Location', style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Text(
                          '  Discription of Address',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          //child: new Image.asset('assets/uber_pin.png')
                          padding: EdgeInsets.only(bottom: 3),
                          child: Text('  Drop Location', style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Text('  Discription of Address', style: TextStyle(color: Colors.grey,),
                        )
                      ]
                  ),
                ),
                Expanded(
                  child: Container(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    margin: EdgeInsets.all(40.0),
                    padding: EdgeInsets.all(10.0),
                    decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(8),
                      color:Colors.grey,
                    ),
                    //child: Text("",style: TextStyle(color:Colors.black,fontSize:15,fontWeight: FontWeight.bold),),
                  ),
                ),
              ]

          ),

        ),
      ),
    );
  }
}

//outlinedcard_3

class OutlinedCardExample_3 extends StatelessWidget {
  const OutlinedCardExample_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        child: SizedBox(
          width: 350,
          height: 200,
          child: Row(
              children: [
                Expanded (
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Spacer(),
                        Container(
                          //child: new Image.asset('assets/uber_pin.png')
                          padding: EdgeInsets.only(bottom: 3),
                          child:Text('  Truck Fare', style: TextStyle(color: Colors.grey),),
                        ),
                        Text('  Total Distance', style: TextStyle(color: Colors.grey,),
                        ),
                        Container(
                          //child: new Image.asset('assets/uber_pin.png')
                          padding: EdgeInsets.only(bottom: 3),
                          child: Text('  Weight of Load', style: TextStyle(color: Colors.grey),),
                        ),
                       // Spacer(),
                        Text('  Total Amount', style: TextStyle(fontWeight: FontWeight.bold,),
                        ),
                        Spacer(),
                        Text('Truck Details',style: TextStyle(fontWeight: FontWeight.bold,),)
                      ]
                  ),
                ),

              ]

          ),
        ),
      ),
    );
  }
}

//outlinedcard_4

class OutlinedCardExample_4 extends StatelessWidget {
  const OutlinedCardExample_4({super.key});

  @override
  Widget build(BuildContext context){
    return Center(
        child: Card(
        elevation: 0,
          child: SizedBox(
        width: 350,
        height: 80,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: Colors.grey),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "      ",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "   Truck and Driver   ",
                      style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.bold, ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), color: Colors.black),
                  child: Padding(
                    padding: EdgeInsets.all(3.0),
                    child: ElevatedButton(
                        child: Text(
                          "Check Status",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                        onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const TrackTruck()) );
                  }
                    )
                    ,
                  ),
                )

    ]
    ),
    ),
        ),
    );
  }
}

//outlinecard_5

class OutlinedCardExample_5 extends StatelessWidget {
  const OutlinedCardExample_5({super.key});

  @override
  Widget build(BuildContext context){
    return Center(
      child: Card(
        elevation: 0,
        child: SizedBox(
          width: 350,
          height: 80,
          child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: Colors.grey),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "      ",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "    Truck and Driver  ",
                      style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.bold, ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), color: Colors.black),
                  child: Padding(
                    padding: EdgeInsets.all(3.0),
                    child: ElevatedButton(
                        child: Text(
                          "Check Status",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => const TrackTruck()) );
                        }
                    ),
                  ),
                )

              ]
          ),
        ),
      ),
    );
  }
}

//outlinecard_6

class OutlinedCardExample_6 extends StatelessWidget {
  const OutlinedCardExample_6({super.key});

  @override
  Widget build(BuildContext context){
    return Center(
      child: Card(
        elevation: 0,
        child: SizedBox(
          width: 350,
          height: 80,
          child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: Colors.grey),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "      ",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "    Truck and Driver  ",
                      style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.bold, ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), color: Colors.black),
                  child: Padding(
                    padding: EdgeInsets.all(3.0),
                    child: ElevatedButton(
                        child: Text(
                          "Check Status",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => const TrackTruck()) );
                        }
                    ),
                  ),
                )

              ]
          ),
        ),
      ),
    );
  }
}

//TrackTruck
//page 3
class TrackTruck extends StatelessWidget{
  const TrackTruck({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Track Orders')),
        body: Column(
          children: <Widget>[
            //Spacer(),
            OutlinedCardExample_13(),
            OutlinedCardExample_23(),
            OutlinedCardExample_33(),
            //OutlinedCardExample_4(),
            //OutlinedCardExample_5(),
            //OutlinedCardExample_6(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

//outlinecard_13

class OutlinedCardExample_13 extends StatelessWidget {
  const OutlinedCardExample_13({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        child: SizedBox(
          width: 350,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:<Widget>[
              Container(
                //
                child:Icon(Icons.arrow_back_ios),

              ),
              Container(

                child: Text("   Status Of Load",style: TextStyle(color:Colors.black,fontSize:18,fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//outlinecard_23

class OutlinedCardExample_23 extends StatelessWidget {
  const OutlinedCardExample_23({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        /*shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),*/
        child: SizedBox(
          width: 350,
          height: 150,
          child: Row(
              children: [
                Expanded (
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Spacer(),
                        Container(
                          //child: new Image.asset('assets/uber_pin.png')
                          padding: EdgeInsets.only(bottom: 3),
                          child: Text('  Pickup Location', style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Text(
                          '  Discription of Address',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          //child: new Image.asset('assets/uber_pin.png')
                          padding: EdgeInsets.only(bottom: 3),
                          child: Text('  Drop Location', style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Text('  Discription of Address', style: TextStyle(color: Colors.grey,),
                        )
                      ]
                  ),
                ),
                Expanded(
                  child: Container(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    margin: EdgeInsets.all(40.0),
                    padding: EdgeInsets.all(10.0),
                    decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(8),
                      color:Colors.grey,
                    ),
                    //child: Text("",style: TextStyle(color:Colors.black,fontSize:15,fontWeight: FontWeight.bold),),
                  ),
                ),
              ]

          ),

        ),
      ),
    );
  }
}

//outlinedcard_33

class OutlinedCardExample_33 extends StatelessWidget {
  const OutlinedCardExample_33({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        child: SizedBox(
          width: 350,
          height: 200,
          child: Row(
              children: [
                Expanded (
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Spacer(),
                        Container(
                          //child: new Image.asset('assets/uber_pin.png')
                          padding: EdgeInsets.only(bottom: 3),
                          child:Text('  Trucks and Driver Details', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        ),
                        Text('  Truck Number', style: TextStyle(color: Colors.grey,),
                        ),
                        Container(
                          //child: new Image.asset('assets/uber_pin.png')
                          padding: EdgeInsets.only(bottom: 3),
                          child: Text('  Driver Name', style: TextStyle(color: Colors.grey),),
                        ),
                        // Spacer(),
                        Text('  Driver Phone Number', style: TextStyle(color: Colors.grey,),
                        ),
                        Spacer(),
                        Text('Truck Status',style: TextStyle(fontWeight: FontWeight.bold,),)
                      ]
                  ),
                ),

              ]

          ),
        ),
      ),
    );
  }
}
