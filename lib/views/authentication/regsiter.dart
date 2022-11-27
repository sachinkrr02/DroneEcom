import 'package:day59/main.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _profiledetailstate();
}

class _profiledetailstate extends State<register> {
  final userNameController = TextEditingController();
  final phoneController = TextEditingController();
  final genderController = TextEditingController();
  final streetController = TextEditingController();
  final pincodeController = TextEditingController();
  final addressController = TextEditingController();
  final ageController = TextEditingController();

  late DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('DroneEcom');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(),
                      child: Align(
                        alignment: AlignmentDirectional(-0.15, 0.15),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(-0.75, 0),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.black,
                                  size: 24,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(-1, 0),
                                child: Text(
                                  'Register',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 30,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(-0.8, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image.network(
                                    'https://cdn-icons-png.flaticon.com/128/4139/4139981.png',
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [],
                    ),
                  ],
                ),
                Divider(
                  height: 1,
                  thickness: 3,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.black,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  decoration: BoxDecoration(),
                  alignment: AlignmentDirectional(0, 0.050000000000000044),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.3, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: TextFormField(
                                  controller: userNameController,
                                  keyboardType: TextInputType.text,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'User Name:',
                                    hintText: 'Sachin02',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            30, 20, 0, 0),
                                  ),
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  alignment: AlignmentDirectional(0, 0.050000000000000044),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.3, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: TextFormField(
                                  controller: phoneController,
                                  keyboardType: TextInputType.number,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Phone NO.',
                                    hintText: '9876543210',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            30, 20, 0, 0),
                                  ),
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  alignment: AlignmentDirectional(0, 0.050000000000000044),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.3, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: TextFormField(
                                  controller: genderController,
                                  keyboardType: TextInputType.text,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Gender:',
                                    hintText: 'Female',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            30, 20, 0, 0),
                                  ),
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  alignment: AlignmentDirectional(0, 0.050000000000000044),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.3, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: TextFormField(
                                  controller: ageController,
                                  keyboardType: TextInputType.number,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Age:',
                                    hintText: '25',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            30, 20, 0, 0),
                                  ),
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  alignment: AlignmentDirectional(0, 0.050000000000000044),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.3, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: TextFormField(
                                  controller: pincodeController,
                                  keyboardType: TextInputType.text,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Pincode',
                                    hintText: '123456',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            30, 20, 0, 0),
                                  ),
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  alignment: AlignmentDirectional(0, 0.050000000000000044),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.3, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: TextFormField(
                                  controller: streetController,
                                  keyboardType: TextInputType.number,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Address',
                                    hintText: 'Address',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            30, 20, 0, 0),
                                  ),
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  alignment: AlignmentDirectional(0, 0.050000000000000044),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.3, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: TextFormField(
                                  controller: addressController,
                                  keyboardType: TextInputType.text,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Street ',
                                    hintText: 'Street',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            30, 20, 0, 0),
                                  ),
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Map<String, String> DroneEcom = {
                              'username': userNameController.text,
                              'phone': phoneController.text,
                              'age': ageController.text,
                              'gender': genderController.text,
                              'occupation': pincodeController.text,
                              'aadhar': streetController.text,
                              'address': addressController.text,
                            };
                            dbRef.push().set(DroneEcom);
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => App()));
                          },
                          child: const Text('Submit'),
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: IconButton(
                                icon: const Icon(
                                  Icons.arrow_forward,
                                  size: 28,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => App()));
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
