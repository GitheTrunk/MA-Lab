import 'package:go_router/go_router.dart';

import '../models/catalog_item.dart';
import '../screens/checkout_page.dart';
import '../screens/home_page.dart';
import '../screens/item_details_page.dart';
import '../screens/profile_page.dart';

final appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(path: '/', redirect: (_, _) => '/home'),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
          path: 'item/:id',
          builder: (context, state) {
            final item = CatalogItem.findById(state.pathParameters['id']);
            return ItemDetailsPage(item: item);
          },
        ),
      ],
    ),
    GoRoute(path: '/profile', builder: (context, state) => const ProfilePage()),
    GoRoute(
      path: '/checkout/:id',
      builder: (context, state) {
        final item = CatalogItem.findById(state.pathParameters['id']);
        return CheckoutPage(item: item);
      },
    ),
  ],
);
