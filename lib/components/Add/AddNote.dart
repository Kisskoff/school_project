// ignore: file_names
// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:school_project/components/button.dart';
import 'package:school_project/components/dropdowEtudiant.dart';
import 'package:school_project/components/dropdown.dart';
import 'package:school_project/components/saisie.dart';
import 'package:school_project/components/text.dart';
import 'package:school_project/constant/colors.dart';

// ignore: camel_case_types
class AddNote extends StatefulWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Material(
        child: Container(
          padding: const EdgeInsets.all(15),
          width: 400,
          height: 350,
          color: blanc,
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  textSimple(
                    text: 'Nouvelle note',
                    align: TextAlign.start,
                    textColor: noir,
                    size: 15,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const DropItem(),
              const SizedBox(
                height: 15,
              ),
              const Item(),
              const SizedBox(
                height: 15,
              ),
              saisie(
                title: '',
                hint: 'Nouvelle note',
                keybord: TextInputType.number,
                iconPrefix: Icons.note,
                length: 1,
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 15,
              ),
              buttonCustom(
                tap: () {},
                text: '    Valider',
                textColor: blanc,
                color: primary,
                btncolor: blanc,
                iconColor: primary,
                width: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
