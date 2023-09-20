import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../common/text.dart';
import '../constant/category.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        const TopContainer(),
        const SizedBox(
          height: 8,
        ),
        const CustomText(
          text: 'Transaction',
        ),
        CategoryListWidget(),
      ],
    )));
  }
}

class TopContainer extends StatelessWidget {
  const TopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(14),
            bottomRight: Radius.circular(14),
          ),
          boxShadow: [
            BoxShadow(
                blurRadius: 2,
                spreadRadius: 1,
                color: Colors.black,
                offset: Offset(0, 2))
          ]),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 14,
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jhon',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Welcome Back',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          CustomText(
            text: 'Expense',
            color: Colors.white,
          ),
          CustomText(
            text: '\$20',
            color: Colors.white,
            fontSize: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                icon: Icons.arrow_upward,
                title: 'Income',
                value: 20,
                color: Colors.green,
              ),
              Card(
                icon: Icons.arrow_upward,
                title: 'Expense',
                value: 20,
                color: Colors.red,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    this.color,
  });

  final IconData icon;
  final String title;
  final int value;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.40,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: color?.withOpacity(0.3),
            child: Icon(
              icon,
              color: color,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            children: [
              CustomText(
                text: title,
                fontSize: 12,
                color: color,
              ),
              CustomText(
                text: '\$ $value',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )
            ],
          )
        ],
      ),
    );
  }
}

class CategoryListWidget extends StatelessWidget {
  CategoryListWidget({super.key});
  final List<int> amountList = [200, 300, 2, 4, 2];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: categoryList.length,
            itemBuilder: (context, index) {
              return CategoryCard(
                  title: categoryList[index]['title'],
                  amount: amountList[index],
                  index: index);
            }),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {super.key,
      required this.title,
      required this.amount,
      required this.index});
  final String title;
  final int amount;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            spreadRadius: 1,
            blurRadius: 4,
            color: Colors.grey,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: LinearGradient(
                    colors: [
                      categoryList[index]['start'],
                      categoryList[index]['end']
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: const Icon(
                  Icons.shop,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              CustomText(text: title),
            ],
          ),
          Column(
            children: [
              CustomText(
                text: '\$ $amount',
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                text: DateFormat('MMMM').format(
                  DateTime.now(),
                ),
                fontSize: 12,
              ),
            ],
          )
        ],
      ),
    );
  }
}
