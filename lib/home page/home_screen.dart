import 'package:flutter/material.dart';
class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int count =0;
  List qaList = [
    "INDIA courancy is DOLLAR",
    "INDIA CAPITAL is MUMBAI",
    "INDIA REPUBLIC on 1947",
    "GUJARAT is a STATE of INDIA",
    "SURAT is a CLEANEST CITY in GUJARAT",
  ];
  List ansList = [
    false,
    false,
    true,
    true,
  ];
  List userAnsList = [""];
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/home_screen_bg.jpg"),
                fit: BoxFit.fill,
                opacity: 10,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 200,
              ),
              SizedBox(
                width: 600,
              ),
              Container(
                width: 200,
                child: Center(
                  child: Text(
                    "${qaList[i]}",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 300,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(
                    () {
                      if (i < qaList.length-1) {
                        i++;
                        userAnsList.add(true);
                        print("$userAnsList");
                      }
                    },
                  );
                },
                child: Text(
                  "✔TRUE✔",
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  setState(
                        () {
                      if (i < qaList.length-1) {
                        i++;
                        userAnsList.add(false);
                        print("$userAnsList");
                      }
                    },
                  );
                },
                child: Text(
                  "❌FALSE❌",
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 25,
                  ),
                ),
              ),
             SizedBox(height: 20,),
             ElevatedButton(onPressed: () {
               Navigator.pushNamed(context, 'finalScreen',arguments: count);
               answer();
             }, child: Text("GET ANSWER"),),
            ],
          ),
        ],
      ),
    );
  }
  void answer()
  {
    for(i=0;i<5;i++) {
      if (ansList[i] == userAnsList[i]) {
        setState(() {
          count++;
          print(count);
        });
      }
    }
    }
}
// if(ansList[i]==userAnsList[i])
// {
// count++;
// print(count);
// }
//