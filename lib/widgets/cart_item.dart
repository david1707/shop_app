import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String id;
  final double price;
  final int quantity;
  final String title;

  CartItem(this.id, this.price, this.quantity, this.title);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      child: Card(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: ListTile(
              leading: CircleAvatar(child: Text('$price \$')),
              title: Padding(
                  padding: EdgeInsets.all(5),
                  child: FittedBox(child: Text(title))),
              subtitle: Text('Total: ${(price * quantity)} \$'),
              trailing: Text('$quantity X '),
            ),
          )),
    );
  }
}
