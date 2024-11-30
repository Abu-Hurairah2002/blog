import 'package:blog/bottomAppBar_views/my_bookmarks.dart';
import 'package:blog/exports.dart';
import 'package:blog/provider/auth_provider.dart';
import 'package:blog/start_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => AuthProvider(), // Create the provider here
    child: MyApp(),

  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType){
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: StartScreen(),
        );
      }
    );
  }
}
