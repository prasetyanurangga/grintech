import 'package:flutter/material.dart';
import 'package:grintech/constant/dimens.dart';
import 'package:grintech/page_routes.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({Key? key}) : super(key: key);

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {

  Widget _buildBody(){
    return Padding(
      padding: EdgeInsets.all(Dimens.Level_2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[

          SizedBox(height: Dimens.Level_2),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(Dimens.Level_4),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      "4",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: Dimens.Level_4,
                        fontWeight: FontWeight.w600
                      )
                    )
                  ),
                  SizedBox(width: Dimens.Level_1),
                  Text(
                    "Instalation",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: Dimens.Level_1_half,
                      fontWeight: FontWeight.w300
                    )
                  )
                ]
              ),
              SizedBox(width: Dimens.Level_3),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(Dimens.Level_4),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      "2",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: Dimens.Level_4,
                        fontWeight: FontWeight.w600
                      )
                    )
                  ),
                  SizedBox(width: Dimens.Level_1),
                  Text(
                    "Maintenance",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: Dimens.Level_1_half,
                      fontWeight: FontWeight.w300
                    )
                  )
                ]
              ),
              SizedBox(width: Dimens.Level_3),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(Dimens.Level_4),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      "0",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: Dimens.Level_4,
                        fontWeight: FontWeight.w600
                      )
                    )
                  ),
                  SizedBox(width: Dimens.Level_1),
                  Text(
                    "Inspection",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: Dimens.Level_1_half,
                      fontWeight: FontWeight.w300
                    )
                  )
                ]
              ),
            ]
          ),
          SizedBox(height: Dimens.Level_4),
          
          Text(
            "Today Task's",
            style: TextStyle(
              color: Colors.white,
              fontSize: Dimens.Level_2,
              fontWeight: FontWeight.w600
            )
          ),

          SizedBox(height: Dimens.Level_2),

          Column(
            children: [
              Container(      
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: new BorderRadius.circular(Dimens.Level_1),
                ),
                height: Dimens.Level_9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: Dimens.Level_1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimens.Level_1),
                            bottomLeft: Radius.circular(Dimens.Level_1)),
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(width: Dimens.Level_1),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "TKT/101021/123",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Dimens.Level_2,
                              fontWeight: FontWeight.w600
                            )
                          ),
                          SizedBox(height: Dimens.Level_1),
                          Text(
                            "Installation, 13.00-15.00",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Dimens.Level_2,
                              fontWeight: FontWeight.w300
                            )
                          ),
                        ]
                      )
                    )
                  ]
                )
              ),
              SizedBox(height: Dimens.Level_1),
              Container(      
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: new BorderRadius.circular(Dimens.Level_1),
                ),
                height: Dimens.Level_9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: Dimens.Level_1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimens.Level_1),
                            bottomLeft: Radius.circular(Dimens.Level_1)),
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(width: Dimens.Level_1),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "TKT/101021/124",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Dimens.Level_2,
                              fontWeight: FontWeight.w600
                            )
                          ),
                          SizedBox(height: Dimens.Level_1),
                          Text(
                            "Installation, 14.00-16.00",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Dimens.Level_2,
                              fontWeight: FontWeight.w300
                            )
                          ),
                        ]
                      )
                    )
                  ]
                )
              ),
              SizedBox(height: Dimens.Level_1),
              Container(      
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: new BorderRadius.circular(Dimens.Level_1),
                ),
                height: Dimens.Level_9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: Dimens.Level_1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimens.Level_1),
                            bottomLeft: Radius.circular(Dimens.Level_1)),
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(width: Dimens.Level_1),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "TKT/101021/123",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Dimens.Level_2,
                              fontWeight: FontWeight.w600
                            )
                          ),
                          SizedBox(height: Dimens.Level_1),
                          Text(
                            "Installation, 20.00-21.00",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Dimens.Level_2,
                              fontWeight: FontWeight.w300
                            )
                          ),
                        ]
                      )
                    )
                  ]
                )
              ),
            ]
          )

        ] 
      )
    );
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Angga",
              style: TextStyle(
                color: Colors.white,
                fontSize: Dimens.Level_2,
                fontWeight: FontWeight.w600
              )
            ),
            Text(
              "Technician",
              style: TextStyle(
                color: Colors.white,
                fontSize: Dimens.Level_1_half,
                fontWeight: FontWeight.w300
              )
            ),
          ]
        ),
        leading: Container(
          padding: EdgeInsets.all(Dimens.Level_1),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://source.unsplash.com/random/200x150"),
          )
        ),
        actions: [
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.notifications ),
            onPressed: () {},
          ),
          SizedBox(width: Dimens.Level_1),
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.settings ),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      body: _buildBody()
    );
  }
}
