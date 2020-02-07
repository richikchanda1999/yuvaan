import 'package:flutter/material.dart';
import 'package:yuvaan/CommonLayoutWidget.dart';

class Run extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Yuvaan20());
  }
}

class Yuvaan20 extends StatefulWidget {
  @override
  _Yuvaan20State createState() => _Yuvaan20State();
}

class _Yuvaan20State extends State<Yuvaan20> {
  final Yuvaan20Pages = [
    CommonWidget(
        head: 'Message from the team',
        body:
            'Yuvaan for us is not only an event but a journey to define ourselves, find our paths and most of all, '
            'to take back something from it as a team. Our vision for this event was to lay down a platform where students, '
            'faculties, participants as well as sponsors could interact and lay down a foundation of a nurturing relationship for '
            'the future, stronger than just that of a paper. Last time we achieved that by getting together a team of dedicated, '
            'hardworking and smart students who made it their personal mission to make this festival a grand success, which it was. '
            'So we would like to thank every single team member of Yuvaan and volunteers to make this event an annual enigma.'),
    CommonPageView(
      head: 'Flagship Events',
      body: <Widget>[
        CommonWidget(
          head: 'Battle of Bands',
          body:
              '“The Moment one brings Competition into Music, the soul is Born Again!” '
              'Be a witness as talented musicians wage a musical war against each other '
              'for the title of the best at Yuvaan.',
        ),
        CommonWidget(
          head: 'Game On',
          body: 'Nothing brings gamers together like a bit of competition.'
              'Whether its CS:GO or Dota, the games engender amazing amounts of community and togetherness. '
              'Get ready for some mid-boggling gaming experience at Yuvaan.',
        ),
        CommonWidget(
          head: 'TechParade - A technical Exhibition',
          body:
              'Witness the fusion of cutting-edge technology with awe-inspiring creativity. '
              'Be a witness to various innovative projects which blur the distinction between technology, '
              'art and magic and give us an insight into what mind blowing changes can be brought about for the advancement of the society.'
              'To be blown away by many such innovations, come and witness the tech parade.',
        ),
        CommonWidget(
          head: 'Estilo',
          body: 'Fashion is an art, a creed, a peek into personality.'
              'Walk down the ramp with right mix of nesse and hit with the pictures to amaze the bystanders with your glamour. '
              'Do it with fashion or not at all. Be a witness to a glamorous fashion show judged by the top fashion designers of North East. '
              'Come here and showcase your talent in front of top fashion brands.',
        ),
        CommonWidget(
          head: 'CodeThrill 4.0',
          body:
              'Challenge yourself to eciently solve coding questions and showcase your'
              'talent. Be fast, be accurate, be ecient. Compete against the top coders of'
              'north east India and win amazing prizes.',
        ),
        CommonWidget(
          head: 'Through the lens',
          body:
              'This event is for all the shutterbugs to get a platform to swank'
              'your photography skills.',
        )
      ],
    ),
    CommonPageView(
      head: 'ProShow',
      body: <Widget>[
        CommonWidget(
          head: 'SABRINA TERENCE',
          body: 'Get ready to experience the monstrous'
              'electronic beats as this event is all set to take'
              'you on a cosmic venture.'
              'From Groovy tunes to Deadly Drops,'
              'experience the blast of beat and the pump of'
              'adrenaline in biggest pronite of Yuvaan. Grab'
              'your passes soon to see world’s top DJ’s set'
              'the arena on fire.',
        ),
        CommonWidget(
          head: 'GAURAV GUPTA',
          body: 'Get ready to break the monotony of your day. '
              'Yuvaan brings you a rare combination of wit, humor and sarcasm. '
              'Witness an event like none other and laugh your guts out to the'
              'humorous stories of country’s top comedians.',
        ),
        CommonWidget(
          head: 'AMANDEEP SINGH',
          body: 'Poetry is the language of the soul, feelings in form of word,'
              'an art like none other. Come and cherish stories we’ve all'
              'been a part of, at one point or the other, by the best'
              'storyteller’s of our country at Yuvaan.',
        ),
        CommonWidget(
          head: 'RHYTHM',
          body: ' Mr.Singh',
        ),
      ],
    ),
    CommonPageView(
      head: 'Events',
      body: <Widget>[
        CommonWidget(
          head: 'Techincal Events',
          body: 'Code-Thrill 2.0'
              'Hackathon 2.0'
              'TechParade 1.0'
              'R_Bots 2.0'
              'Circuit_Minds 2.0'
              'E-GAMING'
              'Need For Speed'
              'PUBG'
              'DOTA 2'
              'CS Global Offensive',
        ),
        CommonWidget(head: 'Cultural Events',body: 'Music'
          'Batttle of Bands',)
      ],
    ),
    CommonWidget(
      head: 'Festival Reach',
      body: '',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemBuilder: (context, index) {
          return Yuvaan20Pages[index];
        },
        itemCount: Yuvaan20Pages.length,
      ),
    );
  }
}
