import 'package:e_commerse/screens/cart_screen.dart';
import 'package:e_commerse/widgets/container_button_modal.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductDetailsPopUp extends StatelessWidget {
  final iStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );

  List<Color> clrs = [
    Colors.red,
    Colors.green,
    Colors.indigo,
    Colors.amber,
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) => Container(
            height: MediaQuery.of(context).size.height / 2.5,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
            child: Padding(
              padding: EdgeInsets.all(
                (30),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Size",
                            style: iStyle,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Color",
                            style: iStyle,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Total",
                            style: iStyle,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Text("S", style: iStyle),
                              SizedBox(width: 30),
                              Text("M", style: iStyle),
                              SizedBox(width: 30),
                              Text("L", style: iStyle),
                              SizedBox(width: 30),
                              Text("XL", style: iStyle),
                              SizedBox(width: 30),
                            ],
                          ),
                          SizedBox(height: 18),
                          Container(
                            child: Row(
                              children: [
                                for (var i = 0; i < 4; i++)
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: clrs[i],
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Text("-", style: iStyle),
                              SizedBox(width: 10),
                              Text("1", style: iStyle),
                              SizedBox(width: 10),
                              Text("+", style: iStyle),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Payment0",
                        style: iStyle,
                      ),
                      Text(
                        "\$40.00",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFDB3022)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CartScreen(),
                          ));
                    },
                    child: ContainerButtonModel(
                      containerWidth: MediaQuery.of(context).size.width,
                      itext: "Checkout",
                      bgColor: Color(0xFFDB3022),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
      child: ContainerButtonModel(
        containerWidth: MediaQuery.of(context).size.width / 1.5,
        itext: "Buy Now",
        bgColor: Color(
          0xFFDB3022,
        ),
      ),
    );
  }
}
