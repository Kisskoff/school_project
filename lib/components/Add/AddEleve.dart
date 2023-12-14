// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:school_project/components/button.dart';
import 'package:school_project/components/saisie.dart';
import 'package:school_project/components/text.dart';
import 'package:school_project/constant/colors.dart';

class AjoutEleve extends StatefulWidget {
  const AjoutEleve({Key? key}) : super(key: key);

  @override
  State<AjoutEleve> createState() => _AjoutEleveState();
}

class _AjoutEleveState extends State<AjoutEleve> {
  TextEditingController nomController = TextEditingController();
  TextEditingController prenomController = TextEditingController();
  TextEditingController naissController = TextEditingController();

  // date time
  DateTime datetime = DateTime(2023, 12, 17, 15, 50);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: primary,
          ),
        ),
        toolbarHeight: 70,
        titleSpacing: 0,
        backgroundColor: Colors.transparent,
        //title: textSimple(text: ""),
        elevation: 0,
      ),
      backgroundColor: blanc,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              textBold(
                text: 'NOUVEAU ETUDIANT',
                textColor: primary,
                size: 20,
              ),
              const SizedBox(
                height: 60,
              ),
              // saisie
              // nom
              saisie(
                  title: '',
                  hint: 'Nom de l\'etudiant',
                  controller: nomController
                  //su
                  ),
              const SizedBox(
                height: 15,
              ),
              // prenom
              saisie(
                title: '',
                hint: 'Prénoms de l\'etudiant',
                controller: prenomController,
                iconPrefix: Icons.person_pin_circle_sharp,
                //su
              ),
              const SizedBox(
                height: 15,
              ),
              // date de naissance
              dateField(
                  title: '${datetime.day}/${datetime.month}/${datetime.year}',
                  hint: '${datetime.day}/${datetime.month}/${datetime.year}',
                  //hint: 'Date de naissance',
                  controller: naissController,
                  tap: () async {
                    final date = await pickDate();
                    debugPrint('$datetime');
                    if (date == null) return; // cancel

                    final newDateTime = DateTime(
                      date.year,
                      date.month,
                      date.day,
                      date.hour,
                      date.minute,
                    );

                    setState(() {
                      datetime = newDateTime;
                    });
                  }),

              const SizedBox(
                height: 60,
              ),
              // bouton de validation
              buttonCustom(
                  color: primary,
                  text: '    Valider',
                  textColor: blanc,
                  iconColor: primary,
                  btncolor: blanc,
                  tap: () {}),
            ],
          ),
        ),
      ),
    );
  }

  ///
  Future<DateTime?> pickDate() => showDatePicker(
        context: context,
        initialDate: datetime,
        firstDate: DateTime(2005),
        lastDate: DateTime(2100),
      );
}
