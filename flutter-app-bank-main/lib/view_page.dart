import 'package:flutter/material.dart';

class ViewPage extends StatelessWidget {
  final String name;
  final String identitynumber;
  final String birthdate;
  final String gender;
  final String phonenumber;
  final String lasteducation;
  final String religion;
  final String job;
  final String address;
  final String accounttype;

  ViewPage({
    required this.name,
    required this.identitynumber,
    required this.birthdate,
    required this.gender,
    required this.phonenumber,
    required this.lasteducation,
    required this.religion,
    required this.job,
    required this.address,
    required this.accounttype,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: $name'),
            Text('Identity Number: $identitynumber'),
            Text('Birth Date: $birthdate'),
            Text('Gender: $gender'),
            Text('Phone Number: $phonenumber'),
            Text('Last Education: $lasteducation'),
            Text('Religion: $religion'),
            Text('Job: $job'),
            Text('Address: $address'),
            Text('Account Type: $accounttype'),
          ],
        ),
      ),
    );
  }
}
