import 'package:flutter/material.dart';
import 'package:grintech/constant/dimens.dart';
import 'package:grintech/page_routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grintech/blocs/wallet_bloc/wallet_bloc.dart';
import 'package:grintech/blocs/wallet_bloc/wallet_event.dart';
import 'package:grintech/blocs/wallet_bloc/wallet_state.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class AddOnBoardingScreen extends StatefulWidget {
  const AddOnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<AddOnBoardingScreen> createState() => _AddOnBoardingScreenState();
}

class _AddOnBoardingScreenState extends State<AddOnBoardingScreen> {

  bool _isObscure = true;
  String? _currentSelectedWallet;

  @override
  void initState() {
    getWalletList();
    super.initState();
  }

  void getWalletList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    BlocProvider.of<WalletBloc>(context).add(
      GetWalletList(
        token: prefs.getString('token') ?? "token"
      )
    );
  }

  void _launchURL(String url) async {
    if(url != ""){
      if (!await launch("https://helium-onboarding.kerlink.com/?wallet="+url)) throw 'Could not launch $url';
    }
  }

  Widget _buildBody(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(Dimens.Level_3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(                
                Icons.arrow_back,  
                color: Colors.white, 
              ),
              onPressed: () {
                Navigator.pop(context);
              }
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Choose Your Wallet",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: Dimens.Level_3,
                      fontWeight: FontWeight.w600
                    )
                  ),
                  SizedBox(height: Dimens.Level_5),
                  Container(
                  padding: EdgeInsets.symmetric(horizontal: Dimens.Level_2),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: new BorderRadius.circular(Dimens.Level_1)
                    ),
                    
                    child: BlocBuilder<WalletBloc, WalletState>(
                      builder: (context, state) {
                        if(state is WalletSuccess){
                          var data = state.data;
                          return new DropdownButtonHideUnderline(
                            child: DropdownButton<String?>(isExpanded: true,
                              value: _currentSelectedWallet,
                              style: TextStyle(color: Colors.white),
                              icon: Icon(                
                                Icons.arrow_drop_down,  
                                color: Colors.white, 
                              ),
                              hint: Text(
                                "Wallet",
                                style: TextStyle(color: Colors.white)
                              ),
                              items: data.map((item) {
                                return DropdownMenuItem<String>(
                                  child: Text(item.key),
                                  value: item.address,
                                );
                              }).toList(),
                              dropdownColor:Theme.of(context).colorScheme.secondary,
                              onChanged: (value) {
                                setState((){
                                  _currentSelectedWallet = value;
                                });

                              },
                            ),
                          );
                        } else {
                          return Container();
                        }
                      },
                    ),
                  ),
                  SizedBox(height: Dimens.Level_2),
                  ElevatedButton(      
                    style: ElevatedButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(Dimens.Level_1),
                      ),
                      minimumSize: const Size.fromHeight(Dimens.Level_6), // NEW
                    ),
                    onPressed: () {
                      _launchURL(_currentSelectedWallet ?? "");
                    },
                    child: const Text('Next'),
                  ),
                  SizedBox(height: Dimens.Level_1),
                  TextButton(
                    child: Text('Skip to Address & QR Code'),
                    onPressed: () {
                      print('Pressed');
                    }
                  )
                ]
              ),
            ),
            TextButton(
              child: Text('Onboarding Instruction'),
              onPressed: () {
                print('Pressed');
              }
            )
          ]
        )
      )
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: _buildBody()
    );
  }
}
