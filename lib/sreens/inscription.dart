import 'package:flutter/material.dart';
import 'package:school_project/components/text.dart';
import 'package:school_project/constant/colors.dart';

class Inscrits extends StatefulWidget {
  const Inscrits({Key? key}) : super(key: key);

  @override
  State<Inscrits> createState() => _InscritsState();
}

class _InscritsState extends State<Inscrits> {
  final List<Map<String, dynamic>> _inscrit = [
    {
      "id": 1,
      "nom": "Justin Kouakou",
      "desc": "Lc",
      "date": "2020/09/10",
      "annee": "2020-2021",
    },
  ];
  @override
  Widget build(BuildContext context) {
    // Exemple de données pour la liste
    List<String> items = List.generate(10, (index) => 'Item $index');

    return Scaffold(
      // body: Column(
      //   children: [
      //     ListView.builder(
      //       itemCount: items.length,
      //       itemBuilder: (context, index) {
      //         return ListTile(
      //           title: Text(
      //             items[index],
      //           ),
      //         );
      //       },
      //     ),
      //     // text
      //     textBold(
      //       text: 'Liste des incrits',
      //     ),
      //   ],
      // ),
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
              text: 'Fiche des inscription',
              textColor: primary,
            ),
            toolbarHeight: 100,
            flexibleSpace: const FlexibleSpaceBar(),
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
                    width: 100,
                    height: 50,
                    child: textSimple(text: 'Item $index'),
                  ),
                );
              },
              childCount: items.length,
            ),
          ),
          // const SizedBox(
          //   height: 10,
          // ),
          //
          // textBold(
          //   text: 'Liste inscription',
          //   textColor: primary,
          // ),
          // const SizedBox(
          //   height: 10,
          // ),
          SliverGrid(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                height: 50,
                width: 100,
                color: primary,
                child: Text('${_inscrit.elementAt(index)['nom']}'),
              );
            }),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, // Nombre d'éléments par ligne
              crossAxisSpacing: 8.0, // Espacement horizontal entre les éléments
              mainAxisSpacing: 8.0, // Espacement vertical entre les éléments
            ),
          ),
        ],
      ),
    );
  }
}
