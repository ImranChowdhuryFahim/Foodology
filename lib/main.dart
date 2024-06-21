import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:foodology/core/common/cubits/dark_mode/dark_mode_cubit.dart';
import 'package:foodology/core/common/widgets/gradient_background.dart';
import 'package:foodology/core/secrets/app_secrets.dart';
import 'package:foodology/core/theme/theme.dart';
import 'package:foodology/features/common/presentation/pages/first_page.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await Supabase.initialize(
      url: AppSecrets.supabaseUrl, anonKey: AppSecrets.supabaseAnonKey);
  await Hive.initFlutter();
  await Hive.openBox('settings');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DarkModeCubit(Hive.box('settings')),
      child: BlocBuilder<DarkModeCubit, bool>(
        builder: (context, isDarkMode) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Foodology',
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: isDarkMode? ThemeMode.dark : ThemeMode.light,
             builder: (context, child) {
                    return GradientBackground(child: child!);
                  },
            home: const FirstPage(),
          );
        }
      ),
    );
  }
}
