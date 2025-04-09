import 'package:flutter/material.dart';
import 'package:proj_menu_card_team_b/component/category_button.dart';
import 'package:proj_menu_card_team_b/component/menu_header_card.dart';
import 'package:proj_menu_card_team_b/component/menu_item.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MenuHeader(),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Search menu",
                    hintStyle: const TextStyle(color: Color(0xffFAAB7A)),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xffFAAB7A),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(300),
                      borderSide: const BorderSide(color: Color(0xffFAAB7A)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(300),
                      borderSide: const BorderSide(color: Color(0xffFAAB7A)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(300),
                      borderSide: const BorderSide(
                        color: Color(0xffFAAB7A),
                        width: 2.0,
                      ),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                const SizedBox(height: 20),
                // Categories
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      CategoryButton(text: "All", isSelected: true),
                      CategoryButton(text: "Rice Dishes"),
                      CategoryButton(text: "Local Meals"),
                      CategoryButton(text: "Drinks"),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rice Dishes',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '3 items',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                MenuItem(
                  title: 'Asun Pepper Rice',
                  description: 'Basmati Rice with pieces of Asun',
                  price: 'N3,500',
                ),
                const SizedBox(height: 10),
                MenuItem(
                  title: 'Party Jollof',
                  description: 'Flavorful rice cooked',
                  price: 'N3,500',
                ),
                const SizedBox(height: 10),
                MenuItem(
                  title: 'Fried Rice',
                  description: 'Rice stir-fried with vegetables',
                  price: 'N3,500',
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Swallow',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '3 items',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                MenuItem(
                  title: 'Asun Pepper Rice',
                  description: 'Basmati Rice with pieces of Asun',
                  price: 'N3,500',
                ),
                const SizedBox(height: 10),
                MenuItem(
                  title: 'Party Jollof',
                  description: 'Flavorful rice cooked',
                  price: 'N3,500',
                ),
                const SizedBox(height: 10),
                MenuItem(
                  title: 'Fried Rice',
                  description: 'Rice stir-fried with vegetables',
                  price: 'N3,500',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}