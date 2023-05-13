import 'dart:html' as html;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/responsive_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sharanya\'s Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}

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
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: Container(
          decoration: const BoxDecoration(
              // color: Colors.green,
              ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text(
                  '',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Spacer(),
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
                const SizedBox(width: 16),
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
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          // The header widget
          SizedBox(
            height: screenSize.height * 0.75,
            width: screenSize.width,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ResponsiveWidget.isSmallScreen(context)
                    ? Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 250,
                            width: 250,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 5,
                              ),
                              shape: BoxShape.circle,
                              image: const DecorationImage(
                                image: AssetImage('assets/images/sharanya.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          SizedBox(
                            width: screenSize.width * 0.7,
                            child: SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Hey, I am Sharanya!',
                                    style: TextStyle(
                                      fontSize: 32,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Text(
                                    'I am an accomplished software developer with a strong focus on mobile engineering. My expertise lies in creating immersive and user-friendly applications for various mobile platforms. I specialize in leveraging AR technologies to deliver captivating gaming experiences that blur the lines between virtual and real worlds. Additionally, I have a knack for architecting robust backend systems using Golang, guaranteeing the smooth and seamless operation of the applications.',
                                    //style: Theme.of(context).textTheme.titleSmall,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.justify,
                                    softWrap: true,
                                    maxLines: 20,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 250,
                            width: 250,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 5,
                              ),
                              shape: BoxShape.circle,
                              image: const DecorationImage(
                                image: AssetImage('assets/images/sharanya.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          SizedBox(width: screenSize.width * 0.05),
                          SizedBox(
                            width: screenSize.width * 0.35,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Hey, I am Sharanya!',
                                  style: TextStyle(
                                    fontSize: 32,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  'I am an accomplished software developer with a strong focus on mobile engineering. My expertise lies in creating immersive and user-friendly applications for various mobile platforms. I specialize in leveraging AR technologies to deliver captivating gaming experiences that blur the lines between virtual and real worlds. Additionally, I have a knack for architecting robust backend systems using Golang, guaranteeing the smooth and seamless operation of the applications.',
                                  //style: Theme.of(context).textTheme.titleSmall,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    height: 1.5,
                                  ),
                                  textAlign: TextAlign.justify,
                                  softWrap: true,
                                  maxLines: 10,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
              ),
            ),
          ),
          // The body widget
          Center(
            heightFactor: 1,
            child: Padding(
              padding: EdgeInsets.only(
                top: screenSize.height * 0.70,
                left: screenSize.width / 5,
                right: screenSize.width / 5,
                bottom: screenSize.height * 0.20,
              ),
              child: Card(
                // floating quick access bar

                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ContactMeDialog extends StatelessWidget {
  ContactMeDialog({super.key});

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.green[100],
      child: LayoutBuilder(
          builder: (BuildContext ctx, BoxConstraints constraints) {
        if (constraints.maxWidth > 885) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.65,
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Contact Me',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(
                            CupertinoIcons.clear_thick_circled,
                            //   color: Colors.red,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const ContactDetails(),
                        ContactForm(
                            nameController: _nameController,
                            emailController: _emailController,
                            messageController: _messageController),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        } else {
          return SingleChildScrollView(
              child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Contact Me',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        CupertinoIcons.clear_thick_circled,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 16),
                Column(
                  children: [
                    const ContactDetails(),
                    ContactForm(
                        nameController: _nameController,
                        emailController: _emailController,
                        messageController: _messageController),
                  ],
                ),
              ],
            ),
          ));
        }
        return Container();
      }),
    );
  }
}

class ContactDetails extends StatelessWidget {
  const ContactDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              const Icon(
                Icons.phone,
                color: Colors.green,
              ),
              const SizedBox(width: 8),
              Text(
                '+91 7900042434',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              const Icon(
                Icons.email,
                color: Colors.green,
              ),
              const SizedBox(width: 8),
              Text(
                'ssharanyab@gmail.com',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            'Connect with me',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  html.window.open(
                      'https://www.linkedin.com/in/ssharanyab/', 'new tab');
                },
                icon: Image.asset(
                  'icons/linkedin.png',
                ),
                iconSize: 50,
                padding: const EdgeInsets.all(0),
              ),
              const SizedBox(width: 8),
              IconButton(
                onPressed: () {
                  html.window.open('https://twitter.com/ssharanyab', 'new tab');
                },
                icon: Image.asset(
                  'icons/twitter.png',
                ),
                iconSize: 50,
                padding: const EdgeInsets.all(0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key? key,
    required TextEditingController nameController,
    required TextEditingController emailController,
    required TextEditingController messageController,
  })  : _nameController = nameController,
        _emailController = emailController,
        _messageController = messageController,
        super(key: key);

  final TextEditingController _nameController;
  final TextEditingController _emailController;
  final TextEditingController _messageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green[200],
          borderRadius: BorderRadius.circular(4),
        ),
        padding:
            const EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Send me a message',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  hintText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: TextField(
                controller: _messageController,
                maxLines: 10,
                decoration: const InputDecoration(
                  hintText: 'Message',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.height * 0.05,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Send'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
