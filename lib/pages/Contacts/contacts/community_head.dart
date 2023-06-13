import 'package:flutter/material.dart';
import 'package:godhra_community/components/searchBar.dart';
import 'package:godhra_community/pages/Contacts/contact_card.dart';

class CommunityHead extends StatefulWidget {
  const CommunityHead({super.key});

  @override
  State<CommunityHead> createState() => _CommunityHeadState();
}

class _CommunityHeadState extends State<CommunityHead> {
  final TextEditingController searchController = TextEditingController();

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
        title: SearchBar(
          searchController: searchController,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Text("Numbers"),
         const   SizedBox(height: 10),
            ContactCard(),
          ],
        ),
      ),
    );
  }
}
