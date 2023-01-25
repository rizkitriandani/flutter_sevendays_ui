import 'package:flutter/material.dart';

import '../widgets/theme.dart';

class FirstCheckout extends StatelessWidget {
  const FirstCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: alabaster2,
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, bottom: 24),
        child: Stack(
          children: [
            ListView(
              physics: MediaQuery.of(context).viewInsets.bottom > 0
                  ? null
                  : const ScrollPhysics(),
              shrinkWrap: true,
              children: [
                Center(
                  child: Text(
                    'My Shopping Cart',
                    style: blackTs.copyWith(
                        fontWeight: FontWeight.w600, fontSize: 22),
                  ),
                ),
                const SizedBox(height: 30),
                const FoodItem(
                  imageUri: 'assets/img_burger.png',
                  quantity: 3,
                  price: 45,
                  foodName: 'Burger Maletta',
                  restoName: 'McTheone',
                ),
                const SizedBox(height: 26),
                const FoodItem(
                  imageUri: 'assets/img_mojito.png',
                  quantity: 3,
                  price: 25,
                  foodName: 'Brazilian Mojito',
                  restoName: 'Alabasta',
                ),
                const SizedBox(height: 26),
                const FoodItem(
                  imageUri: 'assets/img_mojito.png',
                  quantity: 3,
                  price: 25,
                  foodName: 'Brazilian Mojito',
                  restoName: 'Alabasta',
                ),
                const SizedBox(height: 26),
                const InformationCard(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.17),
              ],
            ),
            Positioned(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: sunglow, shape: const StadiumBorder()),
                    child: Text(
                      "Checkout Now",
                      style: primaryBtnTs,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: alto, shape: const StadiumBorder()),
                    child: Text(
                      "Save to Wishlist",
                      style: secondaryBtnTs,
                    ),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

class InformationCard extends StatelessWidget {
  const InformationCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      height: 161,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(17)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Informations', style: blackTs),
          const SizedBox(height: 10),
          const CheckoutInfo(
            label: 'Sub total',
            value: 600,
          ),
          const SizedBox(height: 10),
          const CheckoutInfo(
            label: 'Delivery',
            value: 600,
          ),
          const SizedBox(height: 10),
          const CheckoutInfo(
            label: 'Total',
            value: 600,
            isBold: true,
          ),
        ],
      ),
    );
  }
}

class CheckoutInfo extends StatelessWidget {
  final String label;
  final int value;
  final bool isBold;
  const CheckoutInfo({
    Key? key,
    required this.label,
    required this.value,
    this.isBold = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label,
            style: blackTs.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            )),
        Text('\$$value',
            style: blackTs.copyWith(
              fontSize: 16,
              fontWeight: isBold ? FontWeight.bold : FontWeight.w400,
            )),
      ],
    );
  }
}

class FoodItem extends StatelessWidget {
  final String? imageUri;
  final String foodName;
  final String restoName;
  final int quantity;
  final int price;

  const FoodItem({
    Key? key,
    this.imageUri,
    required this.foodName,
    required this.restoName,
    required this.quantity,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 140,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(17)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  imageUri != null
                      ? Image.asset(
                          imageUri!,
                          width: 80,
                        )
                      : Container(
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Container(),
                        ),
                  const SizedBox(width: 16),
                  RichText(
                    text: TextSpan(text: foodName, style: blackTs, children: [
                      TextSpan(
                        text: '\n$restoName',
                        style: restoNameTs,
                      )
                    ]),
                  ),
                ],
              ),
              const SizedBox(height: 13),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ItemQuantity(
                      quantity: quantity,
                    ),
                    Text(
                      "\$${price * quantity}",
                      style: blackTs,
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class ItemQuantity extends StatelessWidget {
  final int quantity;
  const ItemQuantity({
    Key? key,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(
            'assets/ic_remove.png',
            width: 22,
          ),
          Text('$quantity', style: blackTs.copyWith(fontSize: 18)),
          Image.asset(
            'assets/ic_add.png',
            width: 22,
          ),
        ],
      ),
    );
  }
}
