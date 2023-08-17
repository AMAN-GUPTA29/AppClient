import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:review/Screens/FormInput/complete_check.dart';
import 'package:review/Screens/FormInput/sliders.dart';
import 'package:review/Screens/FormInput/togglebutton.dart';
import 'package:review/typography.dart';
import 'package:review/Screens/FormInput/imageinput.dart';
import 'package:review/widgets/header.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    var _enteredFirstName = '';
    var _enteredRefrel = '';
    var _enteredLastName = '';
    var _enteredEmail = '';
    var _enteredWhatsapp = '';
    var _enteredMobileNumber = '';
    var _enteredPincode = '';
    var _enteredProfession = '';
    File? _selectedImage;
    var _enteredproductModel = '';
    var _enteredyear = '';
    var _enteredVarient = '';
    var _enteredTransmission = '';
    var _enteredyCarNumber = '';
    var _enteredCarkind = '';
    var _entredDistance = '';
    var _entredModification = '';
    var _entredOverallRange = '';
    var _whyThisCar = '';
    var _enteredfeaturesLearned = '';
    var _enteredCar1 = '';
    var _enteredCar2 = '';
    var _enteredCar3 = '';
    var _entredDealershipname = '';
    var _delershipCity = '';
    var _expCarServiced = '';
    var _expDealerShip = '';
    var _expService = '';
    var _expexpShare = '';
    var _expServicecost = '';
    var _expStory = '';
    bool consultedByUs = false;
    bool safety = false;
    bool features = false;
    bool performance = false;
    bool mileage = false;
    bool space = false;
    bool bootSpace = false;
    bool resale = false;
    bool technology = false;
    bool design = false;
    bool emotionalConnect = false;
    bool others = false;

    var _selectedKindid = 0;

    _saveItem() {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        print(_enteredFirstName);
        print(_enteredLastName);
        print(_enteredEmail);
        print(_enteredWhatsapp);
        print(_enteredMobileNumber);
        print(_enteredPincode);
        print(_enteredProfession);
        print(_enteredRefrel);
        print("saving");
      }
    }

