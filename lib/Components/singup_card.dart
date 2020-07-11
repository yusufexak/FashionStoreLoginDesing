import 'package:flutter/material.dart';
import 'package:logindesing/Utils/Constants/app_colors.dart';
import 'package:logindesing/Widgets/app_text_field.dart';

class SingUpCard extends StatelessWidget {
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
                "Sing Up",
                style: th.headline1,
              ),
              SizedBox(
                height: 30,
              ),
              AppTextField(
                title: "User Name",
                hintText: "your firs & last name..",
              ),
              SizedBox(
                height: 12,
              ),
              AppTextField(
                title: "Email",
                hintText: "enter your email adress..",
              ),
              SizedBox(
                height: 12,
              ),
              AppTextField(
                title: "Password",
                hintText: "create a strong pasword..",
                visible: true,
              ),
              SizedBox(
                height: 12,
              ),
              AppTextField(
                title: "Confirm Password",
                hintText: "repeat your password..",
              ),
              Expanded(child: SizedBox.shrink()),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "by singing up you have agreed to our",
                        style: th.headline1.copyWith(
                            color: AppColors.kDarkGreen.withOpacity(.5),
                            fontSize: 12),
                      ),
                      Text(
                        "TERMS OF USE & PrIVACY POLICY.",
                        style: th.headline1.copyWith(
                            color: Colors.pink.withOpacity(.5), fontSize: 12),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
