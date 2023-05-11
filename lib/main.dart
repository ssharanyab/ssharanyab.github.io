import 'dart:html' as html;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton.icon(
            onPressed: () => showDialog(
              context: context,
              builder: (context) => ContactMeDialog(),
            ),
            icon: const Icon(
              Icons.phone,
              //  color: Colors.white,
            ),
            label: const Text(
              'Contact Me',
              // style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_circle_down_outlined,
              //  color: Colors.white,
            ),
            label: const Text(
              'Resume',
              //style: TextStyle(color: Colors.white),
            ),
          ),
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
