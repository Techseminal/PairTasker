import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class UserFormScreen extends StatefulWidget {
  const UserFormScreen({Key? key}) : super(key: key);

  @override
  State<UserFormScreen> createState() => _UserFormScreenState();
}

class _UserFormScreenState extends State<UserFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                readOnly: true,
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
                        onTap: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1947),
                            lastDate: DateTime(2030),
                          );
                        })),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(0, 127, 255, 1),
                      fixedSize: const Size.fromWidth(double.infinity)),
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
