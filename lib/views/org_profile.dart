import 'package:flutter/material.dart';
import '../constants/constants.dart';

// create a stateless widget

class OrgProfile extends StatelessWidget {
  const OrgProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final tagWidth = width * 0.2;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 0,
        title: const Text('HelpingU', style: TextStyle(fontFamily: "Poppins", color: kTextColor, fontSize: 30,  fontWeight: FontWeight.bold),),
        actions: <Widget>[
        //add text
        Icon(
          Icons.person_outline_rounded,
          color: kTextColor,
          size: 25,),

        const Padding(padding: EdgeInsets.only(right: 20)),
      ],
        
      ),

      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image(
            image: const AssetImage('/images/company.png'),
            height: MediaQuery.of(context).size.height * 0.3,
          ),

          const SizedBox(height: 20),

          Text(
            'Company Name',
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 10),

          Container(
            
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            decoration: BoxDecoration(
              border: Border.all(
                color: kSecondaryColor,
                width: 2,
              ),
            
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              'Tag', 
              style: const TextStyle(
                fontSize: 12,
                fontFamily: 'Poppins',
              ),
            ),
          ),

          const SizedBox(height: 10),

          // create a container for the description
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget ultricies lacinia, nisl nisl aliquam nunc, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget ultricies lacinia, nisl nisl aliquam nunc, eget aliquam nisl nisl eget nisl.',
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Colors.grey
              ),
              textAlign: TextAlign.center,
            ),
          ),

          const SizedBox(height: 20),

        //create a container for email
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 40),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey,
              width: 2,
            ),
          ),
          child: Text(
              "Email",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Poppins',
              ),
          ),
        ),

        const SizedBox(height: 10),

        Container(
          margin: const EdgeInsets.symmetric(horizontal: 40),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey,
              width: 2,
            ),
          ),
          child: Text(
              "Phone",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Poppins',
              ),
          ),
        ),
        
        const SizedBox(height: 20),
          
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 40),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextButton(
            onPressed: () {
              
            },
            child: const Text(
              "View Listings",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Poppins',
              ),
            ),
          ),
        ),
          
        

              



        ],
        
      ),

    );
  }
}