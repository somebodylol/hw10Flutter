import 'package:flutter/material.dart';
import 'package:lesson10fl/widgets/instagramPostWidget/instagram_post_widget.dart';
import 'package:lesson10fl/widgets/strory_widgets/list_of_story_widgets.dart';

void main() {
  runApp(Practice11());
}

class Imagess extends StatelessWidget {
  Imagess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SizedBox(
            height: 300,
            width: 300,
            child: ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    width: 150,
                    height: 150,
                    color: Colors.pink,
                    child: Text(index.toString()),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 15,
                    child: Text(index.toString()),
                  );
                }),
          ),
        ),
      ),
    );
  }
}

class Practice10 extends StatelessWidget {
  Practice10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffF9F9F9),
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back_ios,
            color: Color(0xff59A4F2),
          ),
          backgroundColor: Color(0xffF9F9F9),
          title: Text(
            'телефоны служб',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Color(0xff333333),
            ),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Column(
          children: [
            CustomMainText(
              text: 'Медицина',
              imageForCardItem: 'assets/images/medicine.png',
              textForCardItem: 'Единый телефон служб',
            ),
            CustomMainText(
              text: 'Полиция',
              textForCardItem: 'Единый телефон служб',
              imageForCardItem: 'assets/images/medicine.png',
            ),
            CustomMainText(
              text: 'Транспорт',
              imageForCardItem: 'assets/images/medicine.png',
              textForCardItem: 'Единый телефон служб',
            ),
            CustomMainText(
              textWidth: 65,
              text: 'Свои номера',
              imageForCardItem: 'assets/images/hotel.png',
              textForCardItem: 'Отель Невский',
              isHaveButton: true,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomMainText extends StatelessWidget {
  String text;
  String textForCardItem;
  String imageForCardItem;
  double? textWidth;
  bool? isHaveButton;
  CustomMainText({
    required this.textForCardItem,
    required this.imageForCardItem,
    required this.text,
    this.textWidth,
    this.isHaveButton = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.width * 0.1136),
          Text(
            text,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.067,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                isHaveButton!
                    ? Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: 83,
                            height: 83,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color(0xffF1564A),
                              ),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Color(0xffF1564A),
                            ),
                          ),
                        ),
                      )
                    : SizedBox(),
                CustomCard(
                  image: imageForCardItem,
                  text: textForCardItem,
                  textWidth: textWidth,
                ),
                SizedBox(width: 20),
                CustomCard(
                  image: imageForCardItem,
                  text: textForCardItem,
                  textWidth: textWidth,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String image;
  final double? textWidth;
  final String text;
  CustomCard({
    required this.image,
    required this.text,
    Key? key,
    this.textWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.0533),
      height: 83,
      decoration: BoxDecoration(
        color: Color(0xff59A4F2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 51,
            height: 51,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.0427,
          ),
          SizedBox(
            width: textWidth ?? MediaQuery.of(context).size.width * 0.332,
            child: Text(
              text,
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}

class Practice11 extends StatelessWidget {
  Practice11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: AppBar(
          elevation: 0,
          leading: Image.asset(
            'assets/images/Camera Icon.png',
            width: 20.5,
            height: 19,
          ),
          backgroundColor: Color(0xffFAFAFA),
          title: Image.asset(
            'assets/images/Instagram Logo.png',
            width: 105,
            height: 28,
          ),
          centerTitle: true,
          actions: [
            Image.asset(
              'assets/images/IGTV.png',
              width: 22,
              height: 24.57,
            ),
            SizedBox(
              width: 20.31,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12.59),
              child: Image.asset(
                'assets/images/Shape.png',
                width: 22.73,
                height: 19.75,
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListOfStoryWidgets(),
            instagramPostWidget(),
          ],
        ),
      ),
    );
  }
}



class CustomIconsButtons extends StatelessWidget {
  const CustomIconsButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/heart.png',
          ),
          Image.asset(
            'assets/images/comment.png',
          ),
          Image.asset(
            'assets/images/Shape.png',
          ),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 3,
      height: 3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xff262626),
      ),
    );
  }
}

class CustomPost extends StatelessWidget {
  const CustomPost({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/Rectangle.png',
      fit: BoxFit.cover,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.4318,
    );
  }
}

class CustomImageText extends StatelessWidget {
  final String profileImage;
  final String nicknameText;
  final bool? isLive;
  const CustomImageText({
    this.isLive = false,
    required this.profileImage,
    required this.nicknameText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.0533),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            profileImage,
          ),
          // SizedBox(height: isLive! ? 0 : 5),
          Text(
            nicknameText,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
