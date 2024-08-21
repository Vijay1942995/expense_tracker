
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

enum CategoryItem {
  food,
  travel,
  leisure,
  work
}
final formatter = DateFormat.yMd();
const categoryIcon = {
  CategoryItem.food: Icons.lunch_dining,
  CategoryItem.travel: Icons.flight_takeoff,
  CategoryItem.leisure: Icons.movie,
  CategoryItem.work: Icons.work,
};

class Expense {
 static const uuid = Uuid();
Expense(
  {
    required this.title, 
    required this.amount, 
    required this.date,
    required this.category,
    }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final CategoryItem category;

  get formattedDate {
    return formatter.format(date);
  }

}