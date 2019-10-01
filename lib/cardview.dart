import 'package:admission_final/details/varsityDetails.dart';
import 'package:flutter/material.dart';

class cardHome extends StatefulWidget {
  @override
  _cardHomeState createState() => _cardHomeState();
}

class _cardHomeState extends State<cardHome> {

  var description=[
    {'name':'Dhaka University','img':'images/univ/du.jpg'},
    {'name':'Khulna University','img':'images/univ/ku.jpg'},
    {'name':'Rajshahi University','img':'images/univ/ru.jpg'},
    {'name':'BUET','img':'images/eng/buet.png'},
    {'name':'KUET','img':'images/eng/kuet.png'},
    {'name':'SUSR','img':'images/pro/sust.jpg'},
    {'name':'MBSTU','img':'images/pro/mbstu.png'},
  ];

  List<Container> cardhero= new List();

  _buidList()async {
    for(var i=0;i<description.length;i++) {
      final des= description[i];
      cardhero.add(
        Container(
          padding: EdgeInsets.all(2.0),
          child: InkWell(
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> varsityDetails())),
            child: Card(
              child: Image.asset(des['img'],fit: BoxFit.cover,),
            ),
          ),
        ),
      );
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    _buidList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        padding: EdgeInsets.all(10.0),
        crossAxisCount: 2,
        children: cardhero,
      ),
    );
  }
}
