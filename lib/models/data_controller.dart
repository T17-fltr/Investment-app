import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:investment_app/models/data_bindings.dart';


class ExchangeRateController {
  final ExchangeRateBinding binding;

  ExchangeRateController(this.binding);

  Future<void> fetchExchangeRate() async {
    final url = Uri.parse(
      'https://www.alphavantage.co/query'
      '?function=CURRENCY_EXCHANGE_RATE'
      '&from_currency=USD'
      '&to_currency=JPY'
      '&apikey=demo',
    );

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final rateData = data['Realtime Currency Exchange Rate'];

      binding.updateData(
        from: rateData['1. From_Currency Code'],
        to: rateData['3. To_Currency Code'],
        rate: rateData['5. Exchange Rate'],
      );
    }
  }
}
