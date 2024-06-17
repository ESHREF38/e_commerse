import 'package:e_commerse/widgets/container_button_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartScreen extends StatelessWidget {
  List imagelist = [
    'images/image1.jpg',
    'images/image2.jpg',
    'images/image3.jpg',
    'images/image4.jpg',
  ];

  List productTitles = [
    "Warm Zipper",
    "Knitted Woo!",
    "Zipper Win",
    "Child Win",
  ];

  List prices = [
    "\$300",
    "\$600",
    "\$350",
    "\$60",
  ];

  @override
  Widget build(BuildContext context) {
    bool? index = false;
    

    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                child: ListView.builder(
                  itemCount: imagelist.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(
                            splashRadius: 20,
                            value: true,
                            activeColor: Color(0xFFDB3022),
                            onChanged: (val) {},
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              imagelist[index],
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                productTitles[index],
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Hooded Jacket",
                                style: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                prices[index],
                                style: TextStyle(
                                    color: Color(0xFFDB3022),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.minus,
                                color: Colors.green,
                              ),
                              SizedBox(width: 20),
                              Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(width: 20),
                              Icon(
                                CupertinoIcons.plus,
                                color: Color(0xFFDB3022),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Select All",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Checkbox(
                    value: index,
                    splashRadius: 20,
                    activeColor: Color(0xFFDB3022),
                    onChanged: ( index) {
                      
                    },
                  )
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Payment",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "\$300.00",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFFDB3022),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                child: InkWell(
                  onTap: () {},
                  child: ContainerButtonModel(
                    itext: "Checkout",
                    bgColor: Color(0xFFDB3022),
                    containerWidth: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
