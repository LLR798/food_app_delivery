import 'package:flutter/material.dart';

class CustomCartNavBar extends StatelessWidget {
  const CustomCartNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text('Total:', 
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 15),
                Text('R\$ 77,00', 
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            ElevatedButton(onPressed: (){},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF0808DD),
              ),
              padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            child: Text('Finalizar compra',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}