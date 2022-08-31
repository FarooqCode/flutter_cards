import 'package:awesome_card/extra/card_type.dart';
import 'package:awesome_card/style/card_background.dart';
import 'package:flutter/material.dart';
import 'package:awesome_card/credit_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card Example'),
          centerTitle: true,
        ),
        backgroundColor: Colors.amber,
        body: MyCardWidget(),
      ),
    );
  }
}

class MyCardWidget extends StatefulWidget {
  MyCardWidget({Key? key}) : super(key: key);

  @override
  State<MyCardWidget> createState() => _MyCardWidgetState();
}

class _MyCardWidgetState extends State<MyCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 300,
            height: 200,
            padding: const EdgeInsets.all(10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.red,
              elevation: 10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    textColor: Colors.white,
                    leading: Icon(Icons.album, size: 60),
                    title: Text('Sonu Nigam', style: TextStyle(fontSize: 30.0)),
                    subtitle: Text('Best of this this Album',
                        style: TextStyle(fontSize: 18.0)),
                  ),
                  ButtonBar(
                    children: <Widget>[
                      MaterialButton(
                        color: Colors.white,
                        child: const Text('Play'),
                        onPressed: () {/* ... */},
                      ),
                      MaterialButton(
                        child: const Text('Pause'),
                        onPressed: () {/* ... */},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          CreditCard(
            cardNumber: '3243 2342 2342 2342',
            cardExpiry: '10/25',
            cardHolderName: "card holder",
            bankName: 'Axis Bank',
            cardType: CardType.masterCard,
            frontBackground: CardBackgrounds.black,
            backBackground: CardBackgrounds.white,
            showShadow: true,
            textName: 'Name',
            textExpiry: 'MM/YY',
          )
        ],
      ),
    );
  }
}
