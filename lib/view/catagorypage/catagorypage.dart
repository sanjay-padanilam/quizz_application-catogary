import 'package:flutter/material.dart';
import 'package:quizz_application/Dummydb.dart';
import 'package:quizz_application/utils/colorconstants.dart';
import 'package:quizz_application/view/questions_screen/questions_screen.dart';

class Catagorypage extends StatelessWidget {
  const Catagorypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images.pexels.com/photos/2767814/pexels-photo-2767814.jpeg?auto=compress&cs=tinysrgb&w=600"))),
        height: double.maxFinite,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                  child: Container(
                    child: Center(
                        child: Text(
                      "sports",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    )),
                    decoration: BoxDecoration(
                        color: Colorconstants.goldenyellowcolor,
                        borderRadius: BorderRadius.circular(20)),
                    height: 100,
                    width: 100,
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
                  child: Container(
                    child: Center(
                        child: Text(
                      "Biology",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    )),
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colorconstants.goldenyellowcolor,
                        borderRadius: BorderRadius.circular(20)),
                    width: 100,
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
                  child: Container(
                    child: Center(
                        child: Text(
                      "chemistry",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    )),
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colorconstants.goldenyellowcolor,
                        borderRadius: BorderRadius.circular(20)),
                    width: 100,
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
                  child: Container(
                    child: Center(
                        child: Text(
                      "maths",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    )),
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colorconstants.goldenyellowcolor,
                        borderRadius: BorderRadius.circular(20)),
                    width: 100,
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
                  child: Container(
                    child: Center(
                        child: Text(
                      "physics",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    )),
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colorconstants.goldenyellowcolor,
                        borderRadius: BorderRadius.circular(20)),
                    width: 100,
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
                  child: Container(
                    child: Center(
                        child: Text(
                      "gk",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    )),
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colorconstants.goldenyellowcolor,
                        borderRadius: BorderRadius.circular(20)),
                    width: 100,
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
