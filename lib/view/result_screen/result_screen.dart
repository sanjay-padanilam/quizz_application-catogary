import 'package:flutter/material.dart';

import 'package:quizz_application/utils/colorconstants.dart';
import 'package:quizz_application/view/catagorypage/catagorypage.dart';
import 'package:quizz_application/view/questions_screen/questions_screen.dart';

class ResultScreen extends StatefulWidget {
  final int rightaswercount;

  final List<Map> eachlist;
  ResultScreen(
      {super.key, required this.rightaswercount, required this.eachlist});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  void initState() {
    calculatefn();
    super.initState();
  }

  int starcount = 0;
  calculatefn() {
    var percentage = widget.rightaswercount / widget.eachlist.length * 100;

    if (percentage >= 80) {
      starcount = 3;
    } else if (percentage <= 50) {
      starcount = 2;
    } else if (percentage >= 30) {
      starcount = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colorconstants.Scaffoldbgcolor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 70),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, right: 15, bottom: index == 1 ? 30 : 0),
                    child: Icon(
                      Icons.star,
                      size: index == 1 ? 80 : 50,
                      color: index < starcount
                          ? Colorconstants.goldenyellowcolor
                          : Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Congratulations",
                style: TextStyle(
                    color: Colorconstants.goldenyellowcolor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Text(
                    "Your score",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colorconstants.textColor),
                  ),
                  Text(
                    "${widget.rightaswercount}/${widget.eachlist.length}",
                    style: TextStyle(
                        color: Colorconstants.goldenyellowcolor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Select your Option'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Catagorypage(),
                                  ));
                            },
                            child: Text("go to catagorypage")),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuestionsScreen(
                                        Questionlist: widget.eachlist),
                                  ));
                            },
                            child: Text("section restart"))
                      ],
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colorconstants.textColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.restart_alt,
                        size: 30,
                        weight: 25,
                      ),
                      Text(
                        "Restart",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
