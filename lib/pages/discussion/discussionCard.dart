import 'package:flutter/material.dart';

class DiscussionCard extends StatelessWidget {
  const DiscussionCard({super.key});

  @override
  Widget build(BuildContext context) {
    
      
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 200, // Adjust the height as needed
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text('name'),
                      subtitle: Text('date'),
                    
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/icn_like.png',
                              // onPressed: () {
                              //   // Perform action on icon button press
                              // },
                            ),
                            Image.asset(
                            'assets/images/icn_comment.png',
                              // onPressed: () {
                              //   // Perform action on icon button press
                              // },
                            ),
                           
                          ],
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
    