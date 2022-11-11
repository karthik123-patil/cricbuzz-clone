import 'package:cricbuzz/Utils/Colors.dart';
import 'package:flutter/material.dart';

class TopicsScreen extends StatefulWidget {
  const TopicsScreen({Key? key}) : super(key: key);

  @override
  State<TopicsScreen> createState() => _TopicsScreenState();
}

class _TopicsScreenState extends State<TopicsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: AppColors.whiteColor,
      child: SingleChildScrollView(
        child: Column(
          children: const [
            ListTile(
              title: Text("IPL 2022", style:TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
              subtitle: Text("IPL 2022", style:TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
            ),
            Divider(
              color: Colors.black38,
            ),
            ListTile(
              title: Text("Inside Story", style:TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
              subtitle: Text("Unpacking all the facts and going in-depth into news stories", style:TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
            ),
            Divider(
              color: Colors.black38,
            ),
            ListTile(
              title: Text("Reflections", style:TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
              subtitle: Text("A deep and considered look at relevant themes", style:TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
            ),
            Divider(
              color: Colors.black38,
            ),
            ListTile(
              title: Text("Dialogue Room", style:TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
              subtitle: Text("A new, in-depth interview with people who matter", style:TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
            ),
            Divider(
              color: Colors.black38,
            ),
            ListTile(
              title: Text("Think Tank", style:TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
              subtitle: Text("Deconstructing the finer nuances of the game", style:TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
            ),
            Divider(
              color: Colors.black38,
            ),
            ListTile(
              title: Text("IPL 2020 Previews", style:TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
              subtitle: Text("Building up to IPL 2020 with an exhaustive analysis of all the eight teams in contention", style:TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
            ),
            Divider(
              color: Colors.black38,
            ),
            ListTile(
              title: Text("View-Counterview", style:TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
              subtitle: Text("Debating, dissecting and inviting opinions on the two opposing sides to all things cricket", style:TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
            ),
            Divider(
              color: Colors.black38,
            ),
            ListTile(
              title: Text("The Name of the Game", style:TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
              subtitle: Text("An exclusive series where our team of writers, alongside experts, break down the art and science of..", style:TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
            ),
            Divider(
              color: Colors.black38,
            ),
            ListTile(
              title: Text("The first day of the rest of their lives", style:TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
              subtitle: Text("Retirement talks and more..", style:TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
            ),
          ],
        ),
      ),
    );
  }
}
