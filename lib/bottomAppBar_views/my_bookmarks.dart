import 'package:blog/exports.dart';

class MyBookmarksView extends StatelessWidget {
  const MyBookmarksView({super.key});

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
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Bookmarks",
                style: GoogleFonts.lora(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: AppColors.black),
              ),
              SizedBox(height: 3.h,),
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
            ],
          ),
        ),
      ),
    );
  }
}
