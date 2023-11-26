import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(this.expenses, this._removeExpenseHandler, {super.key});

  final List<Expense> expenses;
  final void Function(Expense expense) _removeExpenseHandler;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) {
        return Dismissible(
          onDismissed: (direction) => _removeExpenseHandler(expenses[index]),
          key: ValueKey(expenses[index]),
          child: ExpenseItem(
            expenses[index],
          ),
        );
      },
    );
  }
}
