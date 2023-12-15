import 'package:flutter/material.dart';
import 'package:school_project/components/text.dart';
import 'package:school_project/constant/colors.dart';

class NotifPage extends StatefulWidget {
  const NotifPage({Key? key}) : super(key: key);

  @override
  State<NotifPage> createState() => _NotifPageState();
}

class _NotifPageState extends State<NotifPage> {
  final List<Map<String, dynamic>> notif = [
    {
      "id": 1,
      "libelle": "Informatique",
      "desc":
          "dispositifs électriques-électroniques : des systèmes embarqués, des ordinateurs, des robots, des automates, etc",
    },
    {
      "id": 1,
      "libelle": "Informatique",
      "desc":
          "dispositifs électriques-électroniques : des systèmes embarqués, des ordinateurs, des robots, des automates, etc",
    },
    {
      "id": 1,
      "libelle": "Informatique",
      "desc":
          "dispositifs électriques-électroniques : des systèmes embarqués, des ordinateurs, des robots, des automates, etc",
    },
    {
      "id": 1,
      "libelle": "Informatique",
      "desc":
          "dispositifs électriques-électroniques : des systèmes embarqués, des ordinateurs, des robots, des automates, etc",
    },
    {
      "id": 1,
      "libelle": "Informatique",
      "desc":
          "dispositifs électriques-électroniques : des systèmes embarqués, des ordinateurs, des robots, des automates, etc",
    },
    {
      "id": 1,
      "libelle": "Informatique",
      "desc":
          "dispositifs électriques-électroniques : des systèmes embarqués, des ordinateurs, des robots, des automates, etc",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            titleSpacing: 4,
            pinned: false,
            // floating: true,
            // snap: true,
            // stretch: true,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: primary,
              ),
            ),
            title: textBold(
              text: 'Notification',
              textColor: primary,
            ),
            toolbarHeight: 100,
            flexibleSpace: const FlexibleSpaceBar(

                // background: Image.asset(
                //   "assets/images/white3.jpg",
                //   fit: BoxFit.cover,
                // ),
                ),
            backgroundColor: blanc50,
            actions: [
              IconButton(
                onPressed: () {
                  // showAlignedDialog(
                  //   context: context,
                  //   builder: ((context) => const Add_Matiere()),
                  // );
                },
                icon: Icon(
                  Icons.messenger_outline,
                  size: 30,
                  color: primary,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          // menu
          //
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    decoration: BoxDecoration(
                      color: gris2,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: double.infinity,
                    height: 100,
                    child: ListTile(
                      leading: Icon(
                        Icons.notifications_active,
                        size: 35,
                        color: primary,
                      ),
                      title: textSimple(
                        text: '${notif.elementAt(index)['libelle']}'
                            .toUpperCase(),
                        size: 18,
                        textColor: noir,
                      ),
                      subtitle:
                          textSimple(text: '${notif.elementAt(index)['desc']}'),
                    ),
                  ),
                );
              },
              childCount: notif.length,
            ),
          ),
        ],
      ),
    );
  }
}
