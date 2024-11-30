import 'package:blog/exports.dart';
import 'package:get/get.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
          child: Center(
            child: Column(
              //  mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.app_icon,
                  width: 30.h,
                  height: 20.h,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Welcome to BlogVoyage.",
                  style: GoogleFonts.lora(
                  fontWeight: FontWeight.w600,
                    fontSize: 40,
                    color: AppColors.black
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15.h,
                ),
                CustomButton(
                  textColor: AppColors.black,
                  text: "Login",
                  height: 7.h,
                  width: 50.w,
                  enableBorder: true,
                  borderColor: AppColors.black,
                  onPressed: () {
                    Get.to(AuthScreen());
                  },
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  height: 2.h,
                ),
                CustomButton(
                  textColor: AppColors.white,
                  text: "Sign Up",
                  height: 7.h,
                  width: 50.w,
                  enableBorder: true,
                  // borderColor: AppColors.black,
                  onPressed: () {
                    Get.to(AuthScreen());
                  },
                  backgroundColor: AppColors.black,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
