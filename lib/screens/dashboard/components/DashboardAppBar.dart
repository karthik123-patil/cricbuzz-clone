import 'package:cricbuzz/screens/authentication/login_screen.dart';
import 'package:cricbuzz/utils/style.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class DashboardAppBar extends StatefulWidget with PreferredSizeWidget {
  DashboardAppBar({Key? key}) : super(key: key);

  @override
  _DashboardAppBarState createState() => _DashboardAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class _DashboardAppBarState extends State<DashboardAppBar> {
  Widget appBarTitle = const Text(
    "Products",
    style: TextStyle(
        color: AppColors.blackColor,
        fontStyle: FontStyle.normal,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w500,
        fontSize: 14,
        letterSpacing: 1),
  );

  Icon actionIcon = const Icon(
    Icons.search,
    color: AppColors.blackColor,
  );

  final key =  GlobalKey<ScaffoldState>();

  final TextEditingController _searchQuery =  TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.appSubColor,
      title: Stack(
        children: [
          Align(
            alignment:  const Alignment(-1.1, 0),
            child: Container(
              margin: const EdgeInsets.all(20),
              height: 100.0,
              width: 100.0,
              child: Image.asset("assets/images/app_logo.png",color: AppColors.whiteColor,),
            ),
          ),
        ],
      ),
      actions: [
        InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LoginScreen()));
          },
          child: Container(
            width: 70,
            margin: const EdgeInsets.all(12.0),
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(50)
            ),
            child:const  Center(child: Text('Log In', style: txtStyle.headingText,)),
          ),
        )
      ],
      bottom: const TabBar(
        indicatorColor: AppColors.whiteColor,
        labelStyle: txtStyle.tabTextStyle,
        labelColor: AppColors.whiteColor,
        unselectedLabelColor: Colors.white60,
        unselectedLabelStyle: txtStyle.tabTextStyle,
        tabs: [
          Tab(
            text: 'FEATURED',
          ),
          Tab(
            text: 'CRICBUZZ PLUS',
          ),
        ],
      ),
    );
  }
}
