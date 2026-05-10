import 'package:flutter/material.dart';
import 'package:toonflix/wigets/button.dart';
import 'package:toonflix/wigets/currency_card.dart';

void widgetbasic() {
  runApp(WidgetBasicApp());
}

class WidgetBasicApp extends StatelessWidget {
  const WidgetBasicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Hey, Selena',
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.5),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 15),
              Text(
                "Total Balence",
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.6),
                  fontSize: 18,
                ),
              ),
              Text(
                "\$5,194.69",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 44,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                    text: "Transfer",
                    bgColor: Colors.amber,
                    textColor: Colors.black,
                  ),
                  Button(
                    text: "Request",
                    bgColor: Colors.grey[800]!,
                    textColor: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Wallets",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.6),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              CurrencyCard(
                name: "Euro",
                code: "EUR",
                amount: "6 428",
                icon: Icons.euro_symbol_rounded,
                isInverted: false,
                order: 0,
              ),
              CurrencyCard(
                name: "Dollar",
                code: "USD",
                amount: "1 282",
                icon: Icons.attach_money_rounded,
                isInverted: true,
                order: 2.5,
              ),
              CurrencyCard(
                name: "Korean",
                code: "KRW",
                amount: "5 000",
                icon: Icons.waving_hand_rounded,
                isInverted: false,
                order: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
