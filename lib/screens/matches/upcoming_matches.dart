import 'package:flutter/material.dart';

import '../../Utils/Colors.dart';
class UpcomingMatchesScreen extends StatefulWidget {
  const UpcomingMatchesScreen({Key? key}) : super(key: key);

  @override
  State<UpcomingMatchesScreen> createState() => _UpcomingMatchesScreenState();
}

class _UpcomingMatchesScreenState extends State<UpcomingMatchesScreen> {
  bool isShowMore = false;
  bool isShowInd = false;
  @override
  Widget build(BuildContext context) {
    return
      Container(
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
                              Text( "ICC MENS T20 WORLD CUP 2022",
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
                            Text( "1st Match, Group A • Geelong",
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
                                    const Text("Sri Lanka", style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal
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
                                    Image.asset("assets/images/namibia.webp",  scale: 1.5,),
                                    const SizedBox(width: 10,),
                                    const Text("Namibia", style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal
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
                            Text( "Sun, 16 Oct • 9.30 am",
                              style:TextStyle(
                                  color: Colors.brown,
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
                            Text( "2nd Match, Group A • Geelong",
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
                                    Image.asset("assets/images/united.webp",  scale: 1.5,),
                                    const SizedBox(width: 10,),
                                    const Text("United Arab Emirates", style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal
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
                                    Image.asset("assets/images/netherland.webp",  scale: 1.5,),
                                    const SizedBox(width: 10,),
                                    const Text("Netherlands", style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal
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
                            Text( "Sun, 16 Oct • 1.30 pm",
                              style:TextStyle(
                                  color: Colors.brown,
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
                                          "5",
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
                                Text( "3rd Match, Group B • Hobart",
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
                                        Image.asset("assets/images/wi.webp",  scale: 1.5,),
                                        const SizedBox(width: 10,),
                                        const Text("West Indies", style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal
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
                                        Image.asset("assets/images/scotland.webp",  scale: 1.5,),
                                        const SizedBox(width: 10,),
                                        const Text("Scotland", style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal
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
                                Text( "Mon, 17 Oct • 9.30 am",
                                  style:TextStyle(
                                      color: Colors.brown,
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
                                Text( "4th Match, Group B • Hobart",
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
                                        Image.asset("assets/images/zim.webp",  scale: 1.5,),
                                        const SizedBox(width: 10,),
                                        const Text("Zimbabwe", style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal
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
                                        Image.asset("assets/images/ireland.webp",  scale: 1.5,),
                                        const SizedBox(width: 10,),
                                        const Text("Ireland", style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal
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
                                Text( "Mon, 17 Oct • 1.30 pm",
                                  style:TextStyle(
                                      color: Colors.brown,
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
                                Text( "5th Match, Group A • Geelong",
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
                                        Image.asset("assets/images/namibia.webp",  scale: 1.5,),
                                        const SizedBox(width: 10,),
                                        const Text("Namibia", style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal
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
                                        Image.asset("assets/images/netherland.webp",  scale: 1.5,),
                                        const SizedBox(width: 10,),
                                        const Text("Netherlands", style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal
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
                                Text( "Tue, 18 Oct • 9.30 am",
                                  style:TextStyle(
                                      color: Colors.brown,
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
                                Text( "6th Match, Group A • Geelong",
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
                                        const Text("Sri Lanka", style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal
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
                                        Image.asset("assets/images/united.webp",  scale: 1.5,),
                                        const SizedBox(width: 10,),
                                        const Text("United Arab Emirates", style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal
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
                                Text( "Tue, 18 Oct • 1.30 pm",
                                  style:TextStyle(
                                      color: Colors.brown,
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
                                Text( "7th Match, Group B • Hobart",
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
                                        Image.asset("assets/images/scotland.webp",  scale: 1.5,),
                                        const SizedBox(width: 10,),
                                        const Text("Scotland", style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal
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
                                        Image.asset("assets/images/ireland.webp",  scale: 1.5,),
                                        const SizedBox(width: 10,),
                                        const Text("Ireland", style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal
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
                                Text( "Wed, 19 Oct • 9.30 am",
                                  style:TextStyle(
                                      color: Colors.brown,
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
                            Text( "3rd T20 • Indore",
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
                                    const Text("India", style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal
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
                                    const Text("South Africa", style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal
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
                            Text( "Today • 7:00 pm",
                              style:TextStyle(
                                  color: Colors.brown,
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
                            Text( "1st ODI • Lucknow",
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
                                    const Text("India", style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal
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
                                    const Text("South Africa", style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal
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
                            Text( "Thu, 06 Oct • 1:30 pm",
                              style:TextStyle(
                                  color: Colors.brown,
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
                                            "2",
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
                                Text( "2nd ODI • Ranchi",
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
                                        const Text("India", style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal
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
                                        const Text("South Africa", style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal
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
                                Text( "Sun, 09 Oct • 1:30 pm",
                                  style:TextStyle(
                                      color: Colors.brown,
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
                                Text( "3rd ODI • Delhi",
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
                                        const Text("India", style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal
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
                                        const Text("South Africa", style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal
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
                                Text( "Tue, 11 Oct • 1:30 pm",
                                  style:TextStyle(
                                      color: Colors.brown,
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
                                    Image.asset("assets/images/aus.webp",  scale: 1.5,),
                                    const SizedBox(width: 10,),
                                    const Text("Australia", style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal
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
                                    Image.asset("assets/images/wi.webp",  scale: 1.5,),
                                    const SizedBox(width: 10,),
                                    const Text("West Indies", style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal
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
                            Text( "Tomorrow • 1:40 pm",
                              style:TextStyle(
                                  color: Colors.brown,
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
                            Text( "2nd T20 • Brisbane",
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
                                    Image.asset("assets/images/aus.webp",  scale: 1.5,),
                                    const SizedBox(width: 10,),
                                    const Text("Australia", style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal
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
                                    Image.asset("assets/images/wi.webp",  scale: 1.5,),
                                    const SizedBox(width: 10,),
                                    const Text("West Indies", style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal
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
                            Text( "Fri, 07 Oct • 1:40 pm",
                              style:TextStyle(
                                  color: Colors.brown,
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