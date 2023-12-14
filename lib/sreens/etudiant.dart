import 'package:flutter/material.dart';
import 'package:school_project/components/container.dart';
import 'package:school_project/components/saisie.dart';
import 'package:school_project/constant/colors.dart';
import 'package:school_project/sreens/etudiant_info.dart';

class Etudiant extends StatefulWidget {
  const Etudiant({Key? key}) : super(key: key);

  @override
  State<Etudiant> createState() => _EtudiantState();
}

class _EtudiantState extends State<Etudiant> {
  TextEditingController searchController = TextEditingController();

  final List<Map> myproducts = List.generate(
      10,
      (index) => {
            'id': index,
            "name": "product $index",
            "desc ": " ceci est une description",
            "prix": "2000 f",
            "imagePath": "assets/skirt.png",
          }).toList();
  ///////
  ///final
  final List<Map<String, dynamic>> gridMap = [
    {
      "id": 1,
      "name": "Etudiant 1",
      "desc": "ceci est une description",
      'prix': "20 000 F",
      "imgPath": ""
    },
    {
      "id": 2,
      "name": "Etudiant 2",
      "desc": "ceci est une description du produit ...",
      'prix': "12 000 F",
      "imgPath": ""
    },
    {
      "id": 3,
      "name": "Etudiant 3",
      "desc": "ceci est une description",
      'prix': "2000 F",
      "imgPath": ''
    },
    {
      "id": 4,
      "name": "Etudiant 4",
      "desc": "ceci est une description",
      'prix': "2000 F",
      "imgPath": ""
    },
    {
      "id": 5,
      "name": "Etudiant 5",
      "desc": "ceci est une description",
      'prix': "2000 F",
      "imgPath": ""
    },
    {
      "id": 6,
      "name": "Etudiant 6",
      "desc": "ceci est une description",
      'prix': "2000 F",
      "imgPath": ""
    },
    {
      "id": 7,
      "name": "Walden by Camper",
      "desc": "ceci est une description",
      'prix': "2000 F",
      "imgPath": ""
    },
    {
      "id": 8,
      "name": "Etudiant 8",
      "desc": "ceci est une description",
      'prix': "2000 F",
      "imgPath": ""
    },
    {
      "id": 9,
      "name": "Etudiant 9",
      "desc": "ceci est une description",
      'prix': "2000 F",
      "imgPath": ""
    },
    {
      "id": 10,
      "name": "Etudiant 10",
      "desc": "ceci est une description",
      'prix': "2000 F",
      "imgPath": ""
    },
    {
      "id": 11,
      "name": "Etudiant 11",
      "desc":
          "Summer New Fashion Urban Short-sleeved Linen Cardigan Shirt Men's Printed Casual Comfortable Style Flower Shirt PL6-2XL",
      'prix': "2000 F",
      "imgPath": ""
    },
    {
      "id": 12,
      "name": "Etudiant 12",
      "desc":
          "dLight Grey Casual Collar Knitted Fabric Plain Track Shorts Embellished Medium Stretch Women Clothing",
      'prix': "2000 F",
      "imgPath": ""
    },
    {
      "id": 13,
      "name": "Girls Women High Waisted Plain Pleated",
      "desc":
          "100% Polyester Zipper closure Hand Wash Only Material: polyester(high quality, no stretchy) Pleated style, skater design, mini length, uniform/ school skirt solid",
      'prix': "2000 F",
    },
    {
      "id": 14,
      "name": "All Star by kisskoff",
      "desc":
          "100% Polyester Zipper closure Hand Wash Only Material: polyester(high quality, no stretchy) Pleated style, skater design, mini length, uniform/ school skirt solid",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        titleSpacing: 0,
        backgroundColor: Colors.transparent,
        //title: textSimple(text: "Liste des etudiants"),
        title: searchTextField(
          title: '',
          hint: 'Rechercher un etudiant',
          tap: () {},
        ),
        elevation: 0,
      ),
      backgroundColor: blanc,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              //search
              searchTextField(
                title: '',
                hint: 'Rechercher un etudiant',
                tap: () {},
              ),

              // categorie
              //
              const SizedBox(
                height: 10,
              ),
              // popular
              // // // listview
              // Padding(
              //   padding: const EdgeInsets.all(20),
              //   child: ListView.builder(
              //     itemCount: gridMap.length,
              //     itemBuilder: (_, index) {
              //       return Container(
              //         width: double.infinity,
              //         height: 200,
              //         color: Colors.amber,
              //       );
              //     },
              //   ),
              // ),
              const SizedBox(
                height: 15,
              ),

              // gridview
              // title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '  listing'.toUpperCase(),
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        fontFamily: AutofillHints.familyName),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.filter_list,
                      color: primary,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: gridMap.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      mainAxisExtent: 200,
                    ),
                    itemBuilder: (_, index) {
                      return etudiantComponent(
                        colorFond: blanc,
                        color: violet,
                        text:
                            "${gridMap.elementAt(index)['name']}".toUpperCase(),
                        textColor: noir,
                        size: 200,
                        textDesc: "${gridMap.elementAt(index)['desc']}",
                        prix: '${gridMap.elementAt(index)['prix']}',
                        imgfond: '${gridMap.elementAt(index)['imgPath']}',
                        tap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const EtudiantInfo()),
                          );
                        },
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
