import 'package:flutter/material.dart';
import 'package:godhra_community/colors/color_constant.dart';
import 'package:godhra_community/components/appBar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    GoogleMapController mapController;
    Color colorBg = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? Colors.grey.shade900
        : Colors.white;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/images/icn_back_black.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        backgroundColor: colorBg,
        title: AppBarTitle(color: ColorConstant.color),
      ),
      body: Stack(
        children: [
          // GoogleMap(
          //   onMapCreated: (GoogleMapController controller) {
          //     mapController = controller;
          //   },
          //   initialCameraPosition: CameraPosition(
          //     target: LatLng(37.4219999, -122.0840575),
          //     zoom: 15,
          //   ),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Tap on map and tap set address',
                    style: TextStyle(
                        fontSize: 12,
                        color: ColorConstant.color,
                        fontFamily: 'Ubuntu'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: setAddressButton(),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget setAddressButton() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 40.0,
        width: 275,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ColorConstant.color),
        child: Center(
          child: Text(
            'Set Address',
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
}
