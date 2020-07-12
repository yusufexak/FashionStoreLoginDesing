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
  double page = 0, pageone = 1, pagetwo = 1;

  PageController pageCont;
  @override
  void initState() {
    super.initState();
    pageCont = PageController(
      viewportFraction: .9,
    );
    pageCont.addListener(() {
      setState(() {
        page = pageCont.page;
        if (page <= 1 && page > 0) {
          pageone = 1 - page;
        }
        if (page <= 2 && page > 1) {
          pagetwo = 1 - (page - 1);
        }
      });
    });
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
          buildContinueButton(textTheme),
        ],
      ),
    );
  }

  Widget buildContinueButton(TextTheme textTheme) {
    return Expanded(
      flex: 2,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: SizedBox(
              width: 120,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: AppColors.kCyan),
                  ),
                  Transform.translate(
                    offset: Offset(140 * pageone, 0),
                    child: Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: AppColors.kPink),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(140 * pagetwo, 0),
                    child: Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: AppColors.kBlue),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Continio ",
                        style: textTheme.headline1
                            .copyWith(color: Colors.white, fontSize: 16),
                      ),
                      Icon(
                        Icons.play_arrow,
                        size: 15,
                        color: Colors.white,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
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
              activeDotColor: AppColors.kPink,
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
