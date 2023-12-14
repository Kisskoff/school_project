// ignore: file_names
// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:school_project/components/button.dart';
import 'package:school_project/components/saisie.dart';
import 'package:school_project/components/text.dart';
import 'package:school_project/constant/colors.dart';

// ignore: camel_case_types
class Add_Matiere extends StatefulWidget {
  const Add_Matiere({Key? key}) : super(key: key);

  @override
  State<Add_Matiere> createState() => _AddMatiereState();
}

class _AddMatiereState extends State<Add_Matiere> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Material(
        child: Container(
          padding: const EdgeInsets.all(15),
          width: 300,
          height: 200,
          color: blanc,
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  textSimple(
                    text: 'Nouvelle matiere',
                    align: TextAlign.start,
                    textColor: noir,
                    size: 15,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              saisie(
                title: '',
                hint: 'Nouvelle matiere',
              ),
              const SizedBox(
                height: 15,
              ),
              buttonCustom(
                tap: () {},
                text: 'Valider',
                textColor: blanc,
                color: primary,
                btncolor: blanc,
                iconColor: primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
