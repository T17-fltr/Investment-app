class CurrencyExchangeRate {
  final String fromCurrencyCode;
  final String fromCurrencyName;
  final String toCurrencyCode;
  final String toCurrencyName;
  final String exchangeRate;
  final String lastRefreshed;
  final String timeZone;
  final String bidPrice;
  final String askPrice;

  CurrencyExchangeRate({
    required this.fromCurrencyCode,
    required this.fromCurrencyName,
    required this.toCurrencyCode,
    required this.toCurrencyName,
    required this.exchangeRate,
    required this.lastRefreshed,
    required this.timeZone,
    required this.bidPrice,
    required this.askPrice,
  });

  factory CurrencyExchangeRate.fromJson(Map<String, dynamic> json) {
    final data = json['Realtime Currency Exchange Rate'];

    return CurrencyExchangeRate(
      fromCurrencyCode: data['1. From_Currency Code'],
      fromCurrencyName: data['2. From_Currency Name'],
      toCurrencyCode: data['3. To_Currency Code'],
      toCurrencyName: data['4. To_Currency Name'],
      exchangeRate: data['5. Exchange Rate'],
      lastRefreshed: data['6. Last Refreshed'],
      timeZone: data['7. Time Zone'],
      bidPrice: data['8. Bid Price'],
      askPrice: data['9. Ask Price'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Realtime Currency Exchange Rate': {
        '1. From_Currency Code': fromCurrencyCode,
        '2. From_Currency Name': fromCurrencyName,
        '3. To_Currency Code': toCurrencyCode,
        '4. To_Currency Name': toCurrencyName,
        '5. Exchange Rate': exchangeRate,
        '6. Last Refreshed': lastRefreshed,
        '7. Time Zone': timeZone,
        '8. Bid Price': bidPrice,
        '9. Ask Price': askPrice,
      }
    };
  }
}
