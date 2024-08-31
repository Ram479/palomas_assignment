import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:palomas_assignment/widgets/scrollable_content.dart';

import '../blocs/create_order_bloc.dart';
import '../blocs/home_items_bloc.dart';
import '../models/order_model.dart';
import '../router/app_route.dart';
import '../utils/utils.dart';
import '../widgets/back_button.dart';

@RoutePage()
class CreateOrderScreen extends StatefulWidget {
  final String tableNo;
  final String roomCode;

  const CreateOrderScreen({
    required this.tableNo,
    required this.roomCode,
  });

  @override
  State<CreateOrderScreen> createState() => _CreateOrderScreenState();
}

class _CreateOrderScreenState extends State<CreateOrderScreen> {
  final Map<String, int> orders = {};

  final List<MenuCategory> menu = [
    MenuCategory(name: 'Bento Box', items: [
      MenuItem(name: 'Chicken (Grilled) Bento Box', price: 17.0),
      MenuItem(name: 'Chicken (Tempura) Bento Box', price: 17.0),
      MenuItem(name: 'Fried Tofu Bento Box', price: 15.0),
      MenuItem(name: 'Grilled Tofu Bento Box', price: 18.0),
    ]),
    MenuCategory(name: 'Cheese cake series', items: [
      MenuItem(name: 'Blueberry Cheese cake (250g)', price: 14.0),
      MenuItem(name: 'Red velvet Cheese cake (250g)', price: 16.0),
      MenuItem(name: 'Dark fantasy Cheese cake (250g)', price: 20.0),
      MenuItem(name: 'Choco vanilla Cheese cake (250g)', price: 17.0),
    ]),
    // Add more categories here
  ];

  double getTotalAmount() {
    return orders.entries.fold(
      0.0,
      (sum, entry) =>
          sum +
          (menu
                  .expand((category) => category.items)
                  .firstWhere((item) => item.name == entry.key)
                  .price *
              entry.value),
    );
  }

  void addToOrder(MenuItem item) {
    setState(() {
      if (orders.containsKey(item.name)) {
        orders[item.name] = orders[item.name]! + 1;
      } else {
        orders[item.name] = 1;
      }
    });
  }

  void removeFromOrder(MenuItem item) {
    setState(() {
      if (orders.containsKey(item.name) && orders[item.name]! > 0) {
        orders[item.name] = orders[item.name]! - 1;
        if (orders[item.name] == 0) {
          orders.remove(item.name);
        }
      }
    });
  }

  double? getPrice(String itemName) {
    for (var category in menu) {
      for (var item in category.items) {
        if (item.name == itemName) {
          return item.price;
        }
      }
    }
    return null; // Return null if the item is not found
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (onInvoked) {
        context.read<HomeItemsBloc>().add(const GetHomeItemsEvent());
      },
      child: ScrollableContent(
        header: const BackNavigationWidget(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Card(
                  margin: const EdgeInsets.all(8.0),
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                const Text(
                                  'Your Orders:',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Total Amount: \$${getTotalAmount().toStringAsFixed(2)}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                              width: MediaQuery.of(context).size.width / 3,
                              child: ElevatedButton(
                                  onPressed: orders.entries.isNotEmpty
                                      ? () async {
                                          final createdOrder = orders.entries
                                              .map((entry) => OrderModel(
                                                  id:
                                                      '${widget.tableNo}_${widget.roomCode}_${getDateFromTimestamp(DateTime.now().millisecondsSinceEpoch)}',
                                                  tableNo: widget.tableNo,
                                                  room: widget.roomCode,
                                                  itemName: entry.key,
                                                  quantity: entry.value,
                                                  price: getPrice(entry.key),
                                                  status: 'In Progress',
                                                  orderCreatedTime: DateTime
                                                          .now()
                                                      .millisecondsSinceEpoch))
                                              .toList();

                                          context
                                              .read<CreateOrderBloc>()
                                              .add(TakeOrderEvent(
                                                tableID:
                                                    '${widget.tableNo}_${widget.roomCode}',
                                                orders: createdOrder,
                                              ));
                                          await Future.delayed(
                                              const Duration(seconds: 1), () {
                                            context.router
                                              ..popUntilRoot()
                                              ..push(const HomeRoute());
                                          });
                                        }
                                      : null,
                                  child: const Text(
                                    'Place Order',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  )),
                            )
                          ],
                        ),
                        const SizedBox(height: 8),
                        if (orders.isEmpty)
                          const Text('No items added yet.')
                        else
                          ListView(
                            shrinkWrap: true,
                            children: orders.entries.map((entry) {
                              return ListTile(
                                title: Text(entry.key),
                                trailing: Text('Quantity: ${entry.value}'),
                              );
                            }).toList(),
                          ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Menu:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 1.5,
                  child: ListView.builder(
                    itemCount: menu.length,
                    itemBuilder: (context, index) {
                      final category = menu[index];
                      return ExpansionTile(
                        title: Text(category.name),
                        children: category.items.map((item) {
                          return ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(item.name),
                                Text('\$${item.price.toStringAsFixed(2)}',
                                    style: const TextStyle(
                                        fontSize: 14, color: Colors.grey)),
                              ],
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.remove),
                                  onPressed: orders[item.name] != null &&
                                          orders[item.name]! > 0
                                      ? () => removeFromOrder(item)
                                      : null,
                                ),
                                Text('${orders[item.name] ?? 0}'),
                                IconButton(
                                  icon: const Icon(Icons.add),
                                  onPressed: () => addToOrder(item),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuCategory {
  final String name;
  final List<MenuItem> items;

  MenuCategory({
    required this.name,
    required this.items,
  });
}

class MenuItem {
  final String name;
  final double price;

  MenuItem({
    required this.name,
    required this.price,
  });
}
