import 'package:better_u_news/view/app_component/action_button.dart';
import 'package:better_u_news/view/pop_component/delete_popup.dart';
import 'package:better_u_news/viewmodel/controller/profile_controller/account_controller.dart';
import 'package:flutter/material.dart';
import 'package:better_u_news/app/routes/route_names.dart';
import 'package:better_u_news/app/constants/app_colors.dart';
import 'package:better_u_news/app/constants/app_fonts.dart';
import 'package:better_u_news/app/constants/app_images.dart';
import 'package:better_u_news/view/app_component/lato_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    AccountController _accountController = Get.put(AccountController());

    return Scaffold(
      backgroundColor: AppColor.clr_FEFEFE,

      appBar: AppBar(
        backgroundColor: AppColor.clr_FEFEFE,
        leadingWidth: 35,
        leading: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          onTap: () {
            Get.back();
          },
          child: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 16),
            child: SvgPicture.asset(
              AppImages.backArrow_image,
              height: 14,
              width: 14,
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: LatoText(
          title: 'Account',
          fontFamily: FontFamily.LatoSemibold,
          fontSize: 20,
        ),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: AppColor.clr_FEFEFE,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(width: 30),
              Row(
                children: [
                  Image.asset(
                    AppImages.userProfile_png,
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(width: 15,),
                  SizedBox(
                    height: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LatoText(
                          title: 'Rama Kingston',
                          fontFamily: FontFamily.LatoBold,
                          fontSize: 18,
                          color: AppColor.clr_111214,
                        ),
                        LatoText(
                          title: 'useremail@gmail.com',
                          fontFamily: FontFamily.LatoRegular,
                          fontSize: 14,
                          color: AppColor.clr_717680,
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 50),
              Expanded(
                  child: ListView.builder(
                      itemCount: _accountController.listItem.length,
                      itemBuilder: (context,index) => InkWell(
                        onTap: () {
                          if(_accountController.listItem[index].toLowerCase() == 'Delete account'.toLowerCase()) {
                            showDeleteAccountPopup(context);
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 18),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: AppColor.clr_F5F5F5, // You can customize the color
                                width: 1.0,           // You can customize the thickness
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              LatoText(
                                title: _accountController.listItem[index],
                                fontSize: 17,
                                fontFamily: FontFamily.LatoSemibold,
                                color: _accountController.listItem[index].toLowerCase() == 'Delete account'.toLowerCase() ? AppColor.clr_AF002D : AppColor.clr_000000,
                              ),
                              SvgPicture.asset(
                                AppImages.rightArrow_Account_image,
                                height: 14,
                                width: 14,
                                fit: BoxFit.contain,
                              ),
                            ],
                          )
                        ),
                      )
                  )
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: ActionButton(
                    btnHeight: 50,
                    fontFamily: FontFamily.LatoMedium,
                    fontSize: 16,
                    title: 'Log out',
                    onPressed: () {

                    },
                ),
              ),
              SizedBox(height: 20),
              LatoText(
                title: 'App version 1.24 b353.3',
                fontFamily: FontFamily.LatoRegular,
                fontSize: 15,
                color: AppColor.clr_717680,
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
