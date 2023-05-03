import 'package:flutter/material.dart';

class dashboard extends StatelessWidget {
  const dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 39, 98, 201),
            elevation: 0,
            title: Row(
              children: [
                SizedBox(width: 70),
                const Text("TODOs"),
                SizedBox(width: 90),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("images/myphoto.png"),
                        fit: BoxFit.fill),
                  ),
                ),
              ],
            )),
        drawer: Drawer(
          backgroundColor: Colors.white,
        ),
        body: Stack(
          children: [
            Positioned(
              top: 12,
              left: 50,
              child: Text('Categories',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Positioned(
              top: 40,
              left: 15,
              right: 15,
              child: SingleChildScrollView(
                child: Container(
                  //height: MediaQuery.of(context).size.height - 150,
                  width: MediaQuery.of(context).size.width * 1,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 39, 98, 201),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )),
                  child: Column(
                    children: [
                      ListCard("images/myphoto.png", "Personal", "All", () {}),
                      SizedBox(height: 15),
                      ListCard("images/books.jpg", "Academics", "All", () {}),
                      SizedBox(height: 15),
                      ListCard("images/skills.png", "skills", "All", () {}),
                      SizedBox(height: 15),
                      ListCard("images/sun.png", "Something", "All", () {}),
                      SizedBox(height: 15),
                      ListCard("images/planner.png", "Nothing", "All", () {}),
                      SizedBox(height: 15),
                      ListCard("images/planner.png", "Nothing", "All", () {}),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Widget ListCard(
      String imageUrl, String title, String subtitle, Function onTap) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: SizedBox(
          height: 100,
          width: 500,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 80,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                            imageUrl,
                          ),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
                // this is for the title and subtitle
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0.0, left: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          subtitle,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 39, 98, 201),
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(flex: 1, child: Icon(Icons.more_vert))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
