import 'package:go_router/go_router.dart';
import 'package:ktaby_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:ktaby_app/Features/home/presentation/views/books_detials_view.dart';
import 'package:ktaby_app/Features/home/presentation/views/home_view.dart';

abstract class AppRouter {
  static const kHomeView='/HomeView';
  static const kBooksDetailsView='/BooksDetailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBooksDetailsView,
        builder: (context, state) => const BooksDetailsView(),
      ),
    ],
  );
}
