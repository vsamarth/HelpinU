import 'package:flutter/material.dart';
import '../constants/constants.dart';

class CreateListing extends StatefulWidget {
  const CreateListing({Key? key}) : super(key: key);

  @override
  State<CreateListing> createState() => _CreateListingState();
}

class _CreateListingState extends State<CreateListing> {

  String listingTitle = '';
  String location = '';
  String date = '';
  String desc = '';

  TextEditingController _titleController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  TextEditingController _descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 0,
        title: const Text(
          'HelpinU',
          style: TextStyle(
              fontFamily: "Poppins",
              color: kTextColor,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          //add text
          IconButton(
            icon: const Icon(
              Icons.home,
              color: kTextColor,
              size: 25,
            ),
            onPressed: () {},
          ),

          const Padding(padding: EdgeInsets.only(right: 20)),
        ],
      ),

      body : Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        const Text(
          'Create Volunteer Listing',
          style: TextStyle(
              fontFamily: "Poppins",
              color: kTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 30),
        
        ),

        const SizedBox(height: 10),
        Image(
          image: const AssetImage('/images/company.png'),
          height: height * 0.15,
          width: width * 0.15,
        ),
      
        const SizedBox(height: 10),

        const Text(
          'Company Name',
          style: TextStyle(
              fontFamily: "Poppins",
              color: kTextColor,
              fontSize: 15),
        ),

     
        const SizedBox(
          height: 20,
        ),

        Container(
          margin: const EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            controller: _titleController,
            keyboardType: TextInputType.name,
            onChanged: (value) {
              listingTitle = value;
            },
            decoration: const InputDecoration(
                hintText: "Title",
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: kSecondaryColor))),
          ),
        ),

        const SizedBox(
          height: 20,
        ),

        Container(
          margin: const EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            controller: _descController,
            keyboardType: TextInputType.name,
            maxLines: 3,
            onChanged: (value) {
              desc = value;
            },
            decoration: const InputDecoration(
                hintText: "Description",
                contentPadding: EdgeInsets.symmetric(vertical:10, horizontal: 10),
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: kSecondaryColor))),
          ),
        ),

        const SizedBox(
          height: 20,
        ),

        Container(
          margin: const EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            controller: _locationController,
            keyboardType: TextInputType.name,

            onChanged: (value) {
              location = value;
            },
            decoration: const InputDecoration(
                hintText: "Location",
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: kSecondaryColor))),
          ),
        ),

        const SizedBox(
          height: 20,
        ),

        Container(
          margin: const EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            controller: _dateController,
            keyboardType: TextInputType.name,
            onChanged: (value) {
              date = value;
            },
            decoration: const InputDecoration(
                hintText: "Date of posting",
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: kSecondaryColor))),
          ),
        ),

        const SizedBox(
          height: 40,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: () {
                  _titleController.clear();
                  _locationController.clear();
                  _dateController.clear();
                  _descController.clear();
                },
                child: const Text(
                  "Clear",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 40,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: () {
                  
                },
                child: const Text(
                  "Submit",
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


      ],)
    );
  }

}
