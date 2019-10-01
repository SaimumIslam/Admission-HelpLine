import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class detailBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text('Khulna University',style: TextStyle(fontSize: 24.0,color: Colors.green),),
                InkWell(
                  child: Text('https://ku.ac.bd/',style: TextStyle(fontSize: 20.0,color: Colors.red),),
                  onTap: () async{
                    if(await canLaunch('https://ku.ac.bd/'))
                      await launch('https://ku.ac.bd/');
                  },
                )
              ],
            ),
            coldata('Registration Last Date:','12 October'),
            coldata('Exam Date:','20 October'),
            coldata('Resut Published:','12 November')
          ],
        )
    );
  }
}
class coldata extends StatelessWidget {
  final title;
  final data;
  coldata(this.title,this.data);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 0.0),
      child: Row(
        children: <Widget>[
          Text(title,style: TextStyle(fontSize: 22,color: Colors.blue),),
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Text(data,style: TextStyle(fontSize: 20),),
          )
        ],
      ),
    );
  }
}