import 'package:flutter/material.dart';

child: CustomScrollView(
slivers: [
SliverAppBar.large(
snap: false,
stretch: true,
pinned: true,
expandedHeight: 150.h,
backgroundColor: Colors.blue,
flexibleSpace: FlexibleSpaceBar(
expandedTitleScale: 50,
stretchModes: [
StretchMode.zoomBackground,
StretchMode.fadeTitle
],
background: Padding(
padding: const EdgeInsets.only(
bottom: 50, left: 20, top: 5),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Container(
color: Colors.blue,
child: Text('Facebook',
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.bold,
fontSize: 50)),
),
],
),
)),
bottom: const TabBar(
tabs: <Widget>[
Tab(
icon: Icon(Icons.cloud_outlined),
text: 'dedo',
),
Tab(
icon: Icon(Icons.beach_access_sharp),
text: 'dedo',
),
Tab(
icon: Icon(Icons.brightness_5_sharp),
text: 'dedo',
),
],
),
),
SliverList(
delegate: SliverChildListDelegate(
[
Container(
height: 200,
color: Colors.red,
),
Container(
height: 200,
color: Colors.red,
),
Container(
height: 200,
color: Colors.greenAccent,
),
Container(
height: 200,
color: Colors.red,
),
],
),
)
],
),