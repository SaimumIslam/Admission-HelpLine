import 'carrosel.dart';
import 'detailsBody.dart';
import 'package:flutter/material.dart';

class varsityDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              expandedHeight: 250.0,
              flexibleSpace: FlexibleSpaceBar(
                background: CaroselPage(),
              ),
              floating: false,
              pinned: true,
              snap: false),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return detailBody();
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}

