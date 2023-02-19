import 'package:mongo_dart/mongo_dart.dart';

import 'dart:io' show Platform;

class connectDatabase {
  static final db = Db("mongodb+srv://master:simps@hackathon.0vbeskl.mongodb.net/?retryWrites=true&w=majority");

  static Future<void> connect() async {
    if (db.isConnected == false) {
      await db.open();
    }
  }

  

  void addVolunteer(String name, String email, String bio, List interests) async {
    var volunteers = db.collection('volunteers');
    await volunteers.insertOne({
      'id' : ObjectId(),
      'name': name,
      'email': email,
      'bio': bio,
      'interests': interests,
      });
  }

  void addOrganization(String name, String description,String email, List tags)  async {
    var organizations = db.collection('organizations');
    await organizations.insertOne({
      'id' : ObjectId(),
      'name': name,
      'description': description,
      'email': email,
      'tags': tags,
      });
  }

  void addListing(String listingId, String organizationId, String title, String description, String location, String datePosted) async {
    var listings = db.collection('listings');
    await listings.insertOne({
      'id' : ObjectId(),
      'listingId': listingId,
      'organizationId': organizationId,
      'title': title,
      'description': description,
      'location': location,
      'datePosted': datePosted,
      });
  }

  //edit volunteer profile
  void editVolunteer(String name, String email, String profilePicture, String bio, List interests) async {
    var volunteers = db.collection('volunteers');
    await volunteers.update(where.eq('email', email), {
      'id' : ObjectId(),
      'name': name,
      'email': email,
      'profilePicture': profilePicture,
      'bio': bio,
      'interests': interests,
      });
  }

  //edit organization profile
  void editOrganization(String name, String description, String logo, String email, List tags)  async {
    var organizations = db.collection('organizations');
    await organizations.update(where.eq('email', email), {
      'id' : ObjectId(),
      'name': name,
      'description': description,
      'logo': logo,
      'email': email,
      'tags': tags,
      });
  }

  // query to find listings for each organization
  Future<List> findListings(String email) async {
    var listings = db.collection('listings');
    var query = await listings.find(where.eq('email', email)).toList();
    return query;
  }

  Future<List> getVolunteerData(String email) async {
    var volunteers = db.collection('volunteers');
    var query = await volunteers.find(where.eq('email', email)).toList();
    return query;
  }

  Future<List> getOrganizationData(String email) async {
    var organizations = db.collection('organizations');
    var query = await organizations.find(where.eq('email', email)).toList();
    return query;
  }

  Future<List> getOrganizations() async {
    var volunteers = db.collection('organizations');
    var query = await volunteers.find().toList();
    return query;
  }

  //query by tag in organizations which are a list
  Future<List> getOrganizationsByTag(String tag) async {
    var organizations = db.collection('organizations');
    var query = await organizations.find(where.eq('tags', tag)).toList();
    return query;
  }




}