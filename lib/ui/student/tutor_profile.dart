import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Tutor extends StatefulWidget {
  @override
  _TutorState createState() => _TutorState();
}

class _TutorState extends State<Tutor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded),
          onPressed: () {},
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-1.0, 0.0),
              end: Alignment(1.0, 0.0),
              colors: [
                const Color(0xFF6aa6f8),
                const Color(0xFF1a60be),
              ], // whitish to gray
            ),
          ),
        ),
        // title: Text('Title'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-1.0, 0.0),
              end: Alignment(1.0, 0.0),
              colors: [
                const Color(0xFF6aa6f8),
                const Color(0xFF1a60be),
              ], // whitish to gray
            ),
          ),
          alignment: Alignment.center, // where to position the child
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                    color: Colors.white),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 40, 10, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MaterialButton(
                            splashColor: Colors.white,
                            onPressed: () {},
                            color: Color(0xFF4894e9),
                            textColor: Colors.white,
                            child: Icon(
                              Icons.phone,
                              size: 25,
                            ),
                            padding: EdgeInsets.all(16),
                            shape: CircleBorder(),
                          ),
                          Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                      fit: BoxFit.contain,
                                      image: AssetImage(
                                          "assets/images/user_img.png")))),
                          MaterialButton(
                            splashColor: Colors.white,
                            onPressed: () {},
                            color: Color(0xFF4894e9),
                            textColor: Colors.white,
                            child: Icon(
                              Icons.chat,
                              size: 25,
                            ),
                            padding: EdgeInsets.all(16),
                            shape: CircleBorder(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Charuka Wijethunga",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Undergraduate",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    ),
                    RatingBar.builder(
                      initialRating: 3,
                      itemSize: 15,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: false,
                      itemCount: 5,
                      updateOnDrag: false,
                      itemPadding: EdgeInsets.symmetric(horizontal: 0.1),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 50, 8, 8),
                      child: ListTile(
                        title: Text("Tutor Notes"),
                        subtitle: Text(
                            "Description is the pattern of narrative development that aims to make vivid a place, object, character, or group. Description is one of four rhetorical modes, along with exposition, argumentation, and narration. In practice it would be difficult to write literature that drew on just one of the four basic modes."),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Image.asset("assets/images/yes.png"),
                                height: 20,
                              ),
                              SizedBox(width: 6),
                              Text("Online"),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                child: Image.asset("assets/images/yes.png"),
                                height: 20,
                              ),
                              SizedBox(width: 6),
                              Text("Home Visit"),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                child: Image.asset("assets/images/no.png"),
                                height: 20,
                              ),
                              SizedBox(width: 6),
                              Text("Mass Class"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ListTile(
                          title: Text("Locations"),
                          subtitle: SingleChildScrollView(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                    onPressed: () {}, child: Text("Matara")),
                                ElevatedButton(
                                    onPressed: () {}, child: Text("Colombo")),
                                ElevatedButton(
                                    onPressed: () {}, child: Text("Galle")),
                                ElevatedButton(
                                    onPressed: () {}, child: Text("Kandy")),
                              ],
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ListTile(
                          title: Text("Fees"),
                          subtitle: SingleChildScrollView(
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Online"),
                                    ),
                                    Text("3500/="),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Online - Group"),
                                    ),
                                    Text("3000/="),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Mass Class"),
                                    ),
                                    Text("2500/="),
                                  ],
                                )
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
