import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';

class UserFormScreen extends StatefulWidget {
  const UserFormScreen({Key? key}) : super(key: key);

  @override
  State<UserFormScreen> createState() => _UserFormScreenState();
}

class _UserFormScreenState extends State<UserFormScreen> {
  String gender = 'male';
  DateTime _currentDate = DateTime.now();
  bool _taskerStatus = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
          child: ListView(
            children: <Widget>[
              const Text(
                "Complete Form",
                style: TextStyle(
                  color: Color.fromRGBO(0, 127, 255, 1),
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  border: const UnderlineInputBorder(),
                  labelText: "Username",
                  hintText: "Create a new username",
                  labelStyle: TextStyle(
                    color: HexColor("#007FFF"),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: HexColor("#007FFF")),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  border: const UnderlineInputBorder(),
                  labelText: "Display Name",
                  hintText: "Enter your nick name",
                  labelStyle: TextStyle(
                    color: HexColor("#007FFF"),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: HexColor("#007FFF")),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                readOnly: true,
                controller: TextEditingController(
                  text: DateFormat.yMMMMd().format(_currentDate),
                ),
                decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                    labelText: "Date of Birth",
                    hintText: "Pick date from the calender",
                    labelStyle: TextStyle(
                      color: HexColor("#007FFF"),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: HexColor("#007FFF")),
                    ),
                    suffixIcon: InkWell(
                        child: const Icon(
                          Icons.calendar_today_rounded,
                        ),
                        onTap: () async {
                          final _pickedDate = await showDatePicker(
                            context: context,
                            initialDate: _currentDate,
                            firstDate: DateTime(1950),
                            lastDate: DateTime(2050),
                          );
                          if (_pickedDate != null &&
                              _pickedDate != _currentDate) {
                            setState(() {
                              _currentDate = _pickedDate;
                            });
                          }
                        })),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Gender",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 127, 255, 1),
                      fontSize: 16,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(
                            toggleable: false,
                            value: 'male',
                            activeColor: HexColor("#007FFF"),
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() => gender = value.toString());
                              // print(value.toString());
                            },
                          ),
                          const Text(
                            'Male',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            toggleable: false,
                            value: 'female',
                            activeColor: HexColor("#007FFF"),
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() => gender = value.toString());
                            },
                          ),
                          const Text(
                            'Female',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            toggleable: false,
                            value: 'others',
                            activeColor: HexColor("#007FFF"),
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() => gender = value.toString());
                            },
                          ),
                          const Text(
                            'Others',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Want to be a tasker?",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(0, 127, 2555, 1),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        child: Switch(
                          value: _taskerStatus,
                          activeColor: HexColor("#007FFF"),
                          onChanged: (bool position) {
                            setState(() => _taskerStatus = !_taskerStatus);
                            print("Switch is $_taskerStatus");
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: HexColor("#AFDBF5"),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "You can get benfits of making money by doing tasks. You will get tasks from our app users nearby. You can charge the users according to the situations, distance and profit.",
                        style: TextStyle(letterSpacing: 0.7),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(0, 127, 255, 1),
                    fixedSize: const Size.fromWidth(double.infinity),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                  ),
                  child: const Text(
                    'Proceed',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
