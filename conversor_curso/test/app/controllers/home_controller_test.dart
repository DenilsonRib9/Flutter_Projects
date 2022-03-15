import 'package:conversor_curso/app/controllers/home_controller.dart';
import 'package:conversor_curso/app/models/currency_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  final homeControler = HomeController(toText: toText, fromText: fromText);

  test('Deve converter de real para dolar com virgula', () {
    toText.text = '2,0';
    homeControler.convert();
    expect(fromText.text, '0.36');
  });

  test('Deve converter de real para dolar com ponto', () {
    toText.text = '2.0';
    homeControler.convert();
    expect(fromText.text, '0.36');
  });
  test('Deve converter de dolar para real com ponto', () {
    toText.text = '1.0';
    homeControler.toCurrency = CurrencyModel(
        name: 'Dolar', real: 5.63, dolar: 1.0, euro: 0.85, bitcoin: 0.000088);
    homeControler.fromCurrency = CurrencyModel(
      name: 'Real',
      real: 1.0,
      dolar: 0.18,
      euro: 0.15,
      bitcoin: 0.000016,
    );
    homeControler.convert();
    expect(fromText.text, '5.63');
  });
}
