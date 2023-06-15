import 'package:flutter/material.dart';
import 'package:godhra_community/components/searchBar.dart';

import '../contact_card.dart';

class BikeMechanic extends StatefulWidget {
  const BikeMechanic({super.key});

  @override
  State<BikeMechanic> createState() => _BikeMechanicState();
}

class _BikeMechanicState extends State<BikeMechanic> {

  final ScrollController _scrollController = ScrollController();
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
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
            const SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  controller: _scrollController,
                  itemBuilder: (context, index) {
                    return ContactCard();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: 10),
            )
          ],
        ),
      ),      
      );
    
  }
}