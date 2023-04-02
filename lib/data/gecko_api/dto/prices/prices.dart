class PricesDTO {
  final List<PriceDTO> coins;
  const PricesDTO({required this.coins});

  factory PricesDTO.fromJson(Map<String, dynamic> json) {
    final List<PriceDTO> list = [];
    for (final key in json.keys) {
      list.add(PriceDTO(id: key, value: double.parse(json[key]['usd'].toString())));
    }
    return PricesDTO(coins: list);
  }
}

class PriceDTO {
  final String id;
  final double value;
  const PriceDTO({
    required this.id,
    required this.value,
  });
}
