import 'package:flutter/material.dart';
import 'package:logindesing/Utils/Constants/app_colors.dart';
import 'package:logindesing/Utils/Constants/app_svg.dart';
import 'package:logindesing/Widgets/socialcontainer.dart';

class JoinCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(8),
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
                "Join with",
                style: th.headline1,
              ),
              SizedBox(
                height: 30,
              ),
              SocialContainer(
                isSelect: true,
                svg: AppSvg.google,
                title: "Google",
              ),
              SizedBox(
                height: 20,
              ),
              SocialContainer(
                isSelect: false,
                svg: AppSvg.facebook,
                title: "Facebook",
              ),
              SizedBox(
                height: 20,
              ),
              SocialContainer(
                isSelect: false,
                svg: AppSvg.twitter,
                title: "Twitter",
              ),
              SizedBox(
                height: 20,
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
                        "TERMS OF USE & PRIVACY POLICY.",
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
