import 'package:blog/exports.dart';
import 'package:get/get.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool isSignUpSelected = true;
  final emailController = TextEditingController();
  final pwdController = TextEditingController();
  final hintName = TextEditingController();
  final ConfirmpwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(AppImages.app_icon),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Create a new account to get started.",
                  style: GoogleFonts.lora(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(25), // Rounded corners
                    ),
                    child: Row(
                      children: [
                        // Sign Up Button
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isSignUpSelected = true;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: isSignUpSelected
                                    ? AppColors.black
                                    : AppColors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(25),
                                    bottomRight: Radius.circular(25)),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "Sign up",
                                style: GoogleFonts.roboto(
                                    color: isSignUpSelected
                                        ? AppColors.white
                                        : AppColors.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                            ),
                          ),
                        ),

                        // Sign In Button
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Get.off(() => SignInView());  // Navigate to SignInView
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: !isSignUpSelected
                                    ? Colors.black
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    bottomLeft: Radius.circular(25)),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "Sign in",
                                style: GoogleFonts.roboto(
                                    color: !isSignUpSelected
                                        ? AppColors.white
                                        : AppColors.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
                TextfieldClass(
                  controller: hintName,
                  hintname: "Full Name",
                  textInputType: TextInputType.text,
                  obscureText: false,
                ),
                TextfieldClass(
                  controller: emailController,
                  hintname: "Email",
                  textInputType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                TextfieldClass(
                  controller: pwdController,
                  hintname: "Password",
                  textInputType: TextInputType.text,
                  obscureText: false,
                ),
                TextfieldClass(
                  controller: ConfirmpwdController,
                  hintname: "Confirm Password",
                  textInputType: TextInputType.text,
                  obscureText: false,
                ),
                SizedBox(height: 2.h),
                CustomElevatedIconButton(
                  text: 'Create Account',
                  onPressed: () {},
                  foregroundColor: AppColors.white,
                  backgroundColor: AppColors.black,
                  svgIconPath: AppSVGs.forward,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(AppImages.app_icon),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Welcome back..",
                  style: GoogleFonts.lora(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(25), // Rounded corners
                    ),
                    child: Row(
                      children: [
                        // Sign Up Button
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Get.off(() => SignUpView());  // Navigate to SignUpView
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(25),
                                    bottomRight: Radius.circular(25)),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "Sign up",
                                style: GoogleFonts.roboto(
                                    color: AppColors.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                            ),
                          ),
                        ),

                        // Sign In Button
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              // Add your Sign In logic here
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    bottomLeft: Radius.circular(25)),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "Sign in",
                                style: GoogleFonts.roboto(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
                TextfieldClass(
                  controller: emailController,
                  hintname: "Email",
                  textInputType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                TextfieldClass(
                  controller: pwdController,
                  hintname: "Password",
                  textInputType: TextInputType.text,
                  obscureText: true,
                ),
                SizedBox(height: 2.h),
                CustomElevatedIconButton(
                  text: 'Sign in',
                  onPressed: () {},
                  foregroundColor: AppColors.white,
                  backgroundColor: AppColors.black,
                  svgIconPath: AppSVGs.forward,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
