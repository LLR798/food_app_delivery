import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_delivery_app/Widgets/custom_app_bar.dart';
import 'package:food_delivery_app/Widgets/custom_drawer.dart';
import 'package:food_delivery_app/Widgets/custom_item_nav_bar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: ListView(
          children: [
            const CustomAppBar(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                'assets/images/burger.png',
                height: 300,
              ),
            ),
            Arc(
              edge: Edge.TOP,
              arcType: ArcType.CONVEY,
              height: 30,
              child: Container(
                width: double.infinity,
                color: const Color(0xFFF3F3F3),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 60, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RatingBar.builder(
                              initialRating: 5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 18,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 2),
                              itemBuilder: (context, _) =>
                                  const Icon(Icons.star,
                                  color: Color(0xFF0808DD),),
                              onRatingUpdate: (index) {},
                            ),
                            const Text(
                              'R\$: 30',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          bottom: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Monster Burguer',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              width: 90,
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: const Color(0xFF0808DD),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Icon(
                                    Icons.remove,
                                    color: Color(0xFFF3F3F3),
                                    size: 20,
                                  ),
                                  Text(
                                    '1',
                                    style: TextStyle(
                                      color: Color(0xFFF3F3F3),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.add,
                                    color: Color(0xFFF3F3F3),
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: Text(
                          'Prove nosso Monster Burger, é o mais famoso da casa e você vai amar! Estamos com esse preço promocional, para que possam pedir mais vezes.',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Tempo de espera: ',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.justify,
                            ),
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Icon(Icons.timer_outlined,
                                  color: Color(0xFF0808DD),
                                  ),
                                ),
                                Text(
                                  '30 minutos',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: const CustomDrawer(),
      bottomNavigationBar: const CustomItemNavBar(),
    );
  }
}
