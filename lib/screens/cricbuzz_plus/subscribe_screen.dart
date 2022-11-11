import 'package:carousel_slider/carousel_slider.dart';
import 'package:cricbuzz/Utils/Colors.dart';
import 'package:cricbuzz/utils/style.dart';
import 'package:flutter/material.dart';
import '../authentication/login_screen.dart';
import '../data/datas.dart';

class SubscribeScreen extends StatefulWidget {
  const SubscribeScreen({Key? key}) : super(key: key);

  @override
  State<SubscribeScreen> createState() => _SubscribeScreenState();
}

class _SubscribeScreenState extends State<SubscribeScreen> {
  List benefits = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      benefits = ResponseData().cricbuzzPlusBenefits;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgColor1,
        appBar: AppBar(
          backgroundColor: AppColors.appSubColor,
          /*leading: IconButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const BottomNavScreen(intCurIndex: 0)));
          },
          icon: Icon(Icons.arrow_back, color: AppColors.whiteColor,),
        ),*/
          automaticallyImplyLeading: true,
          centerTitle: false,
          title: Text(
            "Subscribe",
            style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.2,
                fontStyle: FontStyle.normal),
          ),
          actions: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Container(
                width: 70,
                margin: const EdgeInsets.all(12.0),
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(50)),
                child: const Center(
                    child: Text(
                  'Log In',
                  style: txtStyle.headingText,
                )),
              ),
            )
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: AppColors.bgColor1,
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text(
                      "Cricbuzz Plus Benefits",
                      style: TextStyle(
                          color: AppColors.blackColor.withOpacity(0.9),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.2,
                          fontStyle: FontStyle.normal),
                    ),
                  ],
                ),
              ),
              CarouselSlider.builder(
                itemCount: benefits.length,
                options: CarouselOptions(
                  height: 150,
                  autoPlay: true,
                  enlargeCenterPage: false,
                  viewportFraction: 0.9,
                  aspectRatio: 2.0,
                  initialPage: 0,
                ),
                itemBuilder: (BuildContext context, int itemIndex,
                        int pageViewIndex) =>
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 150.0,
                            decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 134,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(10)),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                benefits[itemIndex]['bgImg']),
                                            fit: BoxFit.fill),
                                      ),
                                    )
                                  ],
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          benefits[itemIndex]['title'],
                                          style: TextStyle(
                                              color: AppColors.blackColor
                                                  .withOpacity(0.9),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.2,
                                              fontStyle: FontStyle.normal),
                                        ),
                                        Text(
                                          benefits[itemIndex]['desc'],
                                          style: TextStyle(
                                              color: AppColors.blackColor
                                                  .withOpacity(0.6),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 0.2,
                                              fontStyle: FontStyle.normal),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ))),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  color: AppColors.bgYellow,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "MOST POPULAR PLAN",
                              style: TextStyle(
                                  color: AppColors.blackColor
                                      .withOpacity(0.8),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.2,
                                  fontStyle: FontStyle.normal
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width:double.infinity,
                        color: AppColors.appSubColor,
                        child: Column(
                          children: [
                            Container(
                              width:270,
                              decoration: BoxDecoration(
                                color: AppColors.darkYellowColor,
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Special Discount for You",
                                      style: TextStyle(
                                          color: AppColors.blackColor
                                              .withOpacity(0.8),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 0.2,
                                          fontStyle: FontStyle.normal
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 30,),
                            ListTile(
                              leading: Icon(Icons.check_circle, color: AppColors.whiteColor,),
                              contentPadding: EdgeInsets.all(2),
                              title:  Text(
                                "CRICBUZZ PLUS + TIMES PRIME",
                                style: TextStyle(
                                    color: AppColors.whiteColor
                                        .withOpacity(0.9),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal
                                ),
                              ),
                              subtitle: Text(
                                "Annual Combo Plan",
                                style: TextStyle(
                                    color: AppColors.whiteColor ,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal
                                ),
                              ),
                              trailing: Column(
                                children: [
                                  Text(
                                    "INR  1199",
                                    style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                        color: AppColors.whiteColor
                                            .withOpacity(0.9),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal
                                    ),
                                  ),
                                  Text(
                                    "INR  999",
                                    style: TextStyle(
                                        color: AppColors.whiteColor
                                            .withOpacity(0.9),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.normal
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                "Get 15 Subscriptions with 1 Plan and save INR 10000!",
                                style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.2,
                                    fontStyle: FontStyle.normal
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                "Save more than INR 10000 with combo plan. Get 1 year subscription of Cricbuzz Plus and Times Prime. Get complimentary access to 6 Months of Disney+ Hotstar, 6 Months of SonyLIV, 6 Months of EasyDinner & much more with Times Prime.",
                                style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.2,
                                    fontStyle: FontStyle.normal
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 300,
                        decoration: BoxDecoration(
                            color: AppColors.yellowColor,
                            image: DecorationImage(
                                image: AssetImage("assets/images/hero_plan.webp"),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "View Details",
                              style: TextStyle(
                                  color: AppColors.blueColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.2,
                                  fontStyle: FontStyle.normal
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  color: AppColors.bgYellow,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "MOST POPULAR PLAN",
                              style: TextStyle(
                                  color: AppColors.blackColor
                                      .withOpacity(0.8),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.2,
                                  fontStyle: FontStyle.normal
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width:double.infinity,
                        color: AppColors.whiteColor.withOpacity(0.8),
                        child: Column(
                          children: [
                            Container(
                              width:200,
                              decoration: BoxDecoration(
                                  color: AppColors.darkYellowColor,
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Early Bird Offer",
                                      style: TextStyle(
                                          color: AppColors.blackColor
                                              .withOpacity(0.8),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 0.2,
                                          fontStyle: FontStyle.normal
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 30,),
                            ListTile(
                              leading: Icon(Icons.radio_button_unchecked_outlined, color: AppColors.blackColor.withOpacity(0.8),),
                              contentPadding: EdgeInsets.all(2),
                              title:  Text(
                                "CRICBUZZ PLUS",
                                style: TextStyle(
                                    color: AppColors.blackColor
                                        .withOpacity(0.8),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal
                                ),
                              ),
                              subtitle: Text(
                                "Annual Plan",
                                style: TextStyle(
                                    color: AppColors.blackColor.withOpacity(0.7) ,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal
                                ),
                              ),
                              trailing: Column(
                                children: [
                                  Text(
                                    "INR  750",
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: AppColors.blackColor
                                            .withOpacity(0.9),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal
                                    ),
                                  ),
                                  Text(
                                    "INR  399",
                                    style: TextStyle(
                                        color: AppColors.blackColor
                                            .withOpacity(0.7),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.normal
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                "The best of cricket for the greatest fan of Cricket",
                                style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.2,
                                    fontStyle: FontStyle.normal
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                "Get 1 year subscription of Cricbuzz Plus. And enjoy exclusive articles, videos and more without any intrusive Ads",
                                style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.2,
                                    fontStyle: FontStyle.normal
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        color: AppColors.bgColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: "PREMIUM",
                                  style:  TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white,
                                      fontFamily: 'Ubuntu'
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(text: ' EDITORIALS', style:  TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        fontFamily: 'Ubuntu'
                                    )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 150,
                        decoration: BoxDecoration(
                            color: AppColors.yellowColor,
                            image: DecorationImage(
                                image: AssetImage("assets/images/feature-image.webp"),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                      Container(
                        color: AppColors.bgColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: "CRICBUZZ",
                                  style:  TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontFamily: 'Ubuntu'
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(text: ' ORIGINALS', style:  TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white,
                                        fontFamily: 'Ubuntu'
                                    )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 150,
                        decoration: BoxDecoration(
                            color: AppColors.yellowColor,
                            image: DecorationImage(
                                image: AssetImage("assets/images/feature-image1.webp"),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                      SizedBox(height: 20,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40,),
              RichText(
                text: TextSpan(
                  text: "Already subscribed?\t",
                  style:  TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.6),
                      fontFamily: 'Ubuntu'
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'Log In', style:  TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: AppColors.appSubColor,
                        fontFamily: 'Ubuntu',
                      decoration: TextDecoration.underline
                    )),
                  ],
                ),
              ),

            ]),
          ),
        ),
        bottomSheet: Container(
          height: 188,
          decoration: BoxDecoration(
            color: AppColors.lightDimColor1,
            boxShadow: const <BoxShadow>[
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 2.0), //(x,y)
                blurRadius: 5.0,
              ),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 250,
                      decoration: BoxDecoration(
                        color: AppColors.blackColor,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: AppColors.whiteColor,
                            ),
                            Text(
                              "\t\tRedeem Coupon",
                              style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.2),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.appSubColor.withOpacity(0.2),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15),
                  child: Row(
                    children: [
                      Checkbox(
                        value: true,
                        activeColor: AppColors.appSubColor,
                        onChanged: (val) {},
                      ),
                      RichText(
                        text: TextSpan(
                          text: "I agree with the",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                              fontFamily: 'Ubuntu'),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' Cancellation & Refund policy',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColors.appSubColor,
                                fontFamily: 'Ubuntu',
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            TextSpan(
                              text: ' of Cricbuzz',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black,
                                  fontFamily: 'Ubuntu'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.appSubColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "CONTINUE",
                        style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.2),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
