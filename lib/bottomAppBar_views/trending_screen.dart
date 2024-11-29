import 'package:blog/exports.dart';

class TrendingScreenView extends StatelessWidget {
  const TrendingScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.white,
          leading: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset(AppSVGs.menu),
          ),
          title: Image.asset(
            AppImages.app_icon,
            width: 10.w,
            height: 12.h,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Text(
                  "Our Picks For You",
                  style: GoogleFonts.lora(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                child: Image.asset(
                                  AppImages.image,
                                  fit: BoxFit.cover,
                                  // height: MediaQuery.of(context).size.height*0.25,
                                  width: MediaQuery.of(context).size.width * 0.85,
                                ),
                              ),
                              Positioned(
                                left: 10,
                                top: 10,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColors.grey,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      "Technology",
                                      style: GoogleFonts.openSans(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 8,
                                          color: AppColors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Text(
                              "New VR Headsets That Will Shape the Metaverse",
                              style: GoogleFonts.lora(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: AppColors.black),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      AppImages.image1,
                                      width:
                                          MediaQuery.of(context).size.width * 0.1,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "By: ",
                                    style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.black,
                                    ),
                                  ),
                                  Text(
                                    "Mason Eduard",
                                    style: GoogleFonts.roboto(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.black,
                                        decoration: TextDecoration.underline,
                                        decorationColor: AppColors.black),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Jan 4, 2022 ",
                                    style: GoogleFonts.roboto(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        color: AppColors.grey),
                                  ),
                                  Icon(
                                    Icons.circle,
                                    size: 4,
                                    color: AppColors.grey,
                                  ),
                                  Text(
                                    " 3344 views",
                                    style: GoogleFonts.roboto(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        color: AppColors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                child: Image.asset(
                                  AppImages.image,
                                  fit: BoxFit.cover,
                                  // height: MediaQuery.of(context).size.height*0.25,
                                  width: MediaQuery.of(context).size.width * 0.85,
                                ),
                              ),
                              Positioned(
                                left: 10,
                                top: 10,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColors.grey,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      "Technology",
                                      style: GoogleFonts.openSans(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 8,
                                          color: AppColors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Text(
                              "New VR Headsets That Will Shape the Metaverse",
                              style: GoogleFonts.lora(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: AppColors.black),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      AppImages.image1,
                                      width:
                                          MediaQuery.of(context).size.width * 0.1,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "By: ",
                                    style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.black,
                                    ),
                                  ),
                                  Text(
                                    "Mason Eduard",
                                    style: GoogleFonts.roboto(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.black,
                                        decoration: TextDecoration.underline,
                                        decorationColor: AppColors.black),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Jan 4, 2022 ",
                                    style: GoogleFonts.roboto(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        color: AppColors.grey),
                                  ),
                                  Icon(
                                    Icons.circle,
                                    size: 4,
                                    color: AppColors.grey,
                                  ),
                                  Text(
                                    " 3344 views",
                                    style: GoogleFonts.roboto(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        color: AppColors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomElevatedButton(
                          text: "All",
                          onPressed: () {},
                          foregroundColor: AppColors.grey,
                          backgroundColor: AppColors.white),
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
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        AppImages.image,
                        width: MediaQuery.of(context).size.width * 0.30,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "Technology",
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 8,
                                      color: AppColors.black),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Jan 4, 2022 ",
                                  style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: AppColors.grey),
                                ),
                                Icon(
                                  Icons.circle,
                                  size: 4,
                                  color: AppColors.grey,
                                ),
                                Text(
                                  " 3344 views",
                                  style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: AppColors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.55,
                          child: Text(
                            "Augmented Reality Trends for 2022",
                            style: GoogleFonts.lora(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: AppColors.black),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        AppImages.image,
                        width: MediaQuery.of(context).size.width * 0.30,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "Technology",
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 8,
                                      color: AppColors.black),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Jan 4, 2022 ",
                                  style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: AppColors.grey),
                                ),
                                Icon(
                                  Icons.circle,
                                  size: 4,
                                  color: AppColors.grey,
                                ),
                                Text(
                                  " 3344 views",
                                  style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: AppColors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.55,
                          child: Text(
                            "Augmented Reality Trends for 2022",
                            style: GoogleFonts.lora(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: AppColors.black),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        AppImages.image,
                        width: MediaQuery.of(context).size.width * 0.30,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "Technology",
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 8,
                                      color: AppColors.black),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Jan 4, 2022 ",
                                  style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: AppColors.grey),
                                ),
                                Icon(
                                  Icons.circle,
                                  size: 4,
                                  color: AppColors.grey,
                                ),
                                Text(
                                  " 3344 views",
                                  style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: AppColors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.55,
                          child: Text(
                            "Augmented Reality Trends for 2022",
                            style: GoogleFonts.lora(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: AppColors.black),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        AppImages.image,
                        width: MediaQuery.of(context).size.width * 0.30,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "Technology",
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 8,
                                      color: AppColors.black),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Jan 4, 2022 ",
                                  style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: AppColors.grey),
                                ),
                                Icon(
                                  Icons.circle,
                                  size: 4,
                                  color: AppColors.grey,
                                ),
                                Text(
                                  " 3344 views",
                                  style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: AppColors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.55,
                          child: Text(
                            "Augmented Reality Trends for 2022",
                            style: GoogleFonts.lora(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: AppColors.black),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
