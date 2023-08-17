import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:review/Screens/landingpage/widgets/verticledash.dart';
import 'package:review/datatype/datatype.dart';
import 'package:searchfield/searchfield.dart';
import 'package:review/widgets/header.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<CarsData> _registeredCars = [
    CarsData(
      title: 'First',
    ),
    CarsData(
      title: 'Second',
    ),
  ];

  var SearchedTitle;

  TextEditingController searchedText = TextEditingController();

  bool cat08 = true;
  bool cat15 = false;
  bool cat25 = false;
  bool cat50 = false;
  bool catA50 = false;

  bool size08 = true;
  bool size15 = false;
  bool size25 = false;
  bool size50 = false;
  bool sizeA50 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderAll(
        appBar: AppBar(),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("img/form/track2.png"),
                    fit: BoxFit.cover,
                    opacity: 0.1)),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('img/landing/landing.jpg'),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: const TextStyle(
                              fontFamily: 'Armstrong',
                              height: 4,
                              fontSize: 18,
                              letterSpacing: 1,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                                text: "FIND YOUR ",
                                style: TextStyle(color: Colors.grey.shade600)),
                            TextSpan(
                                text: 'PERFECT CAR',
                                style: TextStyle(color: Colors.red.shade900))
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  padding: const EdgeInsetsDirectional.only(
                                      start: 20, end: 20),
                                ),
                                child: Text(
                                  'SEARCH',
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  padding: const EdgeInsetsDirectional.only(
                                      start: 20, end: 20),
                                ),
                                child: Text(
                                  'ASSIST ME',
                                  style: TextStyle(color: Colors.grey.shade600),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  padding: const EdgeInsetsDirectional.only(
                                      start: 20, end: 20),
                                ),
                                child: Text(
                                  'CONSULT US',
                                  style: TextStyle(color: Colors.grey.shade600),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: SearchField(
                            suggestions: _registeredCars
                                .map((e) => SearchFieldListItem(e.title,
                                    item: e,
                                    child: Padding(
                                      padding: EdgeInsets.all(4),
                                      child: Text(e.title),
                                    )))
                                .toList(),
                            searchInputDecoration: InputDecoration(
                              alignLabelWithHint: true,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              suffixIcon: InkWell(
                                onTap: () {
                                  print(searchedText.text);
                                },
                                splashColor: Color.fromARGB(0, 255, 255, 255),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            maxSuggestionsInViewPort: 10,
                            controller: searchedText,
                            onSearchTextChanged: (value) {
                              setState(() {
                                SearchedTitle = value;
                              });
                            },
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                cat08 = true;
                                cat15 = false;
                                cat25 = false;
                                cat50 = false;
                                catA50 = false;

                                size08 = true;
                                size15 = false;
                                size25 = false;
                                size50 = false;
                                sizeA50 = false;
                              });
                            },
                            child: Container(
                              height: size08 == true ? 100 : 85,
                              width: size08 == true ? 100 : 85,
                              color: cat08 == true
                                  ? const Color.fromARGB(255, 147, 20, 20)
                                  : Colors.grey,
                              child: Padding(
                                padding:
                                    EdgeInsets.all(size08 == true ? 12 : 10),
                                child: Column(
                                  children: [
                                    Text(
                                      "UNDER",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: size08 == true ? 17 : 15,
                                          fontFamily: 'Armstrong'),
                                    ),
                                    SizedBox(
                                      height: size08 == true ? 8 : 6,
                                    ),
                                    Text(
                                      "08",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: size08 == true ? 22 : 20,
                                          fontFamily: 'Armstrong'),
                                    ),
                                    SizedBox(
                                      height: size08 == true ? 8 : 6,
                                    ),
                                    Text(
                                      "LAKHS",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: size08 == true ? 17 : 15,
                                          fontFamily: 'Armstrong'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CustomPaint(
                              size: Size(1, 80),
                              painter: DashedLineVerticalPainter()),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                cat08 = false;
                                cat15 = true;
                                cat25 = false;
                                cat50 = false;
                                catA50 = false;

                                size08 = false;
                                size15 = true;
                                size25 = false;
                                size50 = false;
                                sizeA50 = false;
                              });
                            },
                            child: Container(
                              height: size15 == true ? 100 : 85,
                              width: size15 == true ? 100 : 85,
                              color: cat15 == true
                                  ? const Color.fromARGB(255, 147, 20, 20)
                                  : Colors.grey,
                              child: Padding(
                                padding:
                                    EdgeInsets.all(size15 == true ? 12 : 10),
                                child: Column(
                                  children: [
                                    Text(
                                      "UNDER",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: size15 == true ? 17 : 15,
                                          fontFamily: 'Armstrong'),
                                    ),
                                    SizedBox(
                                      height: size15 == true ? 8 : 6,
                                    ),
                                    Text(
                                      "15",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: size15 == true ? 22 : 20,
                                          fontFamily: 'Armstrong'),
                                    ),
                                    SizedBox(
                                      height: size15 == true ? 8 : 6,
                                    ),
                                    Text(
                                      "LAKHS",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: size15 == true ? 17 : 15,
                                          fontFamily: 'Armstrong'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CustomPaint(
                              size: Size(1, 80),
                              painter: DashedLineVerticalPainter()),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                cat08 = false;
                                cat15 = false;
                                cat25 = true;
                                cat50 = false;
                                catA50 = false;

                                size08 = false;
                                size15 = false;
                                size25 = true;
                                size50 = false;
                                sizeA50 = false;
                              });
                            },
                            child: Container(
                              height: size25 == true ? 100 : 85,
                              width: size25 == true ? 100 : 85,
                              color: cat25 == true
                                  ? Color.fromARGB(255, 147, 20, 20)
                                  : Colors.grey,
                              child: Padding(
                                padding:
                                    EdgeInsets.all(size25 == true ? 12 : 10),
                                child: Column(
                                  children: [
                                    Text(
                                      "UNDER",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: size25 == true ? 17 : 15,
                                          fontFamily: 'Armstrong'),
                                    ),
                                    SizedBox(
                                      height: size25 == true ? 8 : 6,
                                    ),
                                    Text(
                                      "25",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: size25 == true ? 22 : 20,
                                          fontFamily: 'Armstrong'),
                                    ),
                                    SizedBox(
                                      height: size25 == true ? 8 : 6,
                                    ),
                                    Text(
                                      "LAKHS",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: size25 == true ? 17 : 15,
                                          fontFamily: 'Armstrong'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CustomPaint(
                              size: Size(1, 80),
                              painter: DashedLineVerticalPainter()),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                cat08 = false;
                                cat15 = false;
                                cat25 = false;
                                cat50 = true;
                                catA50 = false;

                                size08 = false;
                                size15 = false;
                                size25 = false;
                                size50 = true;
                                sizeA50 = false;
                              });
                            },
                            child: Container(
                              height: size50 == true ? 100 : 85,
                              width: size50 == true ? 100 : 85,
                              color: cat50 == true
                                  ? Color.fromARGB(255, 147, 20, 20)
                                  : Colors.grey,
                              child: Padding(
                                padding:
                                    EdgeInsets.all(size50 == true ? 12 : 10),
                                child: Column(
                                  children: [
                                    Text(
                                      "UNDER",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: size50 == true ? 17 : 15,
                                          fontFamily: 'Armstrong'),
                                    ),
                                    SizedBox(
                                      height: size50 == true ? 8 : 6,
                                    ),
                                    Text(
                                      "50",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: size50 == true ? 22 : 20,
                                          fontFamily: 'Armstrong'),
                                    ),
                                    SizedBox(
                                      height: size50 == true ? 8 : 6,
                                    ),
                                    Text(
                                      "LAKHS",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: size50 == true ? 17 : 15,
                                          fontFamily: 'Armstrong'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CustomPaint(
                              size: Size(1, 80),
                              painter: DashedLineVerticalPainter()),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                cat08 = false;
                                cat15 = false;
                                cat25 = false;
                                cat50 = false;
                                catA50 = true;

                                size08 = false;
                                size15 = false;
                                size25 = false;
                                size50 = false;
                                sizeA50 = true;
                              });
                            },
                            child: Container(
                              height: sizeA50 == true ? 100 : 85,
                              width: sizeA50 == true ? 100 : 85,
                              color: catA50 == true
                                  ? Color.fromARGB(255, 147, 20, 20)
                                  : Colors.grey,
                              child: Padding(
                                padding:
                                    EdgeInsets.all(sizeA50 == true ? 12 : 10),
                                child: Column(
                                  children: [
                                    Text(
                                      "ABOVE",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: sizeA50 == true ? 17 : 15,
                                          fontFamily: 'Armstrong'),
                                    ),
                                    SizedBox(
                                      height: sizeA50 == true ? 8 : 6,
                                    ),
                                    Text(
                                      "50",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: sizeA50 == true ? 22 : 20,
                                          fontFamily: 'Armstrong'),
                                    ),
                                    SizedBox(
                                      height: sizeA50 == true ? 8 : 6,
                                    ),
                                    Text(
                                      "LAKHS",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: sizeA50 == true ? 17 : 15,
                                          fontFamily: 'Armstrong'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 300,
                      child: ListView.builder(
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          // shrinkWrap: true,
                          itemBuilder: ((ctx, index) => InkWell(
                                onTap: () {},
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  padding: EdgeInsets.only(
                                      top: 10, left: 10, right: 10),
                                  height: 300,
                                  width: 200,
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          style: const TextStyle(
                                            // fontFamily: 'Armstrong',
                                            // height: 4,
                                            fontSize: 13,
                                            letterSpacing: 1,
                                            color: Colors.black,
                                          ),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: "₹ 1.04 *LAKHS ",
                                              style: TextStyle(
                                                  color: Colors.red.shade900,
                                                  fontFamily: 'Armstrong',
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(
                                                text: 'onwards',
                                                style: TextStyle())
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Ex Showroom Price',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        height: 110,
                                        width: 180,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'img/carscard/second.png'),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          RichText(
                                            textAlign: TextAlign.center,
                                            text: TextSpan(
                                              style: const TextStyle(
                                                  fontFamily: 'Armstrong',
                                                  // height: 4,
                                                  fontSize: 14,
                                                  letterSpacing: 1,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: "Hyundai ",
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey.shade600)),
                                                TextSpan(
                                                    text: 'Tuscon',
                                                    style: TextStyle(
                                                        color: Colors
                                                            .red.shade900))
                                              ],
                                            ),
                                          ),
                                          IconButton(
                                              onPressed: () {
                                                setState(() {});
                                              },
                                              padding:
                                                  EdgeInsets.only(left: 26),
                                              icon: Icon(
                                                Icons.favorite_border,
                                                size: 15,
                                              ))
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset(
                                                    'img/Icons/Seater.png',
                                                    scale: 30,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    '5,7,9 Seater',
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  ColorFiltered(
                                                    colorFilter:
                                                        ColorFilter.mode(
                                                      Colors.white,
                                                      BlendMode.saturation,
                                                    ),
                                                    child: Image.asset(
                                                      'img/Icons/download.png',
                                                      scale: 12,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    '5,7,9 Seater',
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Row(),
                                              Row(),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ))),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
