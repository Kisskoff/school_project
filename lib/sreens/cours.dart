import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:school_project/components/Add/addCours.dart';
import 'package:school_project/components/text.dart';
import 'package:school_project/constant/colors.dart';

class NosCours extends StatefulWidget {
  const NosCours({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<NosCours> createState() => _NosCoursState();
}

class _NosCoursState extends State<NosCours> {
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
              icon: const Icon(Icons.arrow_back),
            ),
            title: textBold(
              text: widget.title,
              textColor: blanc,
            ),
            toolbarHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/white3.jpg",
                fit: BoxFit.cover,
              ),
            ),
            backgroundColor: primary,
            actions: [
              IconButton(
                onPressed: () {
                  showAlignedDialog(
                    context: context,
                    builder: ((context) => const Add_Matiere()),
                  );
                },
                icon: const Icon(
                  Icons.add_circle_sharp,
                  size: 30,
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
                return Container(
                  width: double.infinity,
                  color: blanc,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 20, 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: GestureDetector(
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              width: double.infinity,
                              height: 70,
                              color: primary,
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: blanc50,
                                  child: Image.asset(
                                      "assets/images/programming.png"),
                                ),
                                title: textSimple(
                                  text: 'COURS DE  ${1 + index}',
                                  size: 20,
                                  textColor: blanc,
                                ),
                                trailing: Icon(
                                  Icons.chevron_right_outlined,
                                  color: blanc,
                                ),
                              ),
                            ),
                            onTap: () {
                              //print('Vous avez cliquez sur  ${1 + index}');
                              // showAlignedDialog(
                              //   context: context,
                              //   builder: ((context) => const MessageView()),
                              // );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
