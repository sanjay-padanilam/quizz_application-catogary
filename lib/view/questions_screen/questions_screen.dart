import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:lottie/lottie.dart';

import 'package:quizz_application/utils/animation_constants.dart';
import 'package:quizz_application/utils/colorconstants.dart';
import 'package:quizz_application/view/result_screen/result_screen.dart';

class QuestionsScreen extends StatefulWidget {
  final List<Map> Questionlist;

  QuestionsScreen({super.key, required this.Questionlist});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int Questionindex = 0; //index of questionlist for big container
  int? selectedoption; //index of clicked option
  int rightanswercount = 0;
  double currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colorconstants.Scaffoldbgcolor,
        appBar: AppBar(
          backgroundColor: Colorconstants.Scaffoldbgcolor,
          actions: [
            Text(
              "${Questionindex + 1}/${widget.Questionlist.length}",
              style: TextStyle(color: Colorconstants.textColor),
            ),
            SizedBox(
              width: 10,
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size(100, 100),
            child: FAProgressBar(
                maxValue: widget.Questionlist.length.toDouble(),
                size: 20,
                backgroundColor: Colors.grey,
                currentValue: currentValue),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colorconstants.Questionsbgcolor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: selectedoption ==
                          widget.Questionlist[Questionindex]["answer"]
                      ? Stack(
                          children: [
                            Lottie.asset(AnimationConstants.rightanimation),
                            Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  widget.Questionlist[Questionindex]
                                      ["question"],
                                  style: TextStyle(
                                      color: Colorconstants.textColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                          ],
                        )
                      : Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              widget.Questionlist[Questionindex]["question"],
                              style: TextStyle(
                                  color: Colorconstants.textColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                ),
              ),
              Column(
                children: List.generate(
                  4,
                  (optionIndex) => Padding(
                    //optionindex if for index of option list in dummy db
                    padding: const EdgeInsets.only(top: 20),
                    child: InkWell(
                      onTap: () {
                        if (selectedoption == null) {
                          selectedoption = optionIndex;
                          print(selectedoption);

                          setState(() {});
                          if (selectedoption ==
                              widget.Questionlist[Questionindex]["answer"]) {
                            rightanswercount++;
                          }
                        }
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: getcolor(optionIndex)),
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.Questionlist[Questionindex]["options"]
                                  [optionIndex],
                              style: TextStyle(
                                  color: Colorconstants.textColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                            Icon(
                              Icons.circle_outlined,
                              color: Colorconstants.textColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              selectedoption == null
                  ? SizedBox()
                  : InkWell(
                      onTap: () {
                        if (Questionindex < widget.Questionlist.length - 1) {
                          Questionindex++;
                          currentValue++;

                          selectedoption = null;
                        } else {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ResultScreen(
                                    eachlist: widget.Questionlist,
                                    rightaswercount: rightanswercount),
                              ));
                        }
                        setState(() {});
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colorconstants.textColor),
                        child: Center(
                          child: Text("Next"),
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Color getcolor(int currentoptionindex) {
    //currrent option index optionindex
    if (selectedoption != null &&
        currentoptionindex == widget.Questionlist[Questionindex]["answer"]) {
      return Colorconstants.rightanserColor;
    }
    if (selectedoption == currentoptionindex) {
      if (selectedoption == widget.Questionlist[Questionindex]["answer"]) {
        return Colorconstants.rightanserColor;
      } else {
        return Colorconstants.wronganswerColor;
      }
    } else
      return Colorconstants.textColor;
  }
}
