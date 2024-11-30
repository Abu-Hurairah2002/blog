import 'package:blog/exports.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:provider/provider.dart';

import '../provider/auth_provider.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({super.key});

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    // Get the current selected option from the AuthProvider
    final selectedOption = Provider.of<AuthProvider>(context).selectedOption;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo
                Center(
                  child: Image.asset(
                    AppImages.app_icon, // Replace with your actual logo asset
                    height: 20.h,
                  ),
                ),
                SizedBox(height: selectedOption == 'Sign In' ? 6.6.h : 5.h),

                // Description Text - Conditional based on selectedOption
                Center(
                  child: Text(
                    selectedOption == "Sign Up"
                        ? "Create a new account to get started."
                        : "Welcome back.",
                    style: GoogleFonts.roboto(
                    fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: selectedOption == 'Sign In' ? 5.h : 3.h),

                // Toggle button here
                Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius:
                      BorderRadius.circular(5.sp), // Rounded corners
                    ),
                    child: Row(
                      children: [
                        // Sign Up Button
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              // Use AuthProvider to change the selected option
                              Provider.of<AuthProvider>(context, listen: false)
                                  .setSelectedOption('Sign Up');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: selectedOption == 'Sign Up'
                                    ? AppColors.black
                                    : AppColors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20.sp),
                                    bottomRight: Radius.circular(20.sp)),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "Sign up",
                                style: GoogleFonts.roboto(
                                  color: selectedOption == 'Sign Up'
                                      ? AppColors.white
                                      : AppColors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Sign In Button
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              // Use AuthProvider to change the selected option
                              Provider.of<AuthProvider>(context, listen: false)
                                  .setSelectedOption('Sign In');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: selectedOption == 'Sign In'
                                    ? Colors.black
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.sp),
                                    bottomLeft: Radius.circular(20.sp)),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "Sign in",
                                style: GoogleFonts.roboto(
                                  color: selectedOption == 'Sign In'
                                      ? AppColors.white
                                      : AppColors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 4.h,
                ),
                // Form based on the selected option (Sign Up or Sign In)
                selectedOption == "Sign Up"
                    ? buildSignUpForm()
                    : buildSignInForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // SignUp form
  Widget buildSignUpForm() {
    return Column(
      children: [
        FormBuilder(
          child: Column(
            children: [
              CustomTextField(
                name: "Full Name",
                labelText: "Full Name",
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: 2.h), // Move inside Column
              CustomTextField(
                name: "Email",
                labelText: "Email",
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.email(),
                  FormBuilderValidators.required(),
                ]),
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: 2.h), // Move inside Column
              CustomTextField(
                name: "Password",
                labelText: "Password",
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.minLength(6,
                      errorText: 'Password must be at least 6 characters'),
                ]),
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: 2.h), // Move inside Column
              CustomTextField(
                name: "ConfirmPassword",
                labelText: "Confirm Password",
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
                textInputAction: TextInputAction.done,
              ),

              SizedBox(height: 3.h), // Outside FormBuilder
              Center(
                child: CustomButton(
                  height: 7.h,
                  width: 70.w,
                  enableBorder: true,
                  backgroundColor: AppColors.black,
                  onPressed: () {
                    // Handle sign-up logic
                  },
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Create Account",
                          style: TextStyle(color: AppColors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.white,
                        size: 18.sp,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // SignIn form
  Widget buildSignInForm() {
    return Column(
      children: [
        CustomTextField(
          labelText: "Email",
          name: "Email",
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.email(),
            FormBuilderValidators.required(),
          ]),
          textInputAction: TextInputAction.next,
        ),
        SizedBox(height: 2.h),
        CustomTextField(
          name: "password",
          labelText: "Password",
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.passport(),
            FormBuilderValidators.required(),
          ]),
          textInputAction: TextInputAction.done,
        ),
        SizedBox(height: 3.h),
        Center(
          child: CustomButton(
            height: 7.h,
            width: 70.w,
            enableBorder: true,
            backgroundColor: AppColors.black, // Change as needed
            onPressed: () {
              // Handle sign-in logic
            },
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: AppColors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.white,
                  size: 18.sp,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
