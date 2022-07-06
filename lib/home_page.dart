import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double heigth = 60;

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home Page'),
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          GestureDetector(
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              child: const Icon(
                Icons.notifications_rounded,
                color: Colors.white,
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              child: Image.asset(
                'assets/images/profile_img.png',
                width: 30,
                height: 30,
              ),
            ),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            // bottomLeft: Radius.circular(50)
          ),
        ),
        child: Column(
          //
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 20, top: 20),
              child: const Text(
                'Hiii, Olivia',
                style: TextStyle(color: Color(0xff363636), fontSize: 25),
              ),
            ),
            Container(
              // Container for welcome back text
              margin: const EdgeInsets.only(left: 20, top: 5),
              child: const Text(
                'Welcome Back',
                style: TextStyle(color: Color(0xff363636), fontSize: 30),
              ),
            ),
            Container(
              // Container for the search bar
              height: heigth, // just 60
              width: size.width, // mediaQuery.size.width,
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x14000000),
                      offset: Offset(0, 10),
                      blurRadius: 15,
                      spreadRadius: 0,
                    )
                  ]),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Container(
                      margin: EdgeInsets.only(left: 15),
                      child: const TextField(
                        autofocus: false,
                        maxLines: 1,
                        style: const TextStyle(
                            color: Color(0xff187163), fontSize: 20),
                        decoration: InputDecoration(
                            labelText: 'Search',
                            border: InputBorder.none,
                            icon: Icon(Icons.search)),
                      ),
                    ),
                  ),
                  // Expanded 2
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // text of cateogry
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              width: size.width,
              child: Stack(
                fit: StackFit.loose,
                children: [
                  Container(
                    child: const Text('Category',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black)),
                  ),
                  // text of see all
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'See all',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 23,
                            fontFamily: 'Roboto',
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // margin: const EdgeInsets.only(top: 20, left: 20),
              height: 120,
              margin: EdgeInsets.only(top: 20, left: 20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  listOfCategories('assets/images/tooth.png', 'Tooth', 'many'),
                  listOfCategories('assets/images/tooth.png', 'Tooth', 'many'),
                  listOfCategories('assets/images/tooth.png', 'Tooth', 'many'),
                  listOfCategories('assets/images/tooth.png', 'Tooth', 'many'),
                  listOfCategories('assets/images/tooth.png', 'Tooth', 'many'),
                  listOfCategories('assets/images/tooth.png', 'Tooth', 'many'),
                  listOfCategories('assets/images/tooth.png', 'Tooth', 'many'),

                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              width: size.width,
              child: Stack(
                fit: StackFit.loose,
                children: [
                  Container(
                    child: const Text('Top Rated',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black)),
                  ),
                  // text of see all
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'See all',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 23,
                            fontFamily: 'Roboto',
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: Container(
              child: ListView(
                children: [
                demoTopRateDr('assets/images/dr_1.png', 'Dr. Flied Melsik', 'Doctor', 'good'),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget listOfCategories(String imgName, String nameText, String ammountDr) {
    // String name = 'assets/images/tooth.png';
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(right: 7),
      width: 100,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Image.asset(imgName),
          ),
          Container(
            margin: EdgeInsets.only(top: 2),
            child: Text(
              nameText,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  fontSize: 13),
            ),
          ),
          Container(
            padding: EdgeInsets.all(3),
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: Color(0xffd9fffa).withOpacity(.01)
            ),
            child: Text(ammountDr, style: TextStyle(fontSize: 13, color: Colors.white),),
          ),
        ],
      ),
    );
  }

  Widget demoTopRateDr(String image, String name, String speciality, String rating ) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        print('clicked!');
      },
      child: Container(
        height: 99,
        margin: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20),
              height: 90,
              width: 50,
              child: Image.asset(image),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 10),
                    child: Text(name, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}
