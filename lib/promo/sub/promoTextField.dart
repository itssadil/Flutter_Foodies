import 'package:flutter/material.dart';

class PromoTextField extends StatefulWidget {
  const PromoTextField({Key? key}) : super(key: key);

  @override
  _PromoTextFieldState createState() => _PromoTextFieldState();
}

class _PromoTextFieldState extends State<PromoTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Form(
        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Promo...',
              contentPadding: EdgeInsets.all(10),
              suffixIcon:
                  ElevatedButton(onPressed: () {}, child: Text('Apply'))),
        ),
      ),
    );
  }
}
