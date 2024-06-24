import 'package:e_commerse/screens/navigation_screen.dart';
import 'package:e_commerse/widgets/container_button_modal.dart';
import 'package:flutter/material.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset(
                "images/success.png",
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Success!",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                ),
              ),
              Text(
                "Your order wil be delivered soon.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "Thanks You for choosing our app",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NavigationScreen()));
              },
              child: ContainerButtonModel(
                itext: "Contine Shopping",
                containerWidth: MediaQuery.of(context).size.width,
                bgColor: Color(0xFFDB3022),
              ),
            ),
          )
        ],
      ),
    );
  }
}
