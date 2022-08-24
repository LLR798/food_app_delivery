import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 15,
      ),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xFFEAEAEA),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF9A9A9A).withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            children: [
              const Icon(
                Icons.search,
                color: Color(0xFF8E8E8E),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                height: 50,
                // width: 300,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'O que você quer comer?',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const Icon(Icons.filter_list),
            ],
          ),
        ),
      ),
    );
  }
}
