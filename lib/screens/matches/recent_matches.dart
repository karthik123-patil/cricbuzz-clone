import 'package:flutter/material.dart';

import '../../Utils/Colors.dart';

class RecentMatches extends StatefulWidget {
  const RecentMatches({Key? key}) : super(key: key);

  @override
  State<RecentMatches> createState() => _RecentMatchesState();
}

class _RecentMatchesState extends State<RecentMatches> {
  bool isShowMore = false;
  bool isShowInd = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: AppColors.background,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 8.0, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text( "INTERNATIONAL",
                    style:TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 16,
                        fontStyle: FontStyle.normal),)
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: AppColors.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.closeIconColor,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 1.0,
                    ),
                  ]
              ),
              child: Column(
                children: [

                  Column(
                    children: [
                      Container(
                        color: AppColors.leagueColor1,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 30, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text( "SOUTH AFRICA TOUR OF INDIA, 2022",
                                style:TextStyle(
                                    color: Colors.black38,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal),),
                              Icon(Icons.arrow_forward_ios, color: Colors.black, size: 15,),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 30, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:   [
                            Text( "3rd T20 • Indore",
                              style:TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal),),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 28, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset("assets/images/sa.webp",  scale: 1.5,),
                                    const SizedBox(width: 10,),
                                    const Text("RSA", style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal
                                    ),),
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Image.asset("assets/images/ind.webp",  scale: 1,),
                                    const SizedBox(width: 10,),
                                    const Text("IND", style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Text("227-3 (20)", style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                Row(
                                  children: const [
                                    Text("178 (18.3)", style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 28, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:   const [
                            Text( "South Africa won by 49 runs",
                              style:TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal),),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 30, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:   [
                            Text( "2nd T20 • Guwahati",
                              style:TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 28, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset("assets/images/ind.webp",  scale: 1,),
                                    const SizedBox(width: 10,),
                                    const Text("IND", style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal
                                    ),),
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Image.asset("assets/images/sa.webp",  scale: 1.5,),
                                    const SizedBox(width: 10,),
                                    const Text("RSA", style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Text("237-3 (20)", style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                Row(
                                  children: const [
                                    Text("221-3 (20)", style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 28, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:   const [
                            Text( "India won by 16 runs",
                              style:TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal),),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                      ),
                      isShowMore?Container():Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 28, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width:30,
                                      height:30,
                                      decoration:  BoxDecoration(
                                          color: Colors.grey.shade300,
                                          borderRadius: const BorderRadius.all(Radius.circular(10))
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                            "1",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 15,
                                            )
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 5,),
                                    const Text(
                                        "more matches",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,

                                        )
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children:   [
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isShowMore = true;
                                    });
                                  },
                                  icon: Icon(Icons.keyboard_arrow_down, color: Colors.grey,),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      isShowMore?
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 30, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:   [
                                Text( "1st T20 • Thiruvananthapuram",
                                  style:TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 28, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset("assets/images/sa.webp",  scale: 1.5,),
                                        const SizedBox(width: 10,),
                                        const Text("RSA", style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal
                                        ),),
                                      ],
                                    ),
                                    const SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Image.asset("assets/images/ind.webp",  scale: 1,),
                                        const SizedBox(width: 10,),
                                        const Text("IND", style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        Text("106-8 (20)", style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      ],
                                    ),
                                    const SizedBox(height: 10,),
                                    Row(
                                      children: const [
                                        Text("110-2 (16.4)", style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 28, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:   const [
                                Text( "India won by 8 wkts",
                                  style:TextStyle(
                                      color: Colors.blueAccent,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal),),
                              ],
                            ),
                          ),
                        ],
                      ):Container(),
                    ],
                  ),

                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: AppColors.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.closeIconColor,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 1.0,
                    ),
                  ]
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        color: AppColors.leagueColor1,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 30, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text( "ENGLAND TOUR OF PAKISTAN 2022",
                                style:TextStyle(
                                    color: Colors.black38,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal),),
                              Icon(Icons.arrow_forward_ios, color: Colors.black, size: 15,),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 30, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:   [
                            Text( "7th T20 • Lahore",
                              style:TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal),),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 28, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset("assets/images/eng.webp",  scale: 1.5,),
                                    const SizedBox(width: 10,),
                                    const Text("ENG", style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal
                                    ),),
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Image.asset("assets/images/pak.webp",  scale: 1.5,),
                                    const SizedBox(width: 10,),
                                    const Text("PAK", style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Text("209-3 (20)", style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                Row(
                                  children: const [
                                    Text("148-8 (20)", style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 28, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:   const [
                            Text( "England won by 67 runs",
                              style:TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal),),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 30, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:   [
                            Text( "6th T20 • Lahore",
                              style:TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal),),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 28, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset("assets/images/pak.webp",  scale: 1.5,),
                                    const SizedBox(width: 10,),
                                    const Text("PAK", style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal
                                    ),),
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Image.asset("assets/images/eng.webp",  scale: 1.5,),
                                    const SizedBox(width: 10,),
                                    const Text("ENG", style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Text("169-6 (20)", style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                Row(
                                  children: const [
                                    Text("170-2 (14.3)", style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 28, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:   const [
                            Text( "England won by 8 wkts",
                              style:TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal),),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                      ),
                      isShowInd?Container():Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 28, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width:30,
                                      height:30,
                                      decoration:  BoxDecoration(
                                          color: Colors.grey.shade300,
                                          borderRadius: const BorderRadius.all(Radius.circular(10))
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                            "4",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 15,
                                            )
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 5,),
                                    const Text(
                                        "more matches",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,

                                        )
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children:   [
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isShowInd = true;
                                    });
                                  },
                                  icon: Icon(Icons.keyboard_arrow_down, color: Colors.grey,),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      isShowInd?
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 30, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:   [
                                Text( "5th T20 • Lahore",
                                  style:TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal),),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 28, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset("assets/images/pak.webp",  scale: 1.5,),
                                        const SizedBox(width: 10,),
                                        const Text("PAK", style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal
                                        ),),
                                      ],
                                    ),
                                    const SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Image.asset("assets/images/eng.webp",  scale: 1.5,),
                                        const SizedBox(width: 10,),
                                        const Text("ENG", style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        Text("145 (19)", style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      ],
                                    ),
                                    const SizedBox(height: 10,),
                                    Row(
                                      children: const [
                                        Text("139-7 (20)", style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 28, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:   const [
                                Text( "Pakistan won by 6 runs",
                                  style:TextStyle(
                                      color: Colors.blueAccent,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal),),
                              ],
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 30, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:   [
                                Text( "4th T20 • Karachi",
                                  style:TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal),),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 28, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset("assets/images/pak.webp",  scale: 1.5,),
                                        const SizedBox(width: 10,),
                                        const Text("PAK", style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal
                                        ),),
                                      ],
                                    ),
                                    const SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Image.asset("assets/images/eng.webp",  scale: 1.5,),
                                        const SizedBox(width: 10,),
                                        const Text("ENG", style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        Text("166-4 (20)", style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      ],
                                    ),
                                    const SizedBox(height: 10,),
                                    Row(
                                      children: const [
                                        Text("163 (19.2)", style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 28, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:   const [
                                Text( "Pakistan won by 3 runs",
                                  style:TextStyle(
                                      color: Colors.blueAccent,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal),),
                              ],
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 30, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:   [
                                Text( "3rd T20 • Karachi",
                                  style:TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal),),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 28, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset("assets/images/eng.webp",  scale: 1.5,),
                                        const SizedBox(width: 10,),
                                        const Text("ENG", style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal
                                        ),),
                                      ],
                                    ),
                                    const SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Image.asset("assets/images/pak.webp",  scale: 1.5,),
                                        const SizedBox(width: 10,),
                                        const Text("PAK", style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        Text("221-3 (20)", style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      ],
                                    ),
                                    const SizedBox(height: 10,),
                                    Row(
                                      children: const [
                                        Text("158-8 (20)", style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 28, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:   const [
                                Text( "England won by 63 runs",
                                  style:TextStyle(
                                      color: Colors.blueAccent,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal),),
                              ],
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 30, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:   [
                                Text( "2nd T20 • Karachi",
                                  style:TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal),),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 28, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset("assets/images/eng.webp",  scale: 1.5,),
                                        const SizedBox(width: 10,),
                                        const Text("ENG", style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal
                                        ),),
                                      ],
                                    ),
                                    const SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Image.asset("assets/images/pak.webp",  scale: 1.5,),
                                        const SizedBox(width: 10,),
                                        const Text("PAK", style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        Text("199-5 (20)", style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      ],
                                    ),
                                    const SizedBox(height: 10,),
                                    Row(
                                      children: const [
                                        Text("203-0 (19.3)", style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 28, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:   const [
                                Text( "Pakistan won by 10 wkts",
                                  style:TextStyle(
                                      color: Colors.blueAccent,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal),),
                              ],
                            ),
                          ),
                        ],
                      ):Container(),
                    ],
                  ),

                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: AppColors.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.closeIconColor,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 1.0,
                    ),
                  ]
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        color: AppColors.leagueColor1,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 30, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text( "WEST INDIES TOUR OF AUSTRALIA, 2022",
                                style:TextStyle(
                                    color: Colors.black38,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal),),
                              Icon(Icons.arrow_forward_ios, color: Colors.black, size: 15,),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 30, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:   [
                            Text( "1st T20 • Queensland",
                              style:TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal),),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 28, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset("assets/images/wi.webp",  scale: 1.5,),
                                    const SizedBox(width: 10,),
                                    const Text("WI", style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal
                                    ),),
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Image.asset("assets/images/aus.webp",  scale: 1.5,),
                                    const SizedBox(width: 10,),
                                    const Text("AUS", style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Text("145-9 (20)", style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                Row(
                                  children: const [
                                    Text("146-7 (19.5)", style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 28, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:   const [
                            Text( "Australia won by 3 wkts",
                              style:TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal),),
                          ],
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}