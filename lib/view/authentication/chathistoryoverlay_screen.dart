import 'package:better_u_news/app/constants/app_colors.dart';
import 'package:better_u_news/app/constants/app_fonts.dart';
import 'package:better_u_news/app/constants/app_images.dart';
import 'package:better_u_news/view/app_component/lato_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ChathistoryoverlayScreen extends StatefulWidget {
  const ChathistoryoverlayScreen({super.key});

  @override
  State<ChathistoryoverlayScreen> createState() =>
      _ChathistoryoverlayScreenState();
}

class _ChathistoryoverlayScreenState extends State<ChathistoryoverlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.clr_FEFEFE,

      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: AppColor.clr_E9E9E9,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LatoText(
                      title: 'Chats',
                      fontFamily: FontFamily.LatoBold,
                      fontSize: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 5),
                      child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: SvgPicture.asset(
                          AppImages.close_image,
                          height: 12,
                          width: 12,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15),
              Container(
                height: 42,
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  border: Border.all(width: 1.4, color: AppColor.clr_4B5660),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        // controller: ,
                        keyboardType: TextInputType.name,
                        style: TextStyle(
                          fontFamily: FontFamily.LatoRegular.value,
                          color: AppColor.clr_000000,
                          fontSize: 14,
                        ),
                        decoration: InputDecoration(
                          isDense: true,
                          border: InputBorder.none,
                          hintText: 'Search...',
                          hintStyle: TextStyle(
                            fontFamily: FontFamily.LatoRegular.value,
                            color: AppColor.clr_4B5660,
                            fontSize: 14,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                        ),
                      ),
                    ),
                    SvgPicture.asset(
                      AppImages.searchIcon_image,
                      height: 20,
                      width: 20,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16,),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (context, index) => Container(
                    height: 30,
                    margin: EdgeInsets.only(bottom: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LatoText(
                          title: 'Chat name and number',
                          fontSize: 16,
                          color: AppColor.clr_000000,
                          fontFamily: FontFamily.LatoSemibold,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
