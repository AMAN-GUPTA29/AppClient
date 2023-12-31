import 'package:flutter/material.dart';
import 'package:review/Screens/privacypolicy/privacydata.dart';
import 'package:review/widgets/footer.dart';
import 'package:review/widgets/header.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(Object context) {
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
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(
                              fontFamily: 'Armstrong',
                              height: 4,
                              fontSize: 24,
                              letterSpacing: 1,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                                text: "PRIVACY ",
                                style: TextStyle(color: Colors.grey.shade600)),
                            TextSpan(
                                text: 'POLICY',
                                style: TextStyle(color: Colors.red.shade900))
                          ],
                        ),
                      ),
                      for (var item in privacypolicydata)
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 20, left: 7, right: 7),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "• ",
                                style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'),
                              ),
                              Expanded(
                                child: Text(
                                  item,
                                  softWrap: true,
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 30, left: 7, right: 7),
                        child: Text(
                          "Please Note:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade700,
                              fontSize: 24),
                        ),
                      ),
                      for (var item in privacypolicydataNote)
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 20, left: 7, right: 7),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "•",
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat'),
                                ),
                                Expanded(
                                  child: Text(
                                    item,
                                    softWrap: true,
                                    style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                    ],
                  ),
                ),
                Footer()
              ],
            ),
          )
        ],
      ),
    );
  }
}
