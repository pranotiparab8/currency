import 'package:flutter/material.dart';

void main() => runApp(Currency());

class Currency extends StatefulWidget {
  Currency({Key? key}) : super(key: key);

  @override
  State<Currency> createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  final TextEditingController _controller = TextEditingController();
  double us = 0;
  double afgani = 0;
  double albania = 0;
  double algeria = 0;
  double angolan = 0;
  double argentina = 0;
  double armenia = 0;
  double aruban = 0;
  double australia = 0;
  double manat = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Currency Converter"),
          ),
          body: Column(
            children: [
              Text(
                "Indian Rupees",
                style: TextStyle(fontSize: 30),
              ),
              TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                style: const TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      us = double.parse(_controller.value.text) * 0.012;
                      afgani = double.parse(_controller.value.text) * 1.06;
                      albania = double.parse(_controller.value.text) * 1.27;
                      algeria = double.parse(_controller.value.text) * 1.65;
                      angolan = double.parse(_controller.value.text) * 6.56;
                      argentina = double.parse(_controller.value.text) * 2.81;
                      armenia = double.parse(_controller.value.text) * 4.65;
                      aruban = double.parse(_controller.value.text) * 0.022;
                      australia = double.parse(_controller.value.text) * 0.018;
                      manat = double.parse(_controller.value.text) * 0.021;
                    });
                  },
                  child: Text("Convert")),
              moneyExchange("United States Doller", "$us"),
              moneyExchange("Afgan Afgani        ", "$afgani"),
              moneyExchange("Albanian Lek", "$albania"),
              moneyExchange("Algerian Dinar", "$algeria"),
              moneyExchange("Angolan Kwanza", "$angolan"),
              moneyExchange("Argentine Peso", "$argentina"),
              moneyExchange("Armenian Dram", "$armenia"),
              moneyExchange("Aruban Florin", "$aruban"),
              moneyExchange("Australian Doller", "$australia"),
              moneyExchange("Azerbaijani Manat", "$manat"),
            ],
          )),
    );
  }

  Row moneyExchange(String text, String money) {
    return Row(children: [
      Text(
        text,
        style: TextStyle(fontSize: 20),
      ),
      SizedBox(width: 20),
      Text(money, style: TextStyle(fontSize: 20)),
    ]);
  }
}
