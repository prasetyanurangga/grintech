import 'package:flutter/material.dart';
import 'package:grintech/constant/dimens.dart';
import 'package:grintech/page_routes.dart';

class OnBoardingFragment extends StatefulWidget {
  const OnBoardingFragment({Key? key}) : super(key: key);

  @override
  State<OnBoardingFragment> createState() => _OnBoardingFragmentState();
}

class _OnBoardingFragmentState extends State<OnBoardingFragment> {

  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          centerTitle: true,
          title: Text(
            "OnBoarding",
            style: TextStyle(
              color: Colors.white,
              fontSize: Dimens.Level_2,
              fontWeight: FontWeight.w600
            )
          ),
          actions: [
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.search ),
              onPressed: () {},
            ),
          ],
          elevation: 0,
          bottom: TabBar(
            indicatorColor: Theme.of(context).colorScheme.primary,
            unselectedLabelColor: Colors.white,
            labelColor: Colors.white,
            tabs: [
              Tab(text: "In Review"),
              Tab(text: "Approved"),
              Tab(text: "Rejected"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "No Data Found",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: Dimens.Level_2,
                        fontWeight: FontWeight.w600
                      )
                    ),
                    Text(
                      "Try to add new onboarding",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: Dimens.Level_1_half,
                        fontWeight: FontWeight.w300
                      )
                    ),
                  ]
                ),
              )
            ),
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "No Data Found",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: Dimens.Level_2,
                        fontWeight: FontWeight.w600
                      )
                    ),
                    Text(
                      "Try to add new onboarding",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: Dimens.Level_1_half,
                        fontWeight: FontWeight.w300
                      )
                    ),
                  ]
                ),
              )
            ),
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "No Data Found",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: Dimens.Level_2,
                        fontWeight: FontWeight.w600
                      )
                    ),
                    Text(
                      "Try to add new onboarding",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: Dimens.Level_1_half,
                        fontWeight: FontWeight.w300
                      )
                    ),
                  ]
                ),
              )
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed(PageRoutes.linkAddOnboarding);
          },
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
