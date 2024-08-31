import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../blocs/app_initialization_bloc.dart';
import '../blocs/home_items_bloc.dart';
import '../models/dining_table_model.dart';
import '../router/app_route.dart';
import '../widgets/home_widgets/table_item_card.dart';
import '../widgets/scrollable_content.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final storage = const FlutterSecureStorage();
  late TabController _tabController;

  @override
  void initState() {
    context.read<HomeItemsBloc>().add(const GetHomeItemsEvent());
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        onTabChanged(_tabController.index);
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void onTabChanged(int tabIndex) {
    if (tabIndex == 0) {
      context.read<HomeItemsBloc>().add(const GetHomeItemsEvent());
    } else {
      context
          .read<HomeItemsBloc>()
          .add(GetHomeItemsEvent(roomCode: 'R$tabIndex'));
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<AppInitializationBloc, AppInitializationState>(
        builder: (context, initState) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: ScrollableContent(
          header: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Table Service',
                    style: theme.textTheme.headlineMedium,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TabBar(
                controller: _tabController,
                labelColor: theme.colorScheme.primary,
                unselectedLabelColor: theme.disabledColor,
                indicatorColor: theme.colorScheme.primary,
                tabs: initState.maybeWhen(
                    orElse: () => [],
                    completed: (rooms) => (rooms ?? [])
                        .map((r) => Tab(
                              text: r.name,
                            ))
                        .toList()),
              ),
            ],
          ),
          slivers: [
            SliverFillRemaining(
              child: TabBarView(
                controller: _tabController,
                physics:
                    const NeverScrollableScrollPhysics(), // Disable default swipe
                children: initState.maybeWhen(
                    orElse: () => [],
                    completed: (rooms) => (rooms ?? [])
                        .map((r) => BlocBuilder<HomeItemsBloc, HomeItemsState>(
                                builder: (context, homeState) {
                              return buildRoomView(homeState.homeItems);
                            }))
                        .toList()),
              ),
            ),
          ],
        ),
      );
    });
  }

  Widget buildRoomView(List<DiningTableModel> diningTables) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 145,
          childAspectRatio: 104 / 128,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemCount: diningTables.length,
        itemBuilder: (context, index) {
          return getTableItemCards(diningTables)[index];
        },
      ),
    );
  }

  List<TableItemCard> getTableItemCards(List<DiningTableModel> diningTables) {
    return List<TableItemCard>.generate(
      diningTables.length,
      (index) => TableItemCard(
        icon: Icons.table_restaurant_sharp,
        label: diningTables[index].tableNo ??
            '', // Generate labels T1, T2, ..., T12
        billPaid: diningTables[index].isPaid == true &&
            diningTables[index].isBusy == false,
        onPressed: () {
          context.router.push(CreateOrderRoute(
            tableNo: diningTables[index].tableNo ?? '',
            roomCode: diningTables[index].room ?? 'DEFAULT',
          ));
        },
      ),
    );
  }
}
