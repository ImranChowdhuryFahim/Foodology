import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:foodology/core/common/cubits/dark_mode/dark_mode_cubit.dart';
import 'package:foodology/core/common/cubits/user_info/user_info_cubit.dart';
import 'package:foodology/core/common/widgets/gradient_background.dart';
import 'package:foodology/core/secrets/app_secrets.dart';
import 'package:foodology/core/theme/theme.dart';
import 'package:foodology/features/common/presentation/pages/first_page.dart';
import 'package:foodology/features/dashboard/admin/presentation/pages/admin_dashboard.dart';
import 'package:foodology/features/dashboard/customer/presentation/pages/customer_homepage.dart';
import 'package:foodology/features/dashboard/restaurant/presentation/pages/restaurant_homepage.dart';
import 'package:foodology/features/dashboard/rider/presentation/pages/rider_homepage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'dart:convert';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await Supabase.initialize(
      url: AppSecrets.supabaseUrl, anonKey: AppSecrets.supabaseAnonKey);
  await Hive.initFlutter();
  await Hive.openBox('settings');
  await Hive.openBox('userInfo');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => DarkModeCubit(Hive.box('settings'))),
        BlocProvider(create: (context) => UserInfoCubit(Hive.box('userInfo')))
      ],
      child: BlocBuilder<DarkModeCubit, bool>(builder: (context, isDarkMode) {
        return BlocBuilder<UserInfoCubit, dynamic>(
            builder: (context, userInfo) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Foodology',
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
            builder: (context, child) {
              return GradientBackground(child: child!);
            },
            home: BlocSelector<UserInfoCubit, dynamic, dynamic>(
              selector: (state) =>
                  state == null ? null : jsonDecode(state)['usertype'],
              builder: (context, state) => state == null
                  ? const FirstPage()
                  : state == 'customer'
                      ? CustomerHomepage()
                      : state == 'admin'
                          ? const AdminDashboard()
                          : state == 'rider'
                              ? RiderHomepage()
                              : state == 'restaurant'
                                  ? RestaurantHomepage()
                                  : const FirstPage(),
            ),
          );
        });
      }),
    );
  }
}
