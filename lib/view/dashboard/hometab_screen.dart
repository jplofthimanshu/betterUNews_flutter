import 'package:better_u_news/app/constants/app_colors.dart';
import 'package:better_u_news/app/constants/app_fonts.dart';
import 'package:better_u_news/app/constants/app_images.dart';
import 'package:better_u_news/app/routes/route_names.dart';
import 'package:better_u_news/view/app_component/action_button.dart';
import 'package:better_u_news/view/app_component/action_button_icon.dart';
import 'package:better_u_news/view/app_component/lato_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HometabScreen extends StatefulWidget {
  const HometabScreen({super.key});

  @override
  State<HometabScreen> createState() => _HometabScreenState();
}

class _HometabScreenState extends State<HometabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.clr_FEFEFE,
      appBar: AppBar(
        backgroundColor: AppColor.clr_FEFEFE,
        actions: [
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            onTap: () {
              Get.toNamed(RoutesName.accountScreen);
            },
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(right: 16),
              child: SvgPicture.asset(
                AppImages.profile_image,
                height: 24,
                width: 24,
                fit: BoxFit.contain,
              ),
            ),
          ),

          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            onTap: () {},
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(right: 16),
              child: SvgPicture.asset(
                AppImages.bell_image,
                height: 24,
                width: 24,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Good evening,\n',
                        style: TextStyle(
                          height: 1,
                          fontSize: 30,
                          fontFamily: FontFamily.LatoMedium.value,
                          color: Colors.black,
                        ),
                        children: [
                          WidgetSpan(
                            alignment: PlaceholderAlignment.baseline,
                            baseline: TextBaseline.alphabetic,
                            child: ShaderMask(
                              shaderCallback: (bounds) =>
                                  LinearGradient(
                                    colors: [
                                      Color(0xFF7F7ED8),
                                      Color(0xFFE2A19B),
                                    ],
                                  ).createShader(
                                    Rect.fromLTWH(
                                      0,
                                      0,
                                      bounds.width,
                                      bounds.height,
                                    ),
                                  ),
                              child: Text(
                                'Rama',
                                style: TextStyle(
                                  height: 1,
                                  fontSize: 30,
                                  fontFamily: FontFamily.LatoMedium.value,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 32),
                Stack(
                  children: [
                    Positioned(
                      right: 10,
                      top: 0,
                      bottom: 0,
                      child: Image.asset(
                        AppImages.aurascore_image,
                        height: 130,
                        width: 150,
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      color: Colors.transparent,
                      height: 125,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 3),
                          LatoText(
                            title: 'Your Aura is growing',
                            fontFamily: FontFamily.LatoRegular,
                            fontSize: 20,
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                      alignment: PlaceholderAlignment.baseline,
                                      baseline: TextBaseline.alphabetic,
                                      child: ShaderMask(
                                        shaderCallback: (bounds) =>
                                            LinearGradient(
                                              colors: [
                                                Color(0xFF7F7ED8),
                                                Color(0xFFE2A19B),
                                              ],
                                            ).createShader(
                                              Rect.fromLTWH(
                                                0,
                                                0,
                                                bounds.width,
                                                bounds.height,
                                              ),
                                            ),
                                        child: Text(
                                          '89',
                                          style: TextStyle(
                                            height: 1,
                                            fontSize: 37,
                                            fontFamily: FontFamily.LatoBold.value,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              LatoText(
                                title: '/100',
                                fontSize: 10,
                                fontFamily: FontFamily.LatoRegular,
                                color: AppColor.clr_ACADBC,
                              ),
                            ],
                          ),
                          LatoText(
                            title: 'AuraScore',
                            fontSize: 14,
                            fontFamily: FontFamily.LatoBold,
                            color: AppColor.clr_4B5660,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 120,
                      top: 0,
                      bottom: 0,
                      child: SvgPicture.asset(
                        AppImages.arrowline_image,
                        height: 8,
                        width: 120,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
          
                SizedBox(height: 32),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColor.clr_FEFEFE,
                        AppColor.clr_FEFEFE, // top
                        AppColor.clr_FFFFFF, // bottom
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.03), // Shadow color
                        offset: Offset(0, 20), // Only downward shadow
                        blurRadius: 20, // Softness of shadow
                        spreadRadius: 0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColor.clr_E9EAEB,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            height: 22,
                            child: LatoText(
                              title: 'Foundations',
                              fontSize: 12,
                              fontFamily: FontFamily.LatoBold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          LatoText(
                            title: 'Continue your journey',
                            fontFamily: FontFamily.LatoRegular,
                            fontSize: 20,
                            color: AppColor.clr_000000,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          LatoText(
                            title: 'Continue your journey',
                            fontFamily: FontFamily.LatoSemibold,
                            fontSize: 17,
                            color: AppColor.clr_000000.withOpacity(0.4),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 8,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          color: AppColor.clr_E9EAEB,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Container(
                          width: 100,
                          height: 8,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFF7D7DD9), Color(0xFFE2A19B)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Gradient Container',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          LatoText(
                            title: ' Heal',
                            fontSize: 12,
                            color: AppColor.clr_000000.withOpacity(0.5),
                            fontFamily: FontFamily.LatoSemibold,
                          ),
                          LatoText(
                            title: 'Grow',
                            fontSize: 12,
                            color: AppColor.clr_000000.withOpacity(0.5),
                            fontFamily: FontFamily.LatoSemibold,
                          ),
                          LatoText(
                            title: 'Love',
                            fontSize: 12,
                            color: AppColor.clr_000000.withOpacity(0.5),
                            fontFamily: FontFamily.LatoSemibold,
                          ),
                          LatoText(
                            title: 'Transcend ',
                            fontSize: 12,
                            color: AppColor.clr_000000.withOpacity(0.5),
                            fontFamily: FontFamily.LatoSemibold,
                          ),
                        ],
                      ),
          
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: ActionButtonIcon(
                              btnHeight: 42,
                              fontFamily: FontFamily.LatoBold,
                              fontSize: 17,
                              title: 'Continue',
                              image: AppImages.rightArrow_image,
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: ActionButtonIcon(
                              btnHeight: 42,
                              fontFamily: FontFamily.LatoBold,
                              fontSize: 17,
                              title: 'More',
                              image: AppImages.file_image,
                              imageColor: AppColor.clr_000000,
                              textColor: AppColor.clr_000000,
                              backgroundColor: AppColor.clr_000000.withOpacity(0.1),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
          
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          LatoText(
                            title: 'Upcoming appointments',
                            fontFamily: FontFamily.LatoRegular,
                            fontSize: 20,
                            color: AppColor.clr_000000,
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/img_1.png',
                            height: 45,
                            width: 45,
                          ),
                          SizedBox(width: 8),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 2),
                            height: 45,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                LatoText(
                                  title: 'Group Treatment Preparation',
                                  fontFamily: FontFamily.LatoRegular,
                                  fontSize: 14,
                                  color: AppColor.clr_71717A,
                                ),

                                LatoText(
                                  title: 'Wed, Apr 9 11:00 AM - 11:30 AM',
                                  fontFamily: FontFamily.LatoRegular,
                                  fontSize: 14,
                                  color: AppColor.clr_18181B,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColor.clr_FEFEFE,
                        AppColor.clr_FEFEFE, // top
                        AppColor.clr_FFFFFF, // bottom
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.03), // Shadow color
                        offset: Offset(0, 20), // Only downward shadow
                        blurRadius: 20, // Softness of shadow
                        spreadRadius: 0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          LatoText(
                            title: 'My Treatments',
                            fontFamily: FontFamily.LatoBold,
                            fontSize: 20,
                            color: AppColor.clr_000000,
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 2,
                          itemBuilder: (context,index) => Container(
                            margin: EdgeInsets.only(bottom: 12),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/img_1.png',
                                  height: 48,
                                  width: 48,
                                ),
                                SizedBox(width: 8),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 3),
                                  height: 48,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      LatoText(
                                        title: '#productName#',
                                        fontFamily: FontFamily.LatoBold,
                                        fontSize: 16,
                                        color: AppColor.clr_000000,
                                      ),
                                      LatoText(
                                        title: '#productCardInfo#',
                                        fontFamily: FontFamily.LatoSemibold,
                                        fontSize: 14,
                                        color: AppColor.clr_000000.withOpacity(0.5),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ActionButtonIcon(
                              btnHeight: 42,
                              fontFamily: FontFamily.LatoBold,
                              fontSize: 17,
                              title: 'Continue',
                              image: AppImages.rightArrow_image,
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: ActionButtonIcon(
                              btnHeight: 42,
                              fontFamily: FontFamily.LatoBold,
                              fontSize: 17,
                              title: 'More',
                              image: AppImages.file_image,
                              imageColor: AppColor.clr_000000,
                              textColor: AppColor.clr_000000,
                              backgroundColor: AppColor.clr_000000.withOpacity(0.1),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      ActionButtonIcon(
                        btnHeight: 44,
                        fontFamily: FontFamily.LatoBold,
                        fontSize: 17,
                        title: 'Add New Treatment',
                        image: AppImages.plus_image,
                        onPressed: () {},
                      )
                    ],
                  ),
                ),

                SizedBox(height: 16),
                SizedBox(
                  height: 340,
                  child: PageView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        clipBehavior: Clip.antiAlias,
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: AppColor.clr_BBAEB7,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  'assets/images/img_2.png',
                                  height: 175,
                                  width: double.maxFinite,
                                  fit: BoxFit.fill,
                                ),
                                Container(
                                  height: 175,
                                  padding: EdgeInsets.symmetric(vertical: 16,horizontal: 16),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(horizontal: 12),
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              color: AppColor.clr_F6F4F1,
                                              borderRadius: BorderRadius.circular(3),
                                            ),
                                            height: 22,
                                            child: LatoText(
                                              title: 'Announcements',
                                              fontSize: 12,
                                              fontFamily: FontFamily.LatoBold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 12),
                                      Row(
                                        children: [
                                          LatoText(
                                            title: 'Announcement Header',
                                            fontFamily: FontFamily.LatoSemibold,
                                            fontSize: 20,
                                            color: AppColor.clr_F6F4F1,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          LatoText(
                                            title: 'Announcement Subheading',
                                            fontFamily: FontFamily.LatoSemibold,
                                            fontSize: 17,
                                            color: AppColor.clr_F4F4F4.withOpacity(0.8)
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  left: -1,
                                  right: -1,
                                  bottom: -1,
                                  child: SvgPicture.asset(
                                    AppImages.shadow_image,
                                    height: 44,
                                    width: double.maxFinite,
                                    fit: BoxFit.fill,
                                  ),
                                )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 8,left: 16,bottom: 16,right: 16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  LatoText(
                                    title: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium. Impora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.',
                                    fontFamily: FontFamily.LatoRegular,
                                    fontSize: 16,
                                    color: AppColor.clr_FDFDFD,
                                  ),
                                  SizedBox(height: 10),
                                  ActionButton(btnHeight: 44, fontFamily: FontFamily.LatoBold, fontSize: 18, title: '#Call to Action#', onPressed: () {})
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                SizedBox(height: 16),
                SizedBox(
                  height: 515,
                  child: PageView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        clipBehavior: Clip.antiAlias,
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: AppColor.clr_D6CDC2,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  'assets/images/img_3.png',
                                  height: 270,
                                  width: double.maxFinite,
                                  fit: BoxFit.fill,
                                ),
                                Container(
                                  height: 270,
                                  padding: EdgeInsets.symmetric(vertical: 16,horizontal: 16),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(horizontal: 12),
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              color: AppColor.clr_F6F4F1,
                                              borderRadius: BorderRadius.circular(3),
                                            ),
                                            height: 22,
                                            child: LatoText(
                                              title: 'Mental Health',
                                              fontSize: 12,
                                              fontFamily: FontFamily.LatoBold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 12),
                                      Row(
                                        children: [
                                          LatoText(
                                            title: 'Ketamine therapy for U',
                                            fontFamily: FontFamily.LatoSemibold,
                                            fontSize: 20,
                                            color: AppColor.clr_F6F4F1,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          LatoText(
                                              title: 'Rediscover yourself',
                                              fontFamily: FontFamily.LatoSemibold,
                                              fontSize: 17,
                                              color: AppColor.clr_F4F4F4.withOpacity(0.8)
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  left: -1,
                                  right: -1,
                                  bottom: -1,
                                  child: SvgPicture.asset(
                                    AppImages.shadow_D6CDC2_image,
                                    height: 44,
                                    width: double.maxFinite,
                                    fit: BoxFit.fill,
                                  ),
                                )
                              ],
                            ),
                            Container(
                              height: 245,
                              padding: EdgeInsets.only(top: 20,left: 16,bottom: 20,right: 16),
                              child:  ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 10,
                                itemBuilder: (context, index) => Container(
                                  height: 205,
                                  width: 135,
                                  margin: EdgeInsets.only(right: 8),
                                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: AppColor.clr_000000.withOpacity(0.1)
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(horizontal: 12),
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(3),
                                              gradient: LinearGradient(
                                                end: AlignmentDirectional(-0.8, 1.0), // Approx. bottom-left
                                                begin: AlignmentDirectional(0.8, -1.0),   // Approx. top-right
                                                colors: [
                                                  Color.fromRGBO(168, 156, 155, 0.1),
                                                  Color.fromRGBO(0, 0, 0, 0.2),
                                                ],
                                                stops: [-0.1035, 0.4489], // Note: Flutter expects values from 0 to 1, so negatives may be ignored
                                              ),
                                            ),
                                            height: 22,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                  AppImages.vector_image,
                                                  height: 12,
                                                  width: 8,
                                                ),
                                                SizedBox(width: 4),
                                                LatoText(
                                                  title: '12 Slides',
                                                  fontSize: 12,
                                                  color: AppColor.clr_F6F4F1,
                                                  fontFamily: FontFamily.LatoBold,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          LatoText(
                                            title: 'Session 1',
                                            fontSize: 12,
                                            color: AppColor.clr_F6F4F1,
                                            fontFamily: FontFamily.LatoBold,
                                          ),
                                          LatoText(
                                            title: 'Heal',
                                            fontSize: 16,
                                            color: AppColor.clr_F6F4F1,
                                            fontFamily: FontFamily.LatoBold,
                                          ),
                                          LatoText(
                                            title: 'Ketamine Therapy',
                                            fontSize: 12,
                                            color: AppColor.clr_F6F4F1,
                                            fontFamily: FontFamily.LatoBold,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),


                SizedBox(height: 32),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          LatoText(
                            title: 'Trending Now',
                            fontFamily: FontFamily.LatoSemibold,
                            fontSize: 20,
                            color: AppColor.clr_000000,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          LatoText(
                              title: 'April 1',
                              fontFamily: FontFamily.LatoSemibold,
                              fontSize: 17,
                              color: AppColor.clr_000000.withOpacity(0.4)
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColor.clr_FEFEFE,
                        AppColor.clr_FEFEFE, // top
                        AppColor.clr_FFFFFF, // bottom
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.03), // Shadow color
                        offset: Offset(0, 20), // Only downward shadow
                        blurRadius: 20, // Softness of shadow
                        spreadRadius: 0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(16),
                  ),

                  child:  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) => Container(
                      height: 155,
                      width: 135,
                      margin: EdgeInsets.only(right: 8),
                      padding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColor.clr_000000.withOpacity(0.1)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(),
                          Stack(
                            children: [
                              SvgPicture.asset(
                                AppImages.shadow_3_image,
                                height: 68,
                                width: double.maxFinite,
                                fit: BoxFit.fill,
                              ),
                              Container(
                                padding: EdgeInsets.only(bottom: 16,left: 12,right: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    LatoText(
                                      title: 'Session 1',
                                      fontSize: 12,
                                      color: AppColor.clr_F6F4F1,
                                      fontFamily: FontFamily.LatoBold,
                                    ),
                                    LatoText(
                                      title: 'Heal',
                                      fontSize: 16,
                                      color: AppColor.clr_F6F4F1,
                                      fontFamily: FontFamily.LatoBold,
                                    ),
                                    LatoText(
                                      title: 'Ketamine Therapy',
                                      fontSize: 12,
                                      color: AppColor.clr_F6F4F1,
                                      fontFamily: FontFamily.LatoBold,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // assets/images/Shadow_3.svg
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
