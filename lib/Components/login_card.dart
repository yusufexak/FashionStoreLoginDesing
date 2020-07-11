import 'package:flutter/material.dart';
import 'package:logindesing/Utils/Constants/app_colors.dart';
import 'package:logindesing/Widgets/app_text_field.dart';

class LoginCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: .6,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Login",
                style: th.headline1,
              ),
              SizedBox(
                height: 30,
              ),
              AppTextField(
                title: "Email",
                hintText: "enter your registered email..",
              ),
              SizedBox(
                height: 12,
              ),
              AppTextField(
                title: "Password",
                hintText: "enter your secure password..",
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "SHOW PASSWORD",
                    style: th.headline1.copyWith(
                        fontSize: 12, color: Colors.grey.withOpacity(.7)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 28,
                    height: 28,
                    child: Icon(
                      Icons.visibility,
                      size: 18,
                      color: Colors.grey.withOpacity(.7),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Colors.grey.withOpacity(.7), width: 2)),
                  ),
                ],
              ),
              Expanded(
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      children: [
                        Text(
                          "FORGOT PASSWORD? ",
                          style: th.headline1
                              .copyWith(color: AppColors.kBlue, fontSize: 16),
                        ),
                        Icon(
                          Icons.play_arrow,
                          size: 15,
                          color: AppColors.kBlue,
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
