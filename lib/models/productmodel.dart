// To parse this JSON data, do
//
//     final chatBubble = chatBubbleFromJson(jsonString);

import 'dart:convert';

ChatBubble chatBubbleFromJson(String str) =>
    ChatBubble.fromJson(json.decode(str));

String chatBubbleToJson(ChatBubble data) => json.encode(data.toJson());

class ChatBubble {
  ChatBubble({
    required this.productName,
    required this.productId,
    required this.status,
    required this.price,
    required this.img,
  });

  String productName;
  String productId;
  bool status;
  String price;
  String img;

  factory ChatBubble.fromJson(Map<String, dynamic> json) => ChatBubble(
        productName: json["productName"],
        productId: json["productId"],
        status: json["status"],
        price: json["price"],
        img: json["img"],
      );

  Map<String, dynamic> toJson() => {
        "productName": productName,
        "productId": productId,
        "status": status,
        "price": price,
        "img": img,
      };
}
