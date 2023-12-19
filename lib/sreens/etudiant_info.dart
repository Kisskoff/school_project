import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:school_project/components/Add/AddNote.dart';
import 'package:school_project/components/button.dart';
import 'package:school_project/components/container.dart';
import 'package:school_project/components/text.dart';
import 'package:school_project/constant/colors.dart';
import 'package:school_project/sreens/note.dart';

class EtudiantInfo extends StatefulWidget {
  const EtudiantInfo({Key? key}) : super(key: key);

  @override
  State<EtudiantInfo> createState() => _EtudiantInfoState();
}

class _EtudiantInfoState extends State<EtudiantInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.clear,
            color: blanc,
          ),
        ),
        title: textSimple(
          text: 'Profile',
          textColor: blanc,
          size: 18,
          align: TextAlign.center,
        ),
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              //Navigator.pop(context);
            },
            icon: Icon(
              Icons.more_vert,
              color: blanc,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: blanc50,
                  radius: 50,
                  backgroundImage:
                      const AssetImage('assets/images/graduated.png'),
                ),
                const SizedBox(
                  height: 10,
                ),
                textBold(
                  text: 'Etudiant 1',
                  textColor: blanc,
                  size: 20,
                  align: TextAlign.center,
                ),
                const SizedBox(height: 10),
                textSimple(
                  text: 'Etudiant',
                  textColor: blanc,
                  size: 16,
                  align: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                // boiton ajout note
                buttonCustom(
                  text: 'Ajout de note',
                  textColor: primary,
                  color: blanc,
                  btncolor: primary,
                  iconColor: blanc,
                  icon: Icons.add,
                  tap: () {
                    showAlignedDialog(
                      context: context,
                      builder: (context) => const AddNote(),
                    );
                  },
                ),
                const SizedBox(
                  height: 35,
                ),
                // bord rang moyenne
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // cours
                    Column(
                      children: [
                        textBold(
                          text: '10',
                          textColor: blanc,
                        ),
                        const SizedBox(height: 8),
                        textSimple(
                          text: 'Cours',
                          textColor: blanc,
                        )
                      ],
                    ),
                    Container(
                      width: 2,
                      height: 30,
                      color: blanc,
                    ),
                    //moyenne
                    Column(
                      children: [
                        textBold(
                          text: '15',
                          textColor: blanc,
                        ),
                        const SizedBox(height: 8),
                        textSimple(
                          text: 'Moyenne',
                          textColor: blanc,
                        )
                      ],
                    ),
                    Container(
                      width: 2,
                      height: 30,
                      color: blanc,
                    ),
                    // rang
                    Column(
                      children: [
                        textBold(
                          text: '09',
                          textColor: blanc,
                        ),
                        const SizedBox(height: 8),
                        textSimple(
                          text: 'Rang',
                          textColor: blanc,
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                ////
                // Modification
                Column(
                  children: [
                    // modifier
                    profil(
                        text: 'Modifier le compte',
                        hauteur: 80,
                        color: blanc,
                        icon: Icons.person,
                        tap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => const UpdateCompte(),
                          );
                        }
                        //size: 100,
                        ),
                    const SizedBox(
                      height: 20,
                    ),
                    // resultat
                    profil(
                        text: 'Resultats de fin d\'année',
                        hauteur: 80,
                        color: blanc,
                        icon: Icons.personal_injury,
                        tap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const LesNotes()),
                          );
                        }
                        //size: 100,
                        ),
                    const SizedBox(
                      height: 20,
                    ),
                    // rang
                    profil(
                        text: 'Rang',
                        hauteur: 80,
                        color: blanc,
                        icon: Icons.grade_rounded,
                        tap: () {}
                        //size: 100,
                        ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UpdateCompte extends StatelessWidget {
  const UpdateCompte({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: 400,
        height: 300,
        padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
        decoration: BoxDecoration(
          color: blanc,
          // borderRadius: const BorderRadius.only(
          //   topLeft: Radius.circular(20),
          //   topRight: Radius.circular(20),
          // ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textSimple(
                  text: 'Modifier le compte',
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.clear,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: noir,
            ),
            const SizedBox(
              height: 10,
            ),
            //nom

            const SizedBox(
              height: 10,
            ),
            // prenom
            const SizedBox(
              height: 10,
            ),

            /// date
            // const SizedBox(
            //   height: 20,
            // ),
          ],
        ),
      ),
    );
  }
}
