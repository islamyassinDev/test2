import 'package:flutter/material.dart';

class Model {
  final String firstName;
  final String lastName;
  final int age;
  final String email;
  final String address;

  Model({
    this.firstName,
    this.lastName,
    this.age,
    this.email,
    @required this.address,
  });
}

List<Model> data = [
  Model(
      firstName: 'osama',
      lastName: 'mahmoud',
      age: 22,
      email: 'osama@gmail.com',
      address: 'giza'),
  Model(
    lastName: 'taha',
    age: 33,
    firstName: 'islam',
    email: 'eng.islamyassin25@gmail.com',
    address: 'no data',
  ),
  Model(
      firstName: 'mohammed',
      lastName: 'othman',
      age: 24,
      email: 'mohammed@gmail.com',
      address: ''),
  Model(
      firstName: 'mahmoud',
      lastName: 'ali',
      age: 20,
      email: 'mahmoud@gmail.com',
      address: ''),
  Model(
      firstName: 'hamed',
      lastName: 'moustafa',
      age: 44,
      email: 'moustafa@gmail.com',
      address: ''),
  Model(
      firstName: 'asmaa',
      lastName: 'medhat',
      age: 29,
      email: 'asmaa@gmail.com',
      address: ''),
  Model(
      firstName: 'kholoud',
      lastName: 'morsy',
      age: 37,
      email: 'kholoud@gmail.com',
      address: ''),
  Model(
      firstName: 'mahmoud',
      lastName: 'ali',
      age: 20,
      email: 'mahmoud@gmail.com',
      address: ''),
  Model(
      firstName: 'hamed',
      lastName: 'moustafa',
      age: 44,
      email: 'moustafa@gmail.com',
      address: ''),
  Model(
      firstName: 'asmaa',
      lastName: 'medhat',
      age: 29,
      email: 'asmaa@gmail.com',
      address: ''),
  Model(
      firstName: 'kholoud',
      lastName: 'morsy',
      age: 37,
      email: 'kholoud@gmail.com',
      address: ''),
  Model(
      firstName: 'mahmoud',
      lastName: 'ali',
      age: 20,
      email: 'mahmoud@gmail.com',
      address: ''),
  Model(
      firstName: 'hamed',
      lastName: 'moustafa',
      age: 44,
      email: 'moustafa@gmail.com',
      address: ''),
  Model(
      firstName: 'asmaa',
      lastName: 'medhat',
      age: 29,
      email: 'asmaa@gmail.com',
      address: ''),
  Model(
      firstName: 'kholoud',
      lastName: 'morsy',
      age: 37,
      email: 'kholoud@gmail.com',
      address: ''),
];