/////till
    return SafeArea(
      child: Scaffold(
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
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                  fontFamily: 'Armstrong',
                                  height: 4,
                                  fontSize: 22,
                                  letterSpacing: 1,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "OWNER'S REVIEW ",
                                    style:
                                        TextStyle(color: Colors.grey.shade600)),
                                TextSpan(
                                    text: 'FORM',
                                    style:
                                        TextStyle(color: Colors.red.shade900))
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 14.0, right: 14.0),
                            child: Text(
                              'This form will make it easy for us to understand everything about the car owner',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  wordSpacing: 1,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey.shade600),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  width: 180,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      label: RichText(
                                        text: TextSpan(
                                          text: 'First Name',
                                          style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 16,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: '*',
                                              style: TextStyle(
                                                  color: Colors.red.shade900),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null ||
                                          value.isEmpty ||
                                          value.trim().length <= 1 ||
                                          value.trim().length > 50) {
                                        print('value');
                                        return 'Must be between 1 and 50 characters.';
                                      }

                                      return null;
                                    },
                                    onSaved: (value) {
                                      if (value == null) {
                                        return;
                                      }
                                      _enteredFirstName = value;
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 29.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        label: RichText(
                                          text: TextSpan(
                                            text: 'Last Name',
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 16,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: '*',
                                                style: TextStyle(
                                                    color: Colors.red.shade900),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value == null ||
                                            value.isEmpty ||
                                            value.trim().length <= 1 ||
                                            value.trim().length > 50) {
                                          return 'Must be between 1 and 50 characters.';
                                        }

                                        return null;
                                      },
                                      onSaved: (value) {
                                        if (value == null) {
                                          return;
                                        }
                                        _enteredLastName = value;
                                      },
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              label: RichText(
                                text: TextSpan(
                                  text: 'Email Id',
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '*',
                                      style:
                                          TextStyle(color: Colors.red.shade900),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value == null) {
                                return 'Enter Email in right Format.';
                              }

                              return null;
                            },
                            onSaved: (value) {
                              if (value == null) {
                                return;
                              }
                              _enteredEmail = value;
                            },
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  width: 180,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      label: RichText(
                                        text: TextSpan(
                                          text: 'Whatsapp Number',
                                          style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 16,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: '*',
                                              style: TextStyle(
                                                  color: Colors.red.shade900),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null ||
                                          value.isEmpty ||
                                          value.trim().length <= 1 ||
                                          value.trim().length > 50) {
                                        return 'Must be between 1 and 50 characters.';
                                      }

                                      return null;
                                    },
                                    onSaved: (value) {
                                      if (value == null) {
                                        return;
                                      }
                                      _enteredWhatsapp = value;
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 29.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        label: RichText(
                                          text: TextSpan(
                                            text: 'Email id',
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 16,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: '*',
                                                style: TextStyle(
                                                    color: Colors.red.shade900),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value == null) {
                                          return 'Must be between 1 and 50 characters.';
                                        }

                                        return null;
                                      },
                                      onSaved: (value) {
                                        if (value == null) {
                                          return;
                                        }
                                      },
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  width: 180,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      label: RichText(
                                        text: TextSpan(
                                          text: 'Mobile Number',
                                          style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 16,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: '*',
                                              style: TextStyle(
                                                  color: Colors.red.shade900),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null ||
                                          value.isEmpty ||
                                          value.trim().length <= 1 ||
                                          value.trim().length > 50) {
                                        return 'Must be between 1 and 50 characters.';
                                      }

                                      return null;
                                    },
                                    onSaved: (value) {
                                      if (value == null) {
                                        return;
                                      }
                                      _enteredMobileNumber = value;
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 160,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 29.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        label: RichText(
                                          text: TextSpan(
                                            text: 'Pincode',
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 16,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: '*',
                                                style: TextStyle(
                                                    color: Colors.red.shade900),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value == null ||
                                            value.isEmpty ||
                                            value.trim().length <= 1 ||
                                            value.trim().length > 50) {
                                          return 'Must be between 1 and 50 characters.';
                                        }

                                        return null;
                                      },
                                      onSaved: (value) {
                                        if (value == null) {
                                          return;
                                        }
                                        _enteredPincode = value;
                                      },
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  width: 180,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      label: RichText(
                                        text: TextSpan(
                                          text: 'Profession',
                                          style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 16,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: '*',
                                              style: TextStyle(
                                                  color: Colors.red.shade900),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null ||
                                          value.isEmpty ||
                                          value.trim().length <= 1 ||
                                          value.trim().length > 50) {
                                        return 'Must be between 1 and 50 characters.';
                                      }

                                      return null;
                                    },
                                    onSaved: (value) {
                                      if (value == null) {
                                        return;
                                      }
                                      _enteredProfession = value;
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 160,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 29.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        label: RichText(
                                          text: TextSpan(
                                            text: 'Referred By',
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 16,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: '*',
                                                style: TextStyle(
                                                    color: Colors.red.shade900),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value == null ||
                                            value.isEmpty ||
                                            value.trim().length <= 1 ||
                                            value.trim().length > 50) {
                                          return 'Must be between 1 and 50 characters.';
                                        }

                                        return null;
                                      },
                                      onSaved: (value) {
                                        if (value == null) {
                                          return;
                                        }
                                        _enteredRefrel = value;
                                      },
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                  fontFamily: 'Armstrong',
                                  height: 4,
                                  fontSize: 28,
                                  letterSpacing: 1,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Your Car ",
                                    style:
                                        TextStyle(color: Colors.grey.shade600)),
                                TextSpan(
                                    text: 'Details',
                                    style:
                                        TextStyle(color: Colors.red.shade900))
                              ],
                            ),
                          ),
                          Container(
                            width: 200,
                            height: 40,
                            child: Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: 'BRAND',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '*',
                                        style: TextStyle(
                                            color: Colors.red.shade900),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Container(
                                  width: 119,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(1),
                                    boxShadow: [
                                      const BoxShadow(
                                          color: Colors.grey,
                                          spreadRadius: 2,
                                          blurRadius: 7,
                                          offset: Offset(0, 3)),
                                    ],
                                  ),
                                  child: DropdownButtonFormField(
                                    itemHeight: 50,
                                    iconEnabledColor: Colors.red,
                                    iconDisabledColor: Colors.red,
                                    icon: const Icon(Icons.keyboard_arrow_down),
                                    value: () {},
                                    items: [],
                                    onChanged: (value) {},
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  width: 180,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      label: RichText(
                                        text: TextSpan(
                                          text: 'Product Model',
                                          style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 16,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: '*',
                                              style: TextStyle(
                                                  color: Colors.red.shade900),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null ||
                                          value.isEmpty ||
                                          value.trim().length <= 1 ||
                                          value.trim().length > 50) {
                                        return 'Must be between 1 and 50 characters.';
                                      }

                                      return null;
                                    },
                                    onSaved: (value) {
                                      if (value == null) {
                                        return;
                                      }
                                      _enteredEmail = value;
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 29.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        label: RichText(
                                          text: TextSpan(
                                            text: 'Year',
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 16,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: '*',
                                                style: TextStyle(
                                                    color: Colors.red.shade900),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value == null ||
                                            value.isEmpty ||
                                            value.trim().length <= 1 ||
                                            value.trim().length > 50) {
                                          return 'Must be between 1 and 50 characters.';
                                        }

                                        return null;
                                      },
                                      onSaved: (value) {
                                        if (value == null) {
                                          return;
                                        }
                                        _enteredLastName = value;
                                      },
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  width: 180,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      label: RichText(
                                        text: TextSpan(
                                          text: 'Varient',
                                          style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 16,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: '*',
                                              style: TextStyle(
                                                  color: Colors.red.shade900),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null ||
                                          value.isEmpty ||
                                          value.trim().length <= 1 ||
                                          value.trim().length > 50) {
                                        return 'Must be between 1 and 50 characters.';
                                      }

                                      return null;
                                    },
                                    onSaved: (value) {
                                      if (value == null) {
                                        return;
                                      }
                                      _enteredFirstName = value;
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(top: 15),
                                  width: 160,
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 29.0, right: 5),
                                      child: Column(
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              text: 'Fuel Type',
                                              style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 16,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: '*',
                                                  style: TextStyle(
                                                      color:
                                                          Colors.red.shade900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.white.withOpacity(1),
                                              boxShadow: [
                                                const BoxShadow(
                                                    color: Colors.grey,
                                                    spreadRadius: 2,
                                                    blurRadius: 7,
                                                    offset: Offset(0, 3)),
                                              ],
                                            ),
                                            child: DropdownButtonFormField(
                                              iconEnabledColor: Colors.red,
                                              iconDisabledColor: Colors.red,
                                              icon: const Icon(
                                                  Icons.keyboard_arrow_down),
                                              items: [],
                                              onChanged: (value) {},
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  width: 180,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      label: RichText(
                                        text: TextSpan(
                                          text: 'Transmission',
                                          style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 16,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: '*',
                                              style: TextStyle(
                                                  color: Colors.red.shade900),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null ||
                                          value.isEmpty ||
                                          value.trim().length <= 1 ||
                                          value.trim().length > 50) {
                                        return 'Must be between 1 and 50 characters.';
                                      }

                                      return null;
                                    },
                                    onSaved: (value) {
                                      if (value == null) {
                                        return;
                                      }
                                      _enteredFirstName = value;
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 29.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        label: RichText(
                                          text: TextSpan(
                                            text: 'Car Number',
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 16,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: '*',
                                                style: TextStyle(
                                                    color: Colors.red.shade900),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value == null ||
                                            value.isEmpty ||
                                            value.trim().length <= 1 ||
                                            value.trim().length > 50) {
                                          return 'Must be between 1 and 50 characters.';
                                        }

                                        return null;
                                      },
                                      onSaved: (value) {
                                        if (value == null) {
                                          return;
                                        }
                                        _enteredLastName = value;
                                      },
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Uplaod images of you with your car',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ImageInput(
                            onPickImage: (image) {
                              _selectedImage = image;
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'What kind of car',
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w800,
                                fontSize: 16,
                              ),
                              children: [
                                TextSpan(
                                  text: '*',
                                  style: TextStyle(color: Colors.red.shade900),
                                ),
                              ],
                            ),
                          ),
                          ToggleeButton(
                            selectedid: _selectedKindid,
                            firstButton: 'BRAND NEW',
                            secondButton: 'USED CAR',
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              label: RichText(
                                text: TextSpan(
                                  text: 'Approximate kilometers Driven',
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '*',
                                      style:
                                          TextStyle(color: Colors.red.shade900),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value == null) {
                                return 'Enter Email in right Format.';
                              }

                              return null;
                            },
                            onSaved: (value) {
                              if (value == null) {
                                return;
                              }
                              _enteredEmail = value;
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          RichText(
                            text: TextSpan(
                              text:
                                  'Have You made any modification/aftermarket fitment to the vehicle',
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w800,
                                fontSize: 16,
                              ),
                              children: [
                                TextSpan(
                                  text: '*',
                                  style: TextStyle(color: Colors.red.shade900),
                                ),
                              ],
                            ),
                          ),
                          ToggleeButton(
                            selectedid: _selectedKindid,
                            firstButton: 'YES',
                            secondButton: 'NO',
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(
                                    top: 15,
                                  ),
                                  width: double.infinity,
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 5,
                                        right: 5,
                                      ),
                                      child: Column(
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              text:
                                                  'Mostly What kind of road you drive on',
                                              style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 16,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: '*',
                                                  style: TextStyle(
                                                      color:
                                                          Colors.red.shade900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.white.withOpacity(1),
                                              boxShadow: [
                                                const BoxShadow(
                                                    color: Colors.grey,
                                                    spreadRadius: 2,
                                                    blurRadius: 7,
                                                    offset: Offset(0, 3)),
                                              ],
                                            ),
                                            child: DropdownButtonFormField(
                                              iconEnabledColor: Colors.red,
                                              iconDisabledColor: Colors.red,
                                              icon: const Icon(
                                                  Icons.keyboard_arrow_down),
                                              items: [],
                                              onChanged: (value) {},
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(top: 15),
                                  width: double.infinity,
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 5,
                                        right: 5,
                                      ),
                                      child: Column(
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              text:
                                                  'How many people drive the car',
                                              style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 16,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: '*',
                                                  style: TextStyle(
                                                      color:
                                                          Colors.red.shade900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.white.withOpacity(1),
                                              boxShadow: [
                                                const BoxShadow(
                                                    color: Colors.grey,
                                                    spreadRadius: 2,
                                                    blurRadius: 7,
                                                    offset: Offset(0, 3)),
                                              ],
                                            ),
                                            child: DropdownButtonFormField(
                                              iconEnabledColor: Colors.red,
                                              iconDisabledColor: Colors.red,
                                              icon: const Icon(
                                                  Icons.keyboard_arrow_down),
                                              items: [],
                                              onChanged: (value) {},
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(top: 15),
                                  width: double.infinity,
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 5,
                                        right: 5,
                                      ),
                                      child: Column(
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              text: 'Mileage in city (Approx)',
                                              style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 16,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: '*',
                                                  style: TextStyle(
                                                      color:
                                                          Colors.red.shade900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.white.withOpacity(1),
                                              boxShadow: [
                                                const BoxShadow(
                                                    color: Colors.grey,
                                                    spreadRadius: 2,
                                                    blurRadius: 7,
                                                    offset: Offset(0, 3)),
                                              ],
                                            ),
                                            child: DropdownButtonFormField(
                                              iconEnabledColor: Colors.red,
                                              iconDisabledColor: Colors.red,
                                              icon: const Icon(
                                                  Icons.keyboard_arrow_down),
                                              items: [],
                                              onChanged: (value) {},
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(top: 15),
                                  width: double.infinity,
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 5,
                                        right: 5,
                                      ),
                                      child: Column(
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              text:
                                                  'Mileage in highway (Approx)',
                                              style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 16,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: '*',
                                                  style: TextStyle(
                                                      color:
                                                          Colors.red.shade900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.white.withOpacity(1),
                                              boxShadow: [
                                                const BoxShadow(
                                                    color: Colors.grey,
                                                    spreadRadius: 2,
                                                    blurRadius: 7,
                                                    offset: Offset(0, 3)),
                                              ],
                                            ),
                                            child: DropdownButtonFormField(
                                              iconEnabledColor: Colors.red,
                                              iconDisabledColor: Colors.red,
                                              icon: const Icon(
                                                  Icons.keyboard_arrow_down),
                                              items: [],
                                              onChanged: (value) {},
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                                style: const TextStyle(
                                    fontFamily: 'Armstrong',
                                    height: 4,
                                    fontSize: 22,
                                    letterSpacing: 1,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "HOW DID YOU ",
                                      style: TextStyle(
                                          color: Colors.grey.shade600)),
                                  TextSpan(
                                      text: 'FINALISE?',
                                      style:
                                          TextStyle(color: Colors.red.shade900))
                                ]),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              label: Text(
                                'Overall Range (Applicable only to EVs)',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                ),
                                selectionColor: Colors.black,
                              ),
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              label: Text(
                                'Why this car',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                ),
                                selectionColor: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          RichText(
                            text: TextSpan(
                              text:
                                  "Key reasons to consider this v/s competition?(Pick 3 Reasons)",
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w800,
                                fontSize: 16,
                              ),
                              children: [
                                TextSpan(
                                  text: '*',
                                  style: TextStyle(color: Colors.red.shade900),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Complete_check(
                                        textdata: 'Consulted',
                                        ischecked: consultedByUs),
                                    Complete_check(
                                      textdata: 'Safety',
                                      ischecked: safety,
                                    ),
                                    Complete_check(
                                      textdata: 'Features',
                                      ischecked: features,
                                    ),
                                    Complete_check(
                                      textdata: 'Performance',
                                      ischecked: performance,
                                    ),
                                    Complete_check(
                                      textdata: 'Mileage',
                                      ischecked: mileage,
                                    ),
                                    Complete_check(
                                      textdata: 'Space',
                                      ischecked: space,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Complete_check(
                                        textdata: 'Consulted',
                                        ischecked: consultedByUs),
                                    Complete_check(
                                      textdata: 'Safety',
                                      ischecked: safety,
                                    ),
                                    Complete_check(
                                      textdata: 'Features',
                                      ischecked: features,
                                    ),
                                    Complete_check(
                                      textdata: 'Performance',
                                      ischecked: performance,
                                    ),
                                    Complete_check(
                                      textdata: 'Mileage',
                                      ischecked: mileage,
                                    ),
                                    Complete_check(
                                      textdata: 'Space',
                                      ischecked: space,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          TextField(
                            decoration: InputDecoration(
                              label: Text(
                                'One or more features that you learnt after purchasing the car?',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                ),
                                selectionColor: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Things that lack in this car?',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Complete_check(
                                        textdata: 'Consulted',
                                        ischecked: consultedByUs),
                                    Complete_check(
                                      textdata: 'Safety',
                                      ischecked: safety,
                                    ),
                                    Complete_check(
                                      textdata: 'Features',
                                      ischecked: features,
                                    ),
                                    Complete_check(
                                      textdata: 'Performance',
                                      ischecked: performance,
                                    ),
                                    Complete_check(
                                      textdata: 'Mileage',
                                      ischecked: mileage,
                                    ),
                                    Complete_check(
                                      textdata: 'Space',
                                      ischecked: space,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Complete_check(
                                        textdata: 'Consulted',
                                        ischecked: consultedByUs),
                                    Complete_check(
                                      textdata: 'Safety',
                                      ischecked: safety,
                                    ),
                                    Complete_check(
                                      textdata: 'Features',
                                      ischecked: features,
                                    ),
                                    Complete_check(
                                      textdata: 'Performance',
                                      ischecked: performance,
                                    ),
                                    Complete_check(
                                      textdata: 'Mileage',
                                      ischecked: mileage,
                                    ),
                                    Complete_check(
                                      textdata: 'Space',
                                      ischecked: space,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Three vehicles shortlisted before purchasing this?',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Cars',
                                      style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Experience at those delerships',
                                      style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 100,
                                    child: Column(
                                      children: [
                                        TextFormField(),
                                        TextFormField(),
                                        TextFormField(),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 50,
                                        ),
                                        Sliderss(size: false),
                                        Sliderss(size: false),
                                        Sliderss(size: false),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Text(
                            'Any issues with the car?',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Complete_check(
                                        textdata: 'Consulted',
                                        ischecked: consultedByUs),
                                    Complete_check(
                                      textdata: 'Safety',
                                      ischecked: safety,
                                    ),
                                    Complete_check(
                                      textdata: 'Features',
                                      ischecked: features,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Complete_check(
                                        textdata: 'Consulted',
                                        ischecked: consultedByUs),
                                    Complete_check(
                                      textdata: 'Safety',
                                      ischecked: safety,
                                    ),
                                    Complete_check(
                                      textdata: 'Features',
                                      ischecked: features,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Would you recommand this car to others?',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                ),
                              ),
                              Sliderss(size: true),
                              Text(
                                "What's your emotion with the car?",
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                ),
                              ),
                              Sliderss(size: true),
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          RichText(
                            text: TextSpan(
                                style: const TextStyle(
                                    fontFamily: 'Armstrong',
                                    height: 4,
                                    fontSize: 20,
                                    letterSpacing: 1,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "DEALERSHIP ",
                                      style: TextStyle(
                                          color: Colors.grey.shade600)),
                                  TextSpan(
                                      text: 'EXPERIENCE',
                                      style:
                                          TextStyle(color: Colors.red.shade900))
                                ]),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              label: Text(
                                'Name of Dealership?',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                ),
                                selectionColor: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              label: Text(
                                'City & Area?',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                ),
                                selectionColor: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Rate the dealership sales experience",
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                            ),
                          ),
                          Sliderss(size: true),
                          Text(
                            'Why did you choose this dealership?',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Complete_check(
                                        textdata: 'Consulted',
                                        ischecked: consultedByUs),
                                    Complete_check(
                                      textdata: 'Safety',
                                      ischecked: safety,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Complete_check(
                                        textdata: 'Consulted',
                                        ischecked: consultedByUs),
                                    Complete_check(
                                      textdata: 'Safety',
                                      ischecked: safety,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Did the dealership force sell you anything?',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              Complete_check(
                                  textdata: 'Insurence',
                                  ischecked: consultedByUs),
                              Complete_check(
                                textdata: 'Accessories',
                                ischecked: safety,
                              ),
                              Complete_check(
                                textdata: 'Extended warranty',
                                ischecked: safety,
                              ),
                              Complete_check(
                                textdata: 'Everything',
                                ischecked: safety,
                              ),
                              Complete_check(
                                textdata:
                                    'No nothing, the dealership was very good',
                                ischecked: safety,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Container(
                                padding:
                                    EdgeInsets.only(left: 5, right: 5, top: 5),
                                width: double.infinity,
                                child: RichText(
                                  text: TextSpan(
                                    text:
                                        'Would you recommend this dealer for car buyers?',
                                    style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '*',
                                        style: TextStyle(
                                            color: Colors.red.shade900),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                padding:
                                    EdgeInsets.only(left: 5, right: 5, top: 5),
                                width: double.infinity,
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Have you serviced your car yet?',
                                    style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '*',
                                        style: TextStyle(
                                            color: Colors.red.shade900),
                                      ),
                                    ],
                                  ),
                                ),
                              ))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Container(
                                padding:
                                    EdgeInsets.only(left: 5, right: 5, top: 5),
                                width: double.infinity,
                                child: Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(1),
                                    boxShadow: [
                                      const BoxShadow(
                                          color: Colors.grey,
                                          spreadRadius: 2,
                                          blurRadius: 7,
                                          offset: Offset(0, 3)),
                                    ],
                                  ),
                                  child: DropdownButtonFormField(
                                    iconEnabledColor: Colors.red,
                                    iconDisabledColor: Colors.red,
                                    icon: const Icon(Icons.keyboard_arrow_down),
                                    items: [],
                                    onChanged: (value) {},
                                  ),
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                padding:
                                    EdgeInsets.only(left: 5, right: 5, top: 5),
                                width: double.infinity,
                                child: Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(1),
                                    boxShadow: [
                                      const BoxShadow(
                                          color: Colors.grey,
                                          spreadRadius: 2,
                                          blurRadius: 7,
                                          offset: Offset(0, 3)),
                                    ],
                                  ),
                                  child: DropdownButtonFormField(
                                    iconEnabledColor: Colors.red,
                                    iconDisabledColor: Colors.red,
                                    icon: const Icon(Icons.keyboard_arrow_down),
                                    items: [],
                                    onChanged: (value) {},
                                  ),
                                ),
                              ))
                            ],
                          ),
                        ],
                      ),
                      Column(
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
                                      text: "SERVICE ",
                                      style: TextStyle(
                                          color: Colors.grey.shade600)),
                                  TextSpan(
                                      text: 'EXPERIENCE',
                                      style:
                                          TextStyle(color: Colors.red.shade900))
                                ]),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              label: Text(
                                'Did you get your car serviced at the same dealership or different?If different, then why?',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                ),
                                selectionColor: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              label: Text(
                                'If different, then name of the Dealer?',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                ),
                                selectionColor: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              label: Text(
                                'Any tips for people who are servicing this car?',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                ),
                                selectionColor: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              label: Text(
                                'Anything you want to share about your dealership service experienced?',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                ),
                                selectionColor: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Rate the overall service experience (service,cost,service timeline,transparency,service adviser)",
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                            ),
                          ),
                          Sliderss(size: true),
                          TextField(
                            decoration: InputDecoration(
                              label: Text(
                                'Approx Service Cost - our team will connect later asking for invoices to verify',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                ),
                                selectionColor: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              label: Text(
                                'Your Story',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                ),
                                selectionColor: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                      Container(
                        child: ElevatedButton(
                            onPressed: () {
                              _saveItem();
                            },
                            child: Text(
                              'SUBMIT',
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white)),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//  "Owner's Review",
                  // style: TextStyle(height: 2, fontSize: 26),