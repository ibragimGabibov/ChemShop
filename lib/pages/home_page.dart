import 'package:flutter/material.dart';
import 'package:gyuko/main.dart';
import 'package:gyuko/misc/data.dart';
import 'package:gyuko/pages/product_page.dart';
import 'package:gyuko/pages/registration_authorisation_page.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {Key? key,
      required this.imagePath,
      required this.name,
      required this.price})
      : super(key: key);

  final String imagePath;
  final String name;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.amber),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            child: Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ),
          Container(
            child: Text(
              '\₽$price',
              style: TextStyle(
                color: Color(0xFF2FAC05),
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appName,
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 15),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Center(
                    child: Authorisation(
                      isAuthorized: authorized,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.amber),
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Container(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 30,
                        crossAxisSpacing: 30,
                        crossAxisCount: 2,
                        childAspectRatio: 0.75,
                      ),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductPage(
                                  imagePath: products[index].imagePath,
                                  name: products[index].name,
                                  price: products[index].price,
                                  brand: products[index].brand,
                                  ID: products[index].ID,
                                ),
                              ),
                            );
                          },
                          child: ProductCard(
                            imagePath: products[index].imagePath,
                            name: products[index].name,
                            price: products[index].price,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
