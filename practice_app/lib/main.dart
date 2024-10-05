import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int count = 0;
  int quantity = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Shoes ",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          ),
          actions: const [
            Icon(
              Icons.shopping_cart,
              color: Colors.purple,
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 450,
                width: 800,
                color: Colors.amber,
                child: Image.network(
                  "https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Nike Air Force 1'07",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 110,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.purple),
                      child: const Text(
                        "SHOES",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 150,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.purple),
                      //color: Colors.purple,
                      child: const Text(
                        "FOOTWEAR",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "With iconic style and legendery comfort , the AF-1 was made to be warn on repost. This iteration puts a frseh spin on the hoopscassic with crisp leather, era echoing '80s construction and reflective design swooth logos.",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Container(
                    child: const Text(
                      "Quantity",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    child: const Icon(Icons.remove),
                    onTap: () {
                      if (quantity > 0) {
                        quantity--;
                      } else {
                        quantity = 0;
                      }
                      setState(() {});
                    },
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    //padding: const EdgeInsets.all(10),
                    //alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    padding: const EdgeInsets.only(left: 9),
                    color: Colors.pink[50],
                    child: Text(
                      "$quantity",
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    child: const Icon(Icons.add),
                    onTap: () {
                      quantity++;

                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                height: 50,
                width: 380,
                padding:
                    const EdgeInsets.symmetric(horizontal: 130, vertical: 10),

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.purple),
                //color: Colors.purple,
                child: const Text(
                  "PURCHASE",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
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
