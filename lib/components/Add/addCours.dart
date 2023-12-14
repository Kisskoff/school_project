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
          width: 400,
          height: 340,
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
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: blanc,
                  border: Border.all(
                    color: primary,
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                ),
                child: TextFormField(
                  //controller: controller,
                  maxLines: 5,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    label: Text('Description'),
                    //hintText: 'Description',
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    color: noir,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
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
                width: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
