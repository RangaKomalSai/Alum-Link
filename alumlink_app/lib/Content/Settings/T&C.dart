import 'package:flutter/material.dart';

class TermsAndConditionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms & Conditions',
        style: TextStyle(
            fontSize: 24, // Customize the font size
            fontWeight: FontWeight.bold, // Customize the font weight
            fontFamily: 'MyFont2', // Replace with your desired font family
            color: Colors.white, // Customize the text color
          ),
          ),
        backgroundColor: Colors.blue[200],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text(
            'Terms & Conditions',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Welcome to Alumlink! These terms and conditions outline the rules and regulations for the use of our platform. By accessing this website or using our mobile app, you accept these terms and conditions in full. Do not continue to use Alumlink if you do not accept all of the terms and conditions stated on this page.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(height: 20),
          Text(
            'The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: "Client", "You" and "Your" refers to you, the person accessing this website and accepting the Company\'s terms and conditions. "The Company", "Ourselves", "We", "Our" and "Us", refers to our Company. "Party", "Parties", or "Us", refers to both the Client and ourselves, or either the Client or ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner, whether by formal meetings of a fixed duration, or any other means, for the express purpose of meeting the Client\'s needs in respect of provision of the Company\'s stated services/products, in accordance with and subject to, prevailing law of India.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(height: 20),
          Text(
            'We employ the use of cookies. By accessing Alumlink, you agreed to use cookies in agreement with the Alumlink\'s Privacy Policy. Most interactive websites use cookies to let us retrieve the user\'s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Unless otherwise stated, Alumlink and/or its licensors own the intellectual property rights for all material on Alumlink. All intellectual property rights are reserved. You may access this from Alumlink for your own personal use subjected to restrictions set in these terms and conditions.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(height: 20),
          Text(
            'You must not:',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '- Republish material from Alumlink',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
          Text(
            '- Sell, rent or sub-license material from Alumlink',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
          Text(
            '- Reproduce, duplicate or copy material from Alumlink',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
          Text(
            '- Redistribute content from Alumlink',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(height: 20),
          Text(
            'This Agreement shall begin on the date hereof. Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. Alumlink does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of Alumlink,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, Alumlink shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
    );
  }
}

