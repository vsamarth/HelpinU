
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:helpin_u/constants/constants.dart';
import 'package:helpin_u/constants/dummy_data.dart';
import 'package:helpin_u/constants/tags.dart';
import 'package:helpin_u/models/org_model.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<OrganizationModel> orgs = DummyOrgs.orgs;
    return CarouselSlider.builder(
          options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.6,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
            itemBuilder: (context, index, realIndex) {
              final org = orgs[index];
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        org.logo,
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        org.name,
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        org.description,
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),

                      const SizedBox(height: 10),

                      // create a row of tags
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for(var i = 0; i < org.tags.length; i++)
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 2),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: kSecondaryColor,
                                        width: 2,
                                      ),
                                    
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Text(
                                      org.tags[i].info,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                ],
                              )
                            ) 
                            
                          
                        ],
                      ),
                    ],
                  )
                  
                );
              
            },
            itemCount: orgs.length,
          
          
        )
;
  }
}