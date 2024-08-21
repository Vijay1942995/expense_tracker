import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';


class Expenses extends StatefulWidget {
 const Expenses({super.key});
 
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }

}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [

    Expense(
      title: 'Flutter Course',
      amount: 19.99,
      date: DateTime.now(),
      category: CategoryItem.work
      ),
      Expense(
      title: 'Cinema',
      amount: 15.59,
      date: DateTime.now(),
      category: CategoryItem.leisure
      )
  ];

 void _openAddExpenseOverlay() {
      showModalBottomSheet(context: context, builder: (ctx) => const NewExpense());
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter ExpenseTracker'),
        actions: [
          IconButton(onPressed: _openAddExpenseOverlay, icon: const Icon(Icons.add)),
        ],
      ),
      body: Column(
        children: [
               const Text('the chart'),
               Expanded(
                child: ExpensesList(expenses: _registeredExpenses),
                ) 
        ],
      ),
      );
  }
     
}