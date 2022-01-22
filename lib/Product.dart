import 'package:fashion_store/Home.dart';
import 'package:fashion_store/Toggle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  get child => null;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.red.shade50,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 30,
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    },
                    backgroundColor: Colors.white,
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 180),
                  child: SizedBox(
                    height: 30,
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      child: const Icon(
                        Icons.favorite_outline_sharp,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    child: const Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Stack(children: [
            const Center(
              child: SizedBox(
                height: 525,
                width: 300,
                child: Image(
                  image: AssetImage("images/SummerProduct.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 330, left: 10),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                  ),
                  height: 270, //260
                  width: width * 3.5, //351
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Row(
                        children: [
                          const Text(
                            "Crop Top",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Sen"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 140, right: 0),
                            child: SizedBox(
                              width: 25,
                              height: 25,
                              child: FloatingActionButton(
                                  onPressed: () {},
                                  backgroundColor: Colors.amber.shade100,
                                  child: null),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 0),
                            child: SizedBox(
                              width: 25,
                              height: 25,
                              child: FloatingActionButton(
                                  onPressed: () {},
                                  backgroundColor: Colors.purple,
                                  child: null),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 0),
                            child: SizedBox(
                              width: 25,
                              height: 25,
                              child: FloatingActionButton(
                                  onPressed: () {},
                                  backgroundColor: Colors.red.shade300,
                                  child: null),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Size",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff262626),
                                fontWeight: FontWeight.w700,
                                fontFamily: "Sen"),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                        padding: EdgeInsets.all(5.0), child: SizeButtton()),
                    Row(
                      children: const [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "30% off",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.purple,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Sen"),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "\$58",
                            style: TextStyle(
                                fontSize: 24,
                                color: Color(0xff8399A9),
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.lineThrough,
                                fontFamily: "Sen"),
                          ),
                        ),
                        Text(
                          "\$55",
                          style: TextStyle(
                              fontSize: 30,
                              color: Color(0xff0DA75F),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Sen"),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 240, top: 0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Add to bag",
                          style: TextStyle(fontFamily: "Sen"),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            padding: const EdgeInsets.all(15)),
                      ),
                    ),
                  ])),
            ),
          ])
        ],
      ),
    );
  }
}

class SizeButtton extends StatefulWidget {
  const SizeButtton({Key? key}) : super(key: key);

  @override
  State<SizeButtton> createState() => _SizeButttonState();
}

class _SizeButttonState extends State<SizeButtton> {
  List<bool> _isSelected = List.generate(5, (index) => false);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleButtons(
        children: const [
          Text(
            "XS",
            style: TextStyle(fontFamily: "Sen"),
          ),
          Text(
            "S",
            style: TextStyle(fontFamily: "Sen"),
          ),
          Text(
            "M",
            style: TextStyle(fontFamily: "Sen"),
          ),
          Text(
            "L",
            style: TextStyle(fontFamily: "Sen"),
          ),
          Text(
            "XL",
            style: TextStyle(fontFamily: "Sen"),
          ),
        ],
        color: Colors.grey,
        selectedColor: Colors.white,
        fillColor: Colors.black,
        selectedBorderColor: Colors.white,
        borderColor: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        onPressed: (int index) {
          setState(() {
            for (int buttonIndex = 0;
                buttonIndex < _isSelected.length;
                buttonIndex++) {
              if (buttonIndex == index) {
                _isSelected[buttonIndex] = !_isSelected[buttonIndex];
              } else {
                _isSelected[buttonIndex] = false;
              }
            }
          });
        },
        isSelected: _isSelected,
      ),
    );
  }
}
