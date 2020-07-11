import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialContainer extends StatelessWidget {
  final String svg;
  final String title;
  final bool isSelect;

  const SocialContainer({Key key, this.svg, this.title, this.isSelect = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          15,
        ),
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
          width: 1.5,
        ),
      ),
      child: Container(
        margin: EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              svg,
              height: 35,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      .copyWith(fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              child: isSelect == true
                  ? Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.pink.withOpacity(.7),
                          shape: BoxShape.circle),
                      child: Icon(
                        Icons.done,
                        size: 16,
                        color: Colors.white,
                      ),
                    )
                  : Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey.withOpacity(.7), width: 2),
                          shape: BoxShape.circle),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
