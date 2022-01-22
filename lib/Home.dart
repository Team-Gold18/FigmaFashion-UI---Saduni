import 'package:fashion_store/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(40, 25, 100, 0),
                child: Text(
                  "Hello,",
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.black,
                    fontFamily: "Sen",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(60, 25, 0, 0),
                child: Image(
                  image: AssetImage("images/profile.png"),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 180, 0),
              child: Text(
                "Amanda",
                style: TextStyle(
                    fontSize: 34,
                    color: Colors.amber[400],
                    fontWeight: FontWeight.w700,
                    fontFamily: "Sen"),
              ),
            ),
            Stack(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 45, 10, 0),
                child: TextButton(
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.red.shade50,
                      ),
                      height: 138,
                      width: 327,
                      child: Column(
                        children: const [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 40, 100, 40),
                            child: Text(
                              "Summer  Collections",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0xff262626),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Sen"),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      )),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Products()));
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(200, 10, 10, 0),
                child: Image(
                  image: AssetImage("images/Summer Collection.png"),
                ),
              ),
            ]),
            Stack(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 45, 10, 0),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.purple.shade50,
                    ),
                    height: 138,
                    width: 327,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 40, 100, 40),
                          child: Text(
                            "Winter   Collections",
                            style: TextStyle(
                                fontSize: 24,
                                color: Color(0xff262626),
                                fontWeight: FontWeight.w700,
                                fontFamily: "Sen"),
                          ),
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(200, 0, 10, 0),
                child: Image(
                  image: AssetImage("images/winter collection.png"),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 10, 200, 5),
              child: Text(
                "Offers",
                style: TextStyle(
                    fontSize: 34,
                    color: Color(0xff262626),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Sen"),
              ),
            ),
            Stack(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 20, 10, 0),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.blue.shade50,
                    ),
                    height: 137,
                    width: 327,
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(150, 40, 0, 40),
                          child: Text(
                            "Get",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Sen"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            "30%",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.purple,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Sen"),
                          ),
                        ),
                        Text(
                          "Off",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Sen"),
                        ),
                      ],
                    )),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
                child: Image(
                  image: AssetImage("images/offer.png"),
                ),
              ),
              // Row(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.fromLTRB(150, 20, 0, 20),
              //       child: FloatingActionButton(
              //         onPressed: () {},
              //         backgroundColor: Colors.black,
              //         foregroundColor: Colors.grey,

              //       ),
              //     )
              //   ],
              // )
              Padding(
                padding: const EdgeInsets.fromLTRB(230, 110, 0, 40),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Know More",
                    style: TextStyle(fontFamily: "Sen"),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomRight: Radius.circular(20))),
                      padding: const EdgeInsets.all(15)),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
