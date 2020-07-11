import 'package:flutter/material.dart';
import 'package:logindesing/Components/joinwith_card.dart';
import 'package:logindesing/Components/login_card.dart';
import 'package:logindesing/Components/singup_card.dart';
import 'package:logindesing/Utils/Constants/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  PageController pageCont;
  @override
  void initState() {
    super.initState();
    pageCont = PageController(
      viewportFraction: .9,
    );
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.kGrey,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          buildTitleText(textTheme),
          buildIndicator(),
          buildPages(),
          Placeholder(
            fallbackHeight: 65,
          )
        ],
      ),
    );
  }

  Widget buildPages() {
    return Expanded(
      flex: 15,
      child: PageView(
        physics: BouncingScrollPhysics(),
        controller: pageCont,
        children: [
          LoginCard(),
          SingUpCard(),
          JoinCard(),
        ],
      ),
    );
  }

  Widget buildIndicator() {
    return Expanded(
      flex: 1,
      child: Center(
        child: SmoothPageIndicator(
          controller: pageCont,
          count: 3,
          effect: SwapEffect(
              activeDotColor: Colors.pink.withOpacity(.7),
              radius: 1,
              dotWidth: 25,
              dotHeight: 2.5),
        ),
      ),
    );
  }

  Widget buildTitleText(TextTheme textTheme) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Fashion",
              style: textTheme.headline1,
            ),
            Text(
              "Store",
              style: textTheme.headline1.copyWith(
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
