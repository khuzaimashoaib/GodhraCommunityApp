import 'package:flutter/material.dart';
import 'package:godhra_community/components/appBar.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  double? deviceHeight, deviceWidth;
  TextStyle? textStyleH1, textStyleH2, textStyleH3, textStyleH4, textStyleText;

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;

    textStyleH1 = TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      
    );

    textStyleH2 = const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    );

    textStyleH3 = const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );

    textStyleH4 = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );

    textStyleText = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
    );

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/images/icn_back_black.png'),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/dashboard');
          },
        ),
        centerTitle: true,
        title: AppBarTitle(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Privacy Policy',
                  style: textStyleH1,
                ),
                mySizedBox(0, 20),
                Text('Effective date: April 30, 2019', style: textStyleText),
                mySizedBox(0, 18),
                Text(
                  "Godhra Community (\"us\", \"we\", or \"our\") operates the Godhra Community mobile application (the\"Service\"\).",
                  style: textStyleText,
                ),
                mySizedBox(0, 18),
                Text(
                  'We use your data to provide and improve the Service. By using the Service, you agree to the collection and use of information in accordance with this policy. Unless otherwise defined in this Privacy Policy, terms used in this Privacy Policy have the same meanings as in our Terms and Conditions.',
                  style: textStyleText,
                ),
                mySizedBox(0, 20),
                Text(
                  'Information Collection And Use',
                  style: textStyleH2,
                ),
                mySizedBox(0, 20),
                Text(
                  'We collect several different types of information for various purposes to provide and improve the Service to you.',
                  style: textStyleText,
                ),
                mySizedBox(0, 18),
                Text(
                  'Types of Data Collected',
                  style: textStyleH3,
                ),
                mySizedBox(0, 18),
                Text(
                  'Personal Data',
                  style: textStyleH4,
                ),
                mySizedBox(0, 18),
                Text(
                  'While using our Service, we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you ("Personal Data"). Personally identifiable information may include, but is not limited to:',
                  style: textStyleText,
                ),
                mySizedBox(0, 18),
                bulletsText('Email address'),
                bulletsText('First name and last name'),
                bulletsText('Phone number'),
                bulletsText('Address, State, Province, ZIP/Postal code, City'),
                bulletsText('Cookies and Usage Data'),
                mySizedBox(0, 20),
                Text(
                  'Address Book (Contacts)',
                  style: textStyleH4,
                ),
                mySizedBox(0, 18),
                Text(
                  'When you access the service through a mobile device we may collect address book that include your contacts.',
                  style: textStyleText,
                ),
                mySizedBox(0, 20),
                Text('Usage Data', style: textStyleH4),
                mySizedBox(0, 20),
                Text(
                  'When you access the Service by or through a mobile device, we may collect certain information automatically, including, but not limited to, the type of mobile device you use, your mobile device unique ID, the IP address of your mobile device, your mobile operating system, the type of mobile Internet browser you use, unique device identifiers and other diagnostic data ("Usage Data").',
                  style: textStyleText,
                ),
                mySizedBox(0, 20),
                Text(
                  'Tracking and Cookies Data',
                  style: textStyleH4,
                ),
                mySizedBox(0, 20),
                Text(
                  'We use cookies and similar tracking technologies to track the activity on our Service and hold certain information.',
                  style: textStyleText,
                ),
                mySizedBox(0, 18),
                Text(
                  'Cookies are files with small amount of data which may include an anonymous unique identifier. Cookies are sent to your browser from a website and stored on your device. Tracking technologies also used are beacons, tags, and scripts to collect and track information and to improve and analyze our Service.',
                  style: textStyleText,
                ),
                mySizedBox(0, 18),
                Text(
                  'You can instruct your browser to refuse all cookies or to indicate when a cookie is being sent. However, if you do not accept cookies, you may not be able to use some portions of our Service.',
                  style: textStyleText,
                ),
                mySizedBox(0, 18),
                Text(
                  'Examples of Cookies we use:',
                  style: textStyleText,
                ),
                mySizedBox(0, 18),
                cookiesBulletText('Session Cookies.',
                    ' We use Session Cookies to operate our Service.'),
                cookiesBulletText('Preference Cookies.',
                    ' We use Preference Cookies to remember your preferences and various settings.'),
                cookiesBulletText('Security Cookies.',
                    ' We use Security Cookies for security purposes.'),
                mySizedBox(0, 18),
                Text('Use of Data', style: textStyleH2),
                mySizedBox(0, 20),
                Text(
                  'Godhra Community uses the collected data for various purposes:',
                  style: textStyleText,
                ),
                dataBulletText('To provide and maintain the Service'),
                dataBulletText('To notify you about changes to our Service'),
                dataBulletText(
                    'To allow you to participate in interactive features of our Service when you choose to do so'),
                dataBulletText('To provide customer care and support'),
                dataBulletText(
                    'To provide analysis or valuable information so that we can improve the Service'),
                dataBulletText('To monitor the usage of the Service'),
                dataBulletText(
                    'To detect, prevent and address technical issues'),
                dataBulletText(
                    'To promote this app using your Address Book(Contacts)'),
                mySizedBox(0, 18),
                Text(
                  'Transfer of Data',
                  style: textStyleH2,
                ),
                mySizedBox(0, 20),
                Text(
                  'Your information, including Personal Data, may be transferred to and maintained on computers located outside of your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from your jurisdiction.',
                  style: textStyleText,
                ),
                mySizedBox(0, 18),
                Text(
                  'If you are located outside Pakistan and choose to Provide information to us, please note that we transfer the data, including Personal Data, to Pakistan and process it there.',
                  style: textStyleText,
                ),
                mySizedBox(0, 18),
                Text(
                    'Your consent to this Privacy Policy followed by your submission of such information represents your agreement to that transfer.',
                    style: textStyleText),
                mySizedBox(0, 18),
                Text(
                  'Godhra Community will take all steps reasonably necessary to ensure that your data is treated securely and in accordance with this Privacy Policy and no transfer of your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of your data and other personal information.',
                  style: textStyleText,
                ),
                mySizedBox(0, 18),
                Text(
                  'Disclosure of Data',
                  style: textStyleH2,
                ),
                mySizedBox(0, 20),
                Text(
                  'Legal Requirements',
                  style: textStyleH3,
                ),
                mySizedBox(0, 18),
                Text(
                  'Godhra Community disclose your Personal Data in the good faith belief that such action is necessary to:',
                  style: textStyleText,
                ),
                mySizedBox(0, 18),
                dataBulletText('To comply with a legal obligation'),
                dataBulletText(
                    'To protect and defend the rights or property of Godhra Community'),
                dataBulletText(
                    'To prevent or investigate possible wrongdoing in connection with the Service'),
                dataBulletText(
                    'To protect the personal safety of users of the Service or the public'),
                dataBulletText('To protect against legal liability'),
                mySizedBox(0, 18),
                Text(
                    'Godhra Community will not disclose your Address book (Contacts) with anyone',
                    style: textStyleText),
                mySizedBox(0, 20),
                Text(
                  'Security of Data',
                  style: textStyleH2,
                ),
                mySizedBox(0, 20),
                Text(
                  'The security of your data is important to us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your Personal Data, we cannot guarantee its absolute security.',
                  style: textStyleText,
                ),
                mySizedBox(0, 20),
                Text(
                  'Service Providers',
                  style: textStyleH2,
                ),
                mySizedBox(0, 20),
                Text(
                  'We may employ third party companies and individuals to facilitate our Service ("Service Providers"), to provide the Service on our behalf, to perform Service-related services or to assist us in analyzing how our Service is used.',
                  style: textStyleText,
                ),
                mySizedBox(0, 18),
                Text(
                  'These third parties have access to your Personal Data only to perform these tasks on our behalf and are obligated not to disclose or use it for any other purpose.',
                  style: textStyleText,
                ),
                mySizedBox(0, 20),
                Text(
                  'Link to Other Sites',
                  style: textStyleH2,
                ),
                mySizedBox(0, 20),
                Text(
                  "Our Service may contain links to other sites that are not operated by us. If you click on a third party link, you will be directed to that third party's site. We strongly advise you to review the Privacy Policy of every site you visit.",
                  style: textStyleText,
                ),
                mySizedBox(0, 18),
                Text(
                  'We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.',
                  style: textStyleText,
                ),
                mySizedBox(0, 20),
                Text(
                  'Children’s Privacy',
                  style: textStyleH2,
                ),
                mySizedBox(0, 20),
                Text(
                  'Our Service does not address anyone under the age of 18 ("Children").',
                  style: textStyleText,
                ),
                mySizedBox(0, 18),
                Text(
                  'We do not knowingly collect personally identifiable information from anyone under the age of 18. If you are a parent or guardian and you are aware that your Children has provided us with Personal Data, please contact us. If we become aware that we have collected Personal Data from children without verification of parental consent, we take steps to remove that information from our servers.',
                  style: textStyleText,
                ),
                mySizedBox(0, 20),
                Text(
                  'Changes to This Privacy Policy',
                  style: textStyleH2,
                ),
                mySizedBox(0, 20),
                Text(
                  'We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.',
                  style: textStyleText,
                ),
                mySizedBox(0, 18),
                Text(
                  'We will let you know via email and/or a prominent notice on our Service, prior to the change becoming effective and update the "effective date" at the top of this Privacy Policy.',
                  style: textStyleText,
                ),
                mySizedBox(0, 18),
                Text(
                  'You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.',
                  style: textStyleText,
                ),
                mySizedBox(0, 20),
                Text(
                  'Contact Us',
                  style: textStyleH2,
                ),
                mySizedBox(0, 20),
                Text(
                  'If you have any questions about this Privacy Policy, please contact us:',
                  style: textStyleText,
                ),
                mySizedBox(0, 18),
                dataBulletText(
                  'By email: support@daniyalsalim.info',
                ),
                dataBulletText('By phone number: +923030307660'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget mySizedBox(double width, double height) {
    return SizedBox(
      height: height,
      width: width,
    );
  }

  Widget bulletsText(String text) {
    return RichText(
      text: TextSpan(
        children: [
          WidgetSpan(
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 22),
                  child: Icon(
                    Icons.circle,
                    size: 6,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    text,
                    style: textStyleText,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cookiesBulletText(String text, String text2) {
    return Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.only(
                left: 25,
                top: 7,
              ),
              child: Icon(
                Icons.circle,
                size: 6,
              )),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 5),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: text,
                      style: textStyleH4,
                    ),
                    TextSpan(
                      text: text2,
                      style: textStyleText,
                    )
                  ],
                ),
              ),
            ),
          ),
        ]);
  }

  Widget dataBulletText(String text) {
    return Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.only(
                left: 25,
                top: 7,
              ),
              child: Icon(
                Icons.circle,
                size: 6,
              )),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 5),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: text,
                      style: textStyleText!.copyWith(
                        color: Theme.of(context).colorScheme.background,
                      ),
                      // style: TextStyle(
                      // fontSize: 16,
                      // fontWeight: FontWeight.normal,
                      // ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]);
  }
}
