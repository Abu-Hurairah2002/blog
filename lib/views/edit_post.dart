import 'package:blog/custom_buttons/column_icons.dart';
import 'package:blog/custom_buttons/elevatedButtons.dart';
import 'package:blog/utils/images.dart';
import 'package:blog/utils/svgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../constants/appColor.dart';

class EditPostView extends StatelessWidget {
  const EditPostView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.white,
          leading: Padding(
            padding: const EdgeInsets.all(12.0),
            child: InkWell(
              onTap: (){
                Get.back();
              },
              child: SvgPicture.asset(
                AppSVGs.backIcon,
              ),
            ),
          ),
          title: Image.asset(
            AppImages.app_icon,
            width: 10.w,
            height: 12.h,
          ),
          actions: [
            Row(
              children: [
                buildIconColumn(AppSVGs.discard, "Discard",),
                buildIconColumn(AppSVGs.save, "Save",),
                buildIconColumn(AppSVGs.publish, "Publish",),

              ],
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child:
                Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              AppImages.image,
                              fit: BoxFit.cover,
                            )),
                        Image.asset(
                          AppImages.camera,
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.4,
                          color: AppColors.white.withOpacity(0.5),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Select Category",
                          style: GoogleFonts.lora(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppColors.black),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CustomElevatedButton(
                              text: "Technology",
                              onPressed: () {},
                              foregroundColor: AppColors.grey,
                              backgroundColor: AppColors.white),
                          CustomElevatedButton(
                              text: "Lifestyle",
                              onPressed: () {},
                              foregroundColor: AppColors.grey,
                              backgroundColor: AppColors.white),
                          CustomElevatedButton(
                              text: "Culture",
                              onPressed: () {},
                              foregroundColor: AppColors.grey,
                              backgroundColor: AppColors.white),
                          CustomElevatedButton(
                              text: "Business",
                              onPressed: () {},
                              foregroundColor: AppColors.grey,
                              backgroundColor: AppColors.white),
                          CustomElevatedButton(
                              text: "Event",
                              onPressed: () {},
                              foregroundColor: AppColors.grey,
                              backgroundColor: AppColors.white),
                          CustomElevatedButton(
                              text: "Sports",
                              onPressed: () {},
                              foregroundColor: AppColors.grey,
                              backgroundColor: AppColors.white),
                        ],
                      ),
                    ),
            SizedBox(height: 10,),
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.9,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: AppColors.white, // Background color
                borderRadius: BorderRadius.circular(10), // Rounded corners
                border: Border.all(
                  color: Colors.grey, // Border color
                  width: 2, // Border width
                ),
              ),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "New VR Headsets That Will Shape the Metaverse", // Placeholder text
                ),
                style: GoogleFonts.lora(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: AppColors.black
                ), // Customize text style
              ),
            ),
                    SizedBox(height: 10,),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: AppColors.white, // Background color
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                        border: Border.all(
                          color: Colors.grey, // Border color
                          width: 2, // Border width
                        ),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id sit eu tellus sed cursus eleifend id porta. Lorem adipiscing mus vestibulum consequat porta eu ultrices feugiat. Et, faucibus ut amet turpis. Facilisis faucibus semper cras purus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id sit eu tellus sed cursus eleifend id porta. Lorem adipiscing mus vestibulum consequat porta eu ultrices feugiat. Et, faucibus ut amet turpis. Facilisis faucibus semper cras purus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id sit eu tellus sed cursus eleifend id porta. Lorem adipiscing mus vestibulum consequat porta eu ultrices feugiat. Et, faucibus ut amet turpis. Facilisis faucibus semper cras purus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id sit eu tellus sed cursus eleifend id porta. Lorem adipiscing mus vestibulum consequat porta eu ultrices feugiat. Et, faucibus ut amet turpis. Facilisis faucibus semper cras purus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id sit eu tellus sed cursus eleifend id porta. Lorem adipiscing mus vestibulum consequat porta eu ultrices feugiat. Et, faucibus ut amet turpis. Facilisis faucibus semper cras purus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id sit eu tellus sed cursus eleifend id porta. Lorem adipiscing mus vestibulum consequat porta eu ultrices feugiat. Et, faucibus ut amet turpis. Facilisis faucibus semper cras purus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id sit eu tellus sed cursus eleifend id porta. Lorem adipiscing mus vestibulum consequat porta eu ultrices feugiat. Et, faucibus ut amet turpis. Facilisis faucibus semper cras purus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id sit eu tellus sed cursus eleifend id porta. Lorem adipiscing mus vestibulum consequat porta eu ultrices feugiat. Et, faucibus ut amet turpis. Facilisis faucibus semper cras purus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id sit eu tellus sed cursus eleifend id porta. Lorem adipiscing mus vestibulum consequat porta eu ultrices feugiat. Et, faucibus ut amet turpis. Facilisis faucibus semper cras purus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id sit eu tellus sed cursus eleifend id porta. Lorem adipiscing mus vestibulum consequat porta eu ultrices feugiat. Et, faucibus ut amet turpis. Facilisis faucibus semper cras purus.", // Placeholder text
                        ),
                        style: GoogleFonts.lora(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: AppColors.black
                        ), // Customize text style
                      ),
                    ),
                  ],
                ),
          
          
            ),
        ),
        ),
    );
  }
}
