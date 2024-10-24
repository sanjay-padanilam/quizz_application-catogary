import 'package:flutter/material.dart';
import 'package:quizz_application/Dummydb.dart';
import 'package:quizz_application/utils/colorconstants.dart';
import 'package:quizz_application/view/questions_screen/questions_screen.dart';

class Catagorypage extends StatelessWidget {
  const Catagorypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(),
        height: double.maxFinite,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 25),
              child: Text(
                "Choose your catagory",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colorconstants.wronganswerColor),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuestionsScreen(
                            Questionlist: Dummydb.sportslist,
                          ),
                        ));
                  },
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdn-icons-png.flaticon.com/256/8799/8799062.png")),
                            borderRadius: BorderRadius.circular(20)),
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        "sports",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colorconstants.wronganswerColor),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuestionsScreen(
                            Questionlist: Dummydb.Biologylist,
                          ),
                        ));
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdn-icons-png.flaticon.com/128/902/902493.png")),
                            borderRadius: BorderRadius.circular(20)),
                        width: 100,
                      ),
                      Text(
                        "Biology",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colorconstants.wronganswerColor),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuestionsScreen(
                          Questionlist: Dummydb.Chemistry,
                        ),
                      )),
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdn-icons-png.flaticon.com/128/2158/2158320.png")),
                            borderRadius: BorderRadius.circular(20)),
                        width: 100,
                      ),
                      Text(
                        "Chemistry",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colorconstants.wronganswerColor),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuestionsScreen(
                          Questionlist: Dummydb.mathslist,
                        ),
                      )),
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdn-icons-png.flaticon.com/128/3771/3771278.png")),
                            borderRadius: BorderRadius.circular(20)),
                        width: 100,
                      ),
                      Text(
                        "Mathematics",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colorconstants.wronganswerColor),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuestionsScreen(
                          Questionlist: Dummydb.physicslist,
                        ),
                      )),
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdn-icons-png.flaticon.com/128/3463/3463594.png")),
                            borderRadius: BorderRadius.circular(20)),
                        width: 100,
                      ),
                      Text(
                        "Physics",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colorconstants.wronganswerColor),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuestionsScreen(
                          Questionlist: Dummydb.gklist,
                        ),
                      )),
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdn-icons-png.flaticon.com/128/13565/13565345.png")),
                            borderRadius: BorderRadius.circular(20)),
                        width: 100,
                      ),
                      Text(
                        "GK",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colorconstants.wronganswerColor),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
