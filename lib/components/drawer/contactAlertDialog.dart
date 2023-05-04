import 'dart:async';

import 'package:flutter/material.dart';
import 'package:godhra_community/components/toastClass.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ContactAlertDialog extends StatelessWidget {
  TextStyle style = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  Color color = const Color.fromARGB(255, 45, 156, 178);

  Widget myTile(String text, VoidCallback onTap) {
    return ListTile(
      // contentPadding: EdgeInsets.only(to),
      dense: true,
      title: Padding(
        padding: const EdgeInsets.only(left: 8, top: 5),
        child: Text(text, style: style),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(0),
      title: Text(
        'Support Request From Mobile App(Android)',
        style: TextStyle(fontSize: 18, color: color),
      ),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          myTile('Call', () {
            _makePhoneCall('03030307660');
            Navigator.pop(context);
          }),
          myTile('Whatsapp', () {
            showToast('Whatsapp not installed');
            Navigator.pop(context);
          }),
          myTile('Text Message', () {
            _smsSend('03030307660');
            Navigator.pop(context);
          }),
          myTile('Email', () {
            _emailSend('support@daniyalsalim.info');
            Navigator.pop(context);
          }),
        ],
      ),
    );
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> _emailSend(String email) async {
    final Uri launchUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    await launchUrl(launchUri);
  }

  Future<void> _smsSend(String number) async {
    final Uri launchUri = Uri(
      scheme: 'sms',
      path: number,
    );
    await launchUrl(launchUri);
  }
}
