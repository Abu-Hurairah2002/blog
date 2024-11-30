import 'package:blog/exports.dart';

class MyProfileView extends StatelessWidget {
  const MyProfileView({super.key});

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
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomPaint(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                        ),
                        painter: HeaderCurvedContainer(),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 90,right: 90,top: 90,bottom: 10),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2,
                              height: MediaQuery.of(context).size.width / 2,
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.white,width: 8),
                                shape: BoxShape.circle,
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage(AppImages.image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("John Doe",style: GoogleFonts.lora(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: AppColors.black
                              ),),
                              SizedBox(width: 1.h,),
                              SvgPicture.asset(AppSVGs.edit)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("JohnDoe123@gmail.com",style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.black
                              ),),
                            ],
                          ),
                          SizedBox(height: 5.h,),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("My Blogs",style: GoogleFonts.lora(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.black
                                ),),
                                SizedBox(width: 1.h,),
                                Text("Show All",style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.black,
                                    decoration: TextDecoration.underline,
                                    decorationColor: AppColors.black
                                ),),
                              ],
                            ),
              
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
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
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
        ),
    );
  }
}

// CustomPainter class to for the header curved-container
class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = AppColors.black;
    Path path = Path()
      ..relativeLineTo(0, 150)
      ..quadraticBezierTo(size.width / 2, 250.0, size.width, 150)
      ..relativeLineTo(0, -150)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}