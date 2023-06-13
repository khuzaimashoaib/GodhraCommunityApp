import 'package:flutter/material.dart';
import 'package:godhra_community/components/searchBar.dart';
import 'package:godhra_community/pages/Clinics_and_Hospital/ClinicContainer.dart';

class ClinicAndHospital extends StatefulWidget {
  const ClinicAndHospital({super.key});

  @override
  State<ClinicAndHospital> createState() => _ClinicAndHospitalState();
}

class _ClinicAndHospitalState extends State<ClinicAndHospital> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/images/icn_back_black.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: SearchBar(searchController: searchController),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Clinic and Hospital',
                style: TextStyle(
                    fontWeight: FontWeight.normal, fontFamily: 'Ubuntu'),
              ),
              SizedBox(height: 10.0),
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ClinicContainer();
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
