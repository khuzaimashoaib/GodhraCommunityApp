import 'package:flutter/material.dart';
import 'package:godhra_community/components/appBar.dart';
import 'package:godhra_community/pages/request_pages/sending_request_page.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = const Color.fromARGB(255, 25, 148, 172);
    Color colorBg = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? Colors.grey.shade900
        : Colors.white;
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        backgroundColor: colorBg,
        leading: IconButton(
          icon: Image.asset('assets/images/icn_back_black.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: AppBarTitle(color: color),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Requests',
                      style: TextStyle(fontFamily: 'Ubuntu'),
                    )
                  ],
                ),
              ),
              Text('Request data:'),
              SizedBox(height: 20),
              FutureBuilder<dynamic>(
                builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  if (snapshot.hasData) {
                    return Text(
                      '${snapshot.data['title']}',
                      style: TextStyle(fontSize: 20),
                    );
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SendingRequestPage()),
          );
        },
        child: Image.asset(
          'assets/images/img_request_icon.png',
          height: 30,
        ),
      ),
    );
  }
}
