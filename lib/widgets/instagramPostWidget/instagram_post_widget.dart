import 'package:flutter/material.dart';
import 'package:lesson10fl/main.dart';

class instagramPostWidget extends StatelessWidget {
  const instagramPostWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 11),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/Oval.png',
                    width: 32,
                    height: 32,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'joshua_l',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff262626),
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Image.asset(
                            'assets/images/Official Icon.png',
                            width: 9.8,
                            height: 9.8,
                          ),
                        ],
                      ),
                      Text(
                        'Tokyo, Japan',
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomContainer(),
                  SizedBox(
                    width: 2.5,
                  ),
                  CustomContainer(),
                  SizedBox(
                    width: 2.5,
                  ),
                  CustomContainer(),
                ],
              ),
            ],
          ),
        ),
        CustomPost(),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 15.5, vertical: 13.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomIconsButtons(),
              Image.asset(
                'assets/images/favourite.png',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/likeImage.png',
                  ),
                  SizedBox(
                    width: 6.5,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Liked by' + ' ',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff262626),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'craig_love' + ' ',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff262626),
                          ),
                        ),
                        TextSpan(
                          text: 'and' + ' ',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff262626),
                          ),
                        ),
                        TextSpan(
                          text: '44,686 others',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff262626),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(
                  text: 'joshua_l' + ' ',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff262626),
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          'The game in Japan was amazing and I want to share some photos',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Color(0xff262626),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                'September 19',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  color: Color.fromRGBO(0, 0, 0, 0.4),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}