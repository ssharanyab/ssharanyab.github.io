import 'dart:html' as html;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';

import '../utils/responsive_widget.dart';

/// For displaying the name
class HeyName extends StatelessWidget {
  const HeyName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hey, I am $name!',
      style: TextStyle(
        fontSize: 32,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

/// For displaying the intro text
class IntroText extends StatelessWidget {
  const IntroText({
    Key? key,
    required this.fontSize,
    required this.textAlign,
  }) : super(key: key);

  final double fontSize;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      introText,
      //style: Theme.of(context).textTheme.titleSmall,
      style: TextStyle(
        fontSize: fontSize,
        color: Colors.white,
        height: 1.5,
      ),
      textAlign: textAlign,
      softWrap: true,
      maxLines: 10,
      overflow: TextOverflow.ellipsis,
    );
  }
}

/// For displaying the profile image
class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 250,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 5,
        ),
        shape: BoxShape.circle,
        image: const DecorationImage(
          image: AssetImage(profileImage),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

/// For displaying social profiles
class SocialProfiles extends StatelessWidget {
  const SocialProfiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
          ? MainAxisAlignment.center
          : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        SocialButtons(
          imageUrl: linkedinImage,
          linkUrl: linkedInUrl,
        ),
        SocialButtons(
          imageUrl: githubImage,
          linkUrl: githubUrl,
        ),
        SocialButtons(
          imageUrl: mediumImage,
          linkUrl: mediumUrl,
        ),
        SocialButtons(
          imageUrl: behanceImage,
          linkUrl: behanceUrl,
        ),
      ],
    );
  }
}

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    required this.imageUrl,
    required this.linkUrl,
    super.key,
  });

  final String imageUrl;
  final String linkUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        onTap: () {
          html.window.open(linkUrl, '');
        },
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.contain,
              // scale: 2,
            ),
          ),
        ),
      ),
    );
  }
}

/// For Contact Dialog
class ContactMeDialog extends StatelessWidget {
  ContactMeDialog({super.key});

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: ResponsiveWidget.isSmallScreen(context)
          ? SingleChildScrollView(
              child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  const ContactFormHeader(),
                  const SizedBox(height: 16),
                  Column(
                    children: [
                      const ContactDetails(),
                      ContactForm(
                          nameController: _nameController,
                          emailController: _emailController,
                          messageController: _messageController,
                          isSmallScreen: true),
                    ],
                  ),
                ],
              ),
            ))
          : SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: SingleChildScrollView(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      const ContactFormHeader(),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const ContactDetails(),
                          ContactForm(
                              nameController: _nameController,
                              emailController: _emailController,
                              messageController: _messageController,
                              isSmallScreen: false),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}

class ContactFormHeader extends StatelessWidget {
  const ContactFormHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
          ),
        )
      ],
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
          const ContactDetailsInfoIconTexts(
            icon: Icons.phone,
            detail: phone,
          ),
          const SizedBox(height: 12),
          const ContactDetailsInfoIconTexts(
            icon: Icons.email,
            detail: email,
          ),
          const SizedBox(height: 35),
          Text(
            'Connect with me',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SocialButtons(
                imageUrl: linkedinImage,
                linkUrl: linkedInUrl,
              ),
              SocialButtons(
                imageUrl: twitterImage,
                linkUrl: twitterUrl,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ContactDetailsInfoIconTexts extends StatelessWidget {
  const ContactDetailsInfoIconTexts({
    required this.icon,
    required this.detail,
    super.key,
  });

  final IconData icon;
  final String detail;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
        ),
        const SizedBox(width: 8),
        Text(
          detail,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key? key,
    required TextEditingController nameController,
    required TextEditingController emailController,
    required TextEditingController messageController,
    required this.isSmallScreen,
  })  : _nameController = nameController,
        _emailController = emailController,
        _messageController = messageController,
        super(key: key);

  final TextEditingController _nameController;
  final TextEditingController _emailController;
  final TextEditingController _messageController;
  final bool isSmallScreen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.only(left: 0, right: 0, top: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Send me a message',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: isSmallScreen
                  ? null
                  : MediaQuery.of(context).size.width * 0.3,
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
              width: isSmallScreen
                  ? null
                  : MediaQuery.of(context).size.width * 0.3,
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
              width: isSmallScreen
                  ? null
                  : MediaQuery.of(context).size.width * 0.3,
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
              width: isSmallScreen
                  ? null
                  : MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.05,
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(child: Text('Send')),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
