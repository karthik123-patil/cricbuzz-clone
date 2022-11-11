import 'package:flutter/material.dart';

import '../../Utils/Colors.dart';

class LiveCricketMatches extends StatefulWidget {
  const LiveCricketMatches({Key? key}) : super(key: key);

  @override
  State<LiveCricketMatches> createState() => _LiveCricketMatchesState();
}

class _LiveCricketMatchesState extends State<LiveCricketMatches> {
  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: AppColors.background,
        child: Column(
          children: [
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
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 8.0, left: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text( "DOMESTIC",
                          style:TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 16,
                              fontStyle: FontStyle.normal),)
                      ],
                    ),
                  ),
                  Container(
                    color: AppColors.leagueColor1,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 30, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text( "IRANI CUP 2022",
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
                        Text( "Irani Cup • Rajkot",
                          style:TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal),),
                        const Icon(
                          Icons.notifications_none,
                          color: Colors.grey,
                        )
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
                                Image.asset("assets/images/sau.webp",  scale: 1.5,),
                                const SizedBox(width: 10,),
                                const Text("SAUR", style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal
                                ),),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text("98 & 380", style: TextStyle(
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
                    padding: const EdgeInsets.only(top: 5.0, bottom: 10.0, left: 28, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/roi.webp",  scale: 1.5,),
                                const SizedBox(width: 10,),
                                const Text("ROI", style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal
                                ),),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text("374 & 58-2", style: TextStyle(
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
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 8.0, left: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text( "WOMEN",
                          style:TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 16,
                              fontStyle: FontStyle.normal),)
                      ],
                    ),
                  ),
                  Container(
                    color: AppColors.leagueColor1,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 30, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text( "WOMENS ASIA CUP T20 2022",
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
                        Text( "7th Match • Sylhet",
                          style:TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal),),
                        const Icon(
                          Icons.notifications_none,
                          color: Colors.grey,
                        )
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
                                Image.asset("assets/images/sri.webp",  scale: 1,),
                                const SizedBox(width: 10,),
                                const Text("SLW", style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal
                                ),),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: const [
                                Text("156-5 (20)", style: TextStyle(
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
                    padding: const EdgeInsets.only(top: 5.0, bottom: 10.0, left: 28, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/thailand.webp",  scale: 1,),
                                const SizedBox(width: 10,),
                                const Text("THAIW", style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal
                                ),),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text("107-5 (20)", style: TextStyle(
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
                    color: AppColors.leagueColor1,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 30, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text( "SOUTH AFRICA TOUR OF INDIA 2022",
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
                        Text( "3rd T20 • Bengaluru",
                          style:TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal),),
                        const Icon(
                          Icons.notifications_none,
                          color: Colors.grey,
                        )
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
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: const [
                                Text("238-3 (20)", style: TextStyle(
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
                    padding: const EdgeInsets.only(top: 5.0, bottom: 10.0, left: 28, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/sa.webp",  scale: 1.5,),
                                const SizedBox(width: 10,),
                                const Text("SA", style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal
                                ),),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text("228-3 (20)", style: TextStyle(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}