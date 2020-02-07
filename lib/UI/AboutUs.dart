import 'package:flutter/material.dart';
import 'package:yuvaan/support.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyScaffold(),
    );
  }
}

class MyScaffold extends StatefulWidget {
  @override
  _MyScaffoldState createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  var controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: PageView(
        controller: controller,
        onPageChanged: ((i) {
          controller.animateToPage(i, duration: Duration(milliseconds: 500), curve: Curves.fastLinearToSlowEaseIn);
        }),
        children: <Widget>[
          ScrollPage(
            header: "Yuvaan Intro",
            body: """Yuvaan, the annual cultural festival of IIIT Guwahati is that moon of the sky. Spread across three days in march, Yuvaan has played host to multitude of talented scholars and media moguls. Although, several college fests are organised across the country over the year but the grandeur of Yuvaan is majestic. Yuvaan, a much celebrated package of art, culture, expression with an overflow of excitement and energy. With sparkling aspirations, sterling accomplishments and bubbling enthusiasm, Yuvaan is a hub of the young and creative minds across the nation and receives a footfall of over 10,000 from across the length and breadth of the country.""",
          ),
          ScrollPage(
            header: "Institute Description",
            body: """Indian Institute of Information Technology Guwahati (IIITG) is an institution of National Importance under an Act of Parliament. It offers B.Tech. courses in Electronics and Communication Engineering (ECE) and Computer Science Engineering (CSE), and runs PhD programmes in ECE, CSE, Mathematics, and Humanities and Social Sciences (HSS). IIITG started operations in August 2013 with BTech programmes in CSE and ECE.\n\n
            Since then, IIITG Has grown in Huge Number to Emerge as One of the Top IIIT’S Across the Nation. It offers B.Tech. courses in Electronics and Communication Engineering (ECE) and Computer Science Engineering (CSE), and runs PhD programmes in ECE, CSE, Mathematics, and Humanities and Social Sciences (HSS). M.Tech. programmes in CSE and ECE are starting from July 2018. IIITG started operations in August 2013 with B.Tech programmes in CSE and ECE. The first batch of B.Tech. students completed their programme in May 2017. The first convocation of the Institute was held on May 15 2018. IIITG strives to be attentive to academic needs of every student.""",
          ),
        ],
      ),
    );
  }
}
