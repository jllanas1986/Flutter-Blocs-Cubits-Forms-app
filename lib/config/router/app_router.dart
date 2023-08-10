import 'package:forms_app/presentation/screens/bloc_counter_screen.dart';
import 'package:forms_app/presentation/screens/cubit_counter_screen.dart';
import 'package:forms_app/presentation/screens/home_screen.dart';
import 'package:forms_app/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),

  GoRoute(
    path: '/cubits',
    builder: (context, state) => const CubitCouterScreen(),
  ),

  GoRoute(
    path: '/counter-bloc',
    builder: (context, state) => const BlocCouterScreen(),
  ),

  GoRoute(
    path: '/new-user',
    builder: (context, state) => const RegisterScreen(),
  ),

]);
