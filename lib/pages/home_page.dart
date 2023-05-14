import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/responsive_widget.dart';
import '../widgets/home_page_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          TextButton.icon(
            onPressed: () => showDialog(
              context: context,
              builder: (context) => ContactMeDialog(),
            ),
            icon: Icon(
              Icons.phone,
              color: Theme.of(context).iconTheme.color,
            ),
            label: const Text(
              'Contact Me',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.arrow_circle_down_outlined,
                color: Theme.of(context).iconTheme.color),
            label: const Text(
              'Resume',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
        title: Text(
          '#include<ssharanyab>.h',
          style: GoogleFonts.kalam(
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: screenSize.height * 0.9,
              width: screenSize.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ResponsiveWidget.isSmallScreen(context)
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const ProfileImage(),
                          const SizedBox(
                            height: 16,
                          ),
                          SizedBox(
                            width: screenSize.width * 0.7,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                HeyName(),
                                SizedBox(height: 16),
                                IntroText(
                                    fontSize: 14, textAlign: TextAlign.center),
                                SizedBox(
                                  height: 16,
                                ),
                                SocialProfiles(),
                              ],
                            ),
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const ProfileImage(),
                          SizedBox(width: screenSize.width * 0.05),
                          SizedBox(
                            width: screenSize.width * 0.25,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                HeyName(),
                                SizedBox(height: 16),
                                IntroText(
                                  fontSize: 16,
                                  textAlign: TextAlign.justify,
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                SocialProfiles(),
                              ],
                            ),
                          ),
                        ],
                      ),
              ),
            ),
          ],
        ),
      ),
      persistentFooterAlignment: ResponsiveWidget.isSmallScreen(context)
          ? AlignmentDirectional.center
          : AlignmentDirectional.bottomCenter,
      persistentFooterButtons: [
        TextButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.school,
            color: Theme.of(context).iconTheme.color,
          ),
          label: const Text(
            'Education',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.work,
            color: Theme.of(context).iconTheme.color,
          ),
          label: const Text(
            'Experience',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.lightbulb, color: Theme.of(context).iconTheme.color),
          label: const Text(
            'Skills and Projects',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.emoji_events,
            color: Theme.of(context).iconTheme.color,
          ),
          label: const Text(
            'Achievements',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
