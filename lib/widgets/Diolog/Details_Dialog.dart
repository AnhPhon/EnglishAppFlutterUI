import 'package:englishapp/widgets/Diolog/Skills_Text_Dialog.dart';
import 'package:englishapp/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class DetailsDialog extends StatefulWidget {
  const DetailsDialog({
    Key? key,
    required this.imageDialog,
    required this.labelDialog,
    required this.authorDiolog,
  }) : super(key: key);

  final String imageDialog;
  final String labelDialog;
  final String authorDiolog;

  @override
  _DetailsDialogState createState() => _DetailsDialogState();
}

class _DetailsDialogState extends State<DetailsDialog> {
  Icon changeFavoriteIcon = new Icon(Icons.favorite_border_outlined);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 250,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Image.asset(widget.imageDialog, width: 120),
          ),
          Positioned(
            right: 35,
            top: 45,
            child: Column(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    setState(
                      () {
                        if (this.changeFavoriteIcon.icon ==
                            Icons.favorite_border_outlined) {
                          this.changeFavoriteIcon =
                              new Icon(Icons.favorite, color: Colors.red);
                        } else {
                          this.changeFavoriteIcon = new Icon(
                            Icons.favorite_border_outlined,
                          );
                        }
                      },
                    );
                  },
                  icon: changeFavoriteIcon,
                ),
                BookRating(
                  score: 4.5,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 0,
            left: 0,
            child: Container(
              height: 160,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    widget.labelDialog,
                    style: TextStyle(
                      color: kBlackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.authorDiolog,
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SkillsTextDialog(
                    skillsText: 'Skill 1: ',
                    textdetails: 'Reading',
                  ),
                  SkillsTextDialog(
                    skillsText: 'Skill 2: ',
                    textdetails: 'Writing',
                  ),
                  SkillsTextDialog(
                    skillsText: 'Skill 4: ',
                    textdetails: 'Speaking',
                  ),
                  SkillsTextDialog(
                    skillsText: 'Skill 5: ',
                    textdetails: 'Listening',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
