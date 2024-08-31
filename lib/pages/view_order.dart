import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:palomas_assignment/blocs/view_order_bloc.dart';

import '../blocs/home_items_bloc.dart';
import '../router/app_route.dart';

@RoutePage()
class ViewOrderPage extends StatefulWidget {
  const ViewOrderPage({super.key});

  @override
  State<ViewOrderPage> createState() => _ViewOrderPageState();
}

class _ViewOrderPageState extends State<ViewOrderPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    context
        .read<ViewOrdersBloc>()
        .add(const GetViewOrdersEvent(status: 'In Progress'));
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        _onTabTapped(_tabController.index);
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _onTabTapped(int index) {
    // Call a function when a tab is tapped
    print('Tab $index tapped');
    switch (index) {
      case 0:
        context
            .read<ViewOrdersBloc>()
            .add(const GetViewOrdersEvent(status: 'In Progress'));
      case 1:
        context
            .read<ViewOrdersBloc>()
            .add(const GetViewOrdersEvent(status: 'Completed'));
      default:
        context
            .read<ViewOrdersBloc>()
            .add(const GetViewOrdersEvent(status: 'In Progress'));
    }
    // You can perform other actions here based on the index
    // e.g., fetching data, updating state, etc.
  }

  final List<Order> orders1 = [
    Order(tableNo: 'Table 1', roomNo: 'Room A', orderId: 'Order 001'),
    Order(tableNo: 'Table 2', roomNo: 'Room B', orderId: 'Order 002'),
  ];

  final List<Order> orders2 = [
    Order(tableNo: 'Table 3', roomNo: 'Room C', orderId: 'Order 003'),
    Order(tableNo: 'Table 4', roomNo: 'Room D', orderId: 'Order 004'),
  ];

  final List<Order> orders3 = [
    Order(tableNo: 'Table 5', roomNo: 'Room E', orderId: 'Order 005'),
    Order(tableNo: 'Table 6', roomNo: 'Room F', orderId: 'Order 006'),
  ];

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (invoke) {
        context.read<HomeItemsBloc>().add(const GetHomeItemsEvent());
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Order Details'),
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'In progress'),
              Tab(text: 'Completed'),
            ],
            isScrollable: false, // Disable swipe
            onTap: _onTabTapped, // Handle tab tap
          ),
        ),
        body: BlocBuilder<ViewOrdersBloc, ViewOrdersState>(
            builder: (context, ordersState) {
          return TabBarView(
            controller: _tabController,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              _buildOrderList(ordersState.orderList),
              _buildOrderList(ordersState.orderList),
            ],
          );
        }),
      ),
    );
  }

  Widget _buildOrderList(List<OrderWrapper> orders) {
    return ListView(
      children: orders.map((order) {
        return Card(
          margin: const EdgeInsets.all(8.0),
          elevation: 4.0,
          child: ListTile(
            contentPadding: const EdgeInsets.all(16.0),
            title: Text('Table ID: ${order.tableId}'),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 3,
                  child: ElevatedButton(
                      onPressed: () {
                        context.read<ViewOrdersBloc>().add(MarkOrderPaidEvent(
                              tableID: order.tableId,
                              orderList: order,
                            ));
                      },
                      child: const Text(
                        'Mark as Paid',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      )),
                ),
                Text('Bill Amount : \$${order.billAmount}'),
              ],
            ),
            subtitle: Column(
              children: order.orders
                  .map((o) => SizedBox(
                      width: MediaQuery.of(context).size.width / 3.5,
                      child: Text('${o.itemName} : ${o.quantity}')))
                  .toList(),
            ),
          ),
        );
      }).toList(),
    );
  }
}

class Order {
  final String tableNo;
  final String roomNo;
  final String orderId;

  Order({
    required this.tableNo,
    required this.roomNo,
    required this.orderId,
  });
}
