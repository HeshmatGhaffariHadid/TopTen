import 'package:flutter/material.dart';
import 'package:top_ten/model/masjid.dart';
import '../widgets/clickable_card.dart';
import '../widgets/popup_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Masjid> masjids = [
    Masjid(
        name: 'Masjid al-Haram',
        description:
            'Masjid al-Haram is the Muslim\'s Qeblah which is located in Mecca, Saudi Arabia, center of earth, this great and holy masjid was build by prophet Ibrahim <PUH> and this masjid is the holiest masjid in Islam that surrounds the Kaaba, and is the focal point of Hajj pilgrimage'),
    Masjid(
        name: 'Masjid an-Nabawi',
        description:
            'Masjid an-Nabawi is the prophet Muhammad\'s masjid which is located in Madina, Saudi Arabia, second holiest masjid in Islam, houses the tomb of Prophet Muhammad <PUH>, prophet Abu Baker and prophet Omer and is a revered site for Muslims. It was center of islamic government in the past, now it\'s a very eye catching for all muslims around the world, people visit there at the time Hajj, and prey in that holy masjid.'),
    Masjid(
        name: 'Al-Aqsa Masjid',
        description:
            'Al-Aqsa masjid is located in Jerusalem, Palestine, third holiest masjid in Islam which was the first Qableh in Islam and the Meraj accident was happened their, unfortunately it\'s now under control of Jewish people, so this is our responsibility to take it back'),
    Masjid(
        name: 'Sheikh Zayed Grand Masjid',
        description:
            'Sheikh Zayed Grand masjid is located in Abu Dhabi,UAE, it is the largest masjid in UAE, known for it\;s beautiful architecture, including domes, minarets, and intricate design'),
    Masjid(
        name: 'Sultan Ahmad Masjid',
        description:
            'Sultan Ahmad masjid is popular as Blue Masjid in Istanbul, Turkey, it is a iconic masjid with stunning blue tiles, six minarets, and intricate calligraphy, blending Islam and Ottoman architecture'),
    Masjid(
        name: 'Hasan II Masjid',
        description:
            'Hasan II masjid is located in Casablanca, Morocco, one of the largest masjids in the world, overlooking the Atlantic Ocean, featuring intricate mosaics and a towering minaret'),
    Masjid(
        name: 'Sheikh Lotfollah Masjid',
        description:
            'Sheikh Lotfollah masjid is located in Isfahan, Iran, masterpiece od Persian architecture, known for it\'s stunning dome, intricate tile work, and beautiful iwans'),
    Masjid(
        name: 'Badshahi Masjid',
        description:
            'Badshahi masjid is located in Lahore, Pakistan, one of the largest masjid from the Mughal era, known for it\'s grandeur and historical significance'),
    Masjid(
        name: 'Quba Masjid',
        description:
            'Quba masjid is located in Madina city of Saudi Arabia, this is the oldest masjid in the Islam which was built by Prophet Muhammad <PUH>, and holds spiritual significance for muslims '),
    Masjid(
        name: 'Faisal Masjid',
        description:
            'Faisal masjid is located in Islamabad Pakistan, known for it\'s unique contemporary design inspired by Bedouin tents'),
  ];

  String imageName(int index) {
    String result = '';
    switch (index) {
      case 0:
        result = 'kaaba';
        break;
      case 1:
        result = 'nabawi-masjid';
        break;
      case 2:
        result = 'al-aqsa';
        break;
      case 3:
        result = 'shiekh zayed';
        break;
      case 4:
        result = 'sultan ahmad';
        break;
      case 5:
        result = 'hasan ii';
        break;
      case 6:
        result = 'lotfullah';
        break;
      case 7:
        result = 'badshahi ';
        break;
      case 8:
        result = 'quba';
        break;
      case 9:
        result = 'faisal';
      default:
        result = 'kaaba';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4f3222),
      appBar: AppBar(
        title: const Text(
          'Top Ten Masjids',
          style: TextStyle(
            letterSpacing: 1,
            color:Color(0xFFead5ca),
          ),
        ),
        backgroundColor: Colors.black38,
        actions: [
          PopUpMenu(),
        ],
      ),
      body: ListView.builder(
          itemCount: masjids.length,
          itemBuilder: (context, index) {
            final masjid = masjids[index];
            return ClickableCard(
                imageName: imageName(index),
                name: masjid.name,
                description: masjid.description);
          }),
    );
  }
}
