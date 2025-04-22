class GoodsModel {
  final String imgUrl;
  final String title;
  final double price;
  final bool isHot;
  final bool isCollect;

  GoodsModel({
    required this.isHot,
    required this.title,
    required this.price,
    required this.imgUrl,
    required this.isCollect,
  });

  // 从JSON创建对象（反序列化）
  factory GoodsModel.fromJson(Map<String, dynamic> json) {
    return GoodsModel(
      imgUrl: json['imgUrl'],
      title: json['title'],
      price: json['price'],
      isHot: json['isHot'],
      isCollect: json['isCollect'],
    );
  }

  // 转换为JSON（序列化）
  Map<String, dynamic> toJson() {
    return {
      'imgUrl': imgUrl,
      'title': title,
      'price': price,
      'isHot': isHot,
      'isCollect': isCollect,
    };
  }

  @override
  String toString() {
    return 'GoodsModel{imgUrl: $imgUrl, title: $title, price: $price, isHot: $isHot, isCollect: $isCollect}';
  }
}
