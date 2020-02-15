import 'package:flutter/material.dart';
import 'package:yuvaan/support.dart';

class Sponsorship extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: MyScaffold()),
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
          controller.animateToPage(i,
              duration: Duration(milliseconds: 500),
              curve: Curves.fastLinearToSlowEaseIn);
        }),
        children: <Widget>[
          ScrollPage(
            header: "Title Sponsor\n₹6,00,000",
            body: """As a TITLE sponsor, you will receive:
• Title sponsor recognition.
• Four (4) free standing stall for corporate material contribution at numerous key locations
throughout the campus.
• 5-10 minute presentation between events
• Demonstration and surveys can be conducted
• Flex banner to be displayed at the prime location (banner to be supplied)
• Promotion during fund raisers and pre-event promotions
• On stage promotional activity
• Banners at entrance
• Corporate Signage at all the Youth Festival events (including audio, visual, logo and
advertisement signage). These events include: Battle of Bands, EDM, Celebrity Night, Fashion show,
E-Gaming, Dance events and many more. Option to include company name in our description of
main stage. i.e.: The XXXX Main Stage‟.
• Exclusive logo and tag-line placement at Yuvaan.
.Special announcements at cultural nights.
• Exclusive right to erect a sponsor’s stand, including sole ability to distribute promotional materials
and to engage with sought-after student body face to face and without constraint.
20• Thirty (30) complimentary tickets to the Festival.
• Gobo Logo to be displayed at the Festival events. Logo and web link on website for 6-month
period Exclusive promotion on website through web banners.
• Further logo and web-link placement on all emails and letters sent from Festival organizers.
• Guest of honor for inaugural and valedictory functions
• 1500 likes on Facebook, promotion on Instagram, 500 5-star ratings with good reviews.
• 3-D holographic advertisement
• Promotion on Youtube channel of Yuvaan
• Selfie booth can be setup inside the campus as it will influence youth through social media
plateforms.
• We have created an android app which will conduct surveys regarding brand popularity and
through data mining, will provide the sponsor with the data regarding their weak points, to
improve upon.""",
          ),
          ScrollPage(
            header: "Co-title Sponsor\n₹3,00,000",
            body: """As a CO-TITLE sponsor, you will receive:
• Co-Sponsor recognition
• Two (2) free standing and premium stall for corporate material contribution.
• Corporate signage at ten (10) youth festival events and two core platform events .
These events include: Battle of Bands, EDM, Celebrity Night, Fashion show,
E-Gaming, Dance events and technical and cultural events.
• Exclusive logo and tag-line placement at Yuvaan.
• Exclusive right to erect a sponsor’s stand, including sole ability to distribute promotional
materials and to engage with sought-after student body face to face and without constraint.
• Twenty (20) complimentary tickets to the Festival.
• Gobo Logo to be displayed at the Festival events. Logo and web link on website for 6-month
period. Exclusive promotion on website through web banners.
• Further logo and web-link placement on all emails and letters sent from Festival organizers.
• Back page advertisement in the Yuvaan souvenir.
• Promotion during fund raisers and pre-event promotions
• On stage promotional activity
• Banners at entrance
• Demonstration and surveys can be conducted
22• Selfie booth can be setup inside the campus as it will influence youth through social media
plateforms.
• 1000 likes on Facebook, promotion on Instagram, 200 5-star ratings with good reviews.
• 3-D holographic advertisement
• We have created an android app which will conduct surveys regarding brand popularity and
through data mining, will provide the sponsor with the data regarding their weak points, to
improve upon""",
          ),
          ScrollPage(
            header: "Gold Sponsor\n₹2,00,000",
            body: """As a GOLD sponsor, you will receive:
• One (1) free standing stall and one (1) premium stall for corporate material distribution.
• Corporate signage at Seven (7) youth festival events and one core platform events
(including audio, visual, logo and advertisement signage).
These events include: Battle of Bands, EDM, Celebrity Night, Fashion show,EGaming, Dance events
and many more. Exclusive logo and tag-line placement at Yuvaan.
• Selfie booth can be setup inside the campus as it will influence youth through social media
platforms.
• Exclusive right to erect a sponsor’s stand, including sole ability to distribute promotional
materials and to engage with sought-after student body face to face and without constraint.
• Ten (10) complimentary tickets to the Festival. • Gobo Logo to be displayed at the Festival
events. Logo and web link on website for 6-month period. Exclusive promotion on website
through web banners.
• Further logo and web-link placement on all emails and letters sent from Festival organizers.
• Back side of front cover advertisement in the Yuvaan souvenir.
• 3-D holographic advertisement
• We have created an android app which will conduct surveys regarding brand popularity and
through data mining, will provide the sponsor with the data regarding their weak points, to
improve upon.""",
          ),
          ScrollPage(
            header: "Event Sponsor\n₹1,00,000",
            body: """As a EVENT-PARTNER sponsor, you will receive:
• One (1) free standing stall for corporate material distribution.
• Corporate signage at Five (5) of the youth festival events (including audio, visual, logo and
advertisement signage). These events include: Battle of Bands, EDM, Celebrity Night, Fashion show,
E-Gaming, Dance events and many more. Exclusive logo and tag-line placement at Yuvaan.
• Selfie booth can be setup inside the campus as it will influence youth through social media
platforms.
• Exclusive right to erect a sponsor’s stand, including sole ability
• To distribute promotional materials and to engage with sought-after student body face-to-face and
without constraint.
• Five (5) complimentary tickets to the Festival.
• Logo and web link on website for 6-month period. Exclusive promotion on website through web
banners.
• Further logo and web-link placement on all emails and letters sent from
Festival organizers.
• Full page (color) advertisement in the Yuvaan souvenir.
• 3-D holographic advertisement
• We have created an android app which will conduct surveys regarding
brand popularity and through data mining, will provide the sponsor with
the data regarding their weak points, to improve upon.""",
          ),
          ScrollPage(
            header: "Domain Sponsor\n₹50,000",
            body: """As a Merit sponsor, you will receive:
• One (1) normal stall for corporate material distribution.\n
• Corporate signage at two (2) of the youth festival events (including audio, visual, logo and
advertisement signage). Choices include events from the technical, creative, management domain.\n
• Exclusive right to erect a sponsor’s stand, including sole ability to distribute promotional materi-
als and to engage with sought-after student body face to face and without constraint.
• Two (2) complimentary tickets to the Festival.
• Selfie booth can be setup inside the campus as it will influence youth through social media
platforms.
• Logo and web link on website for 6-month period. Exclusive promotion on website through web
banners.
• Quarter page (B/W) advertisement in the Yuvaan souvenir.""",
          ),
          ScrollPage(header: "Other ways of contribution", body: """The Yuvaan steering committee gladly welcomes donors of all sizes to
participate in the Festival sponsorship effort. Any potential benefits will vary
depending upon the details of the contribution. You can also make a monetary
contribution or provide goods or services in its place, in return for the
promotional benefits. You can also book a corporate booth for your material
promotion. Your assistance is not only valued, but needed, and we thank you for
your aid!""",)
        ],
      ),
    );
  }
}
