import 'package:flutter/material.dart';
import 'package:godhra_community/colors/color_constant.dart';
import 'package:godhra_community/components/drawer/Gender.dart';
import 'package:godhra_community/components/appBar.dart';
import 'package:godhra_community/components/drawer/map_page.dart';
import 'package:intl/intl.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  Color color = const Color.fromARGB(255, 45, 156, 178);

  final TextEditingController _email = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _number = TextEditingController();
  final TextEditingController _cast = TextEditingController();
  final TextEditingController _address = TextEditingController();
  final TextEditingController _dateOfBirth = TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  double? deviceHeight, deviceWidth;
  @override
  void initState() {
    super.initState();
    _name.text = "";
    _number.text = "";
    _email.text = "";
    _cast.text = "";
    _address.text = "";
    _dateOfBirth.text = "";
  }

  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(
      fontSize: 16,
      fontFamily: 'Ubuntu',
    );
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/images/icn_back_black.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // iconTheme: IconThemeData(color: Colors.grey),
        centerTitle: true,

        title: AppBarTitle(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            profileTxt(style),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    profileImage(),
                    SizedBox(
                      height: 15,
                    ),
                    TexTFielD(
                        text1: 'Full Name',
                        text2: 'Enter Full Name',
                        ControLLer: _name),
                    TexTFielD(
                        text1: 'Mobile Number',
                        text2: 'Enter Mobile Number ',
                        ControLLer: _number),
                    TexTFielD(
                        text1: 'Email Address',
                        text2: 'Enter Email Address  ',
                        ControLLer: _email),
                    TexTFielD(
                        text1: 'Cast/Surname',
                        text2: 'Enter Cast/Surname',
                        ControLLer: _cast),
                    TexTFielD(
                        showCursor: false,
                        text1: 'Address On Map',
                        text2: '--',
                        ControLLer: _address,
                        ontap: () {
                          Navigator.pushNamed(context, '/mapPage');
                        }),
                    TexTFielD(
                        text1: 'Date of Birth ',
                        text2: '--',
                        ControLLer: _dateOfBirth,
                        ontap: selectingDate),
                    genderSelector(),
                    SizedBox(
                      height: 25,
                    ),
                    updateButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void selectingDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1960),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      setState(() {
        _dateOfBirth.text = DateFormat('dd-MM-yyyy').format(pickedDate);
        ;
      });
    }
  }

  Widget updateButton() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 40.0,
        width: 275,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: color),
        child: Center(
          child: Text(
            'Update',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  Widget genderSelector() {
    return gender('Gender');
  }

  Widget profileImage() {
    return GestureDetector(
      onTap: () {
        print('okk');
      },
      child: Image.asset(
        'assets/images/pi.png',
        scale: 5,
      ),
    );
  }

  Widget profileTxt(TextStyle style) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        "Profile",
        style: style,
      ),
    );
  }
}

// for profile screen textField

Widget TexTFielD({
  required String text1,
  required String text2,
  required TextEditingController ControLLer,
  VoidCallback? ontap,
  bool? showCursor,
}) {
  Color color = const Color.fromARGB(255, 25, 148, 172);
  Color colour = Color.fromRGBO(248, 248, 248, 0.397);
  return Padding(
    padding: const EdgeInsets.only(left: 18, right: 18),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5, bottom: 5),
          child: Text(
            text1,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontFamily: 'Ubuntu',
            ),
          ),
        ),
        TextField(
          showCursor: showCursor,
          onTap: ontap,
          cursorColor: color,
          style: TextStyle(color: color, fontFamily: 'Ubuntu'),
          controller: ControLLer,
          decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color: Colors.grey.shade600,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.grey.shade600,
                  )),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.grey.shade600,
                  )),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.grey.shade600,
                  )),
              hintText: text2,
              hintStyle: TextStyle(
                fontFamily: 'Ubuntu',
                color: Colors.grey[600],
                fontSize: 16,
              )),
        ),
        SizedBox(height: 10),
      ],
    ),
  );
}

Widget gender(String text1) {
  TextStyle style = TextStyle(
    color: ColorConstant.greyColor,
    fontSize: 16,
    fontFamily: 'Ubuntu',
  );
  Color color = const Color.fromARGB(255, 25, 148, 172);
  Color colour = Color.fromRGBO(248, 248, 248, 0.397);
  return Padding(
    padding: const EdgeInsets.only(left: 18, right: 18),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5, bottom: 5),
          child: Text(
            text1,
            style: style,
          ),
        ),
        GenderSelector(),
        SizedBox(height: 10),
      ],
    ),
  );
}
