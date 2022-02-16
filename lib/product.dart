import 'package:assetsproject/models/productmodel.dart';
import 'package:flutter/material.dart';

//edited
List<ChatBubble> products = [
  ChatBubble(
    productName: 'Shoes',
    productId: '1234',
    status: true,
    price: '999',
    img: "file:///Users/mac/Downloads/Black%20T%20Shirt.png",
  ),
  ChatBubble(
    productName: 'T-Shirt',
    productId: '4321',
    status: false,
    price: '399',
    img: "file:///Users/mac/Downloads/Black%20T%20Shirt.png",
  ),
  ChatBubble(
    productName: 'Watches',
    productId: '556',
    status: true,
    price: '999',
    img: "file:///Users/mac/Downloads/Black%20T%20Shirt.png",
  ),
];

class ProductCom extends StatefulWidget {
  const ProductCom({Key? key}) : super(key: key);

  @override
  _ProductComState createState() => _ProductComState();
}

class _ProductComState extends State<ProductCom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ecommerce'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext, index) {
          print(products[index].img);
          return ListTile(
            title: Text(products[index].productName),
            leading: CircleAvatar(
              radius: 26,
              backgroundImage: NetworkImage(
                products[index].img,
              ),
            ),

            // backgroundImage: NetworkImage(products[index].img, scale: 1.0),
            // )
            // Image.network(
            //   products[index].img.toString(),
            //   height: 20,
            //   width: 20,
            // ),
          );
        },
        itemCount: products.length,
      ),
    );
  }
}
