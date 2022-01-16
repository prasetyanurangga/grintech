import 'dart:async';

import 'package:grintech/blocs/wallet_bloc/wallet_event.dart';
import 'package:grintech/blocs/wallet_bloc/wallet_state.dart';
import 'package:grintech/models/wallet_response_model.dart';
import 'package:grintech/providers/response_data.dart';
import 'package:grintech/repositories/main_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  MainRepository mainRepository = MainRepository();

  WalletBloc() : super(WalletInitial()) {
    on<GetWalletList>((event, emit) async {
      emit(WalletLoading());
      try {
        var token = event.token;
        final ResponseData<dynamic> response = await mainRepository.getWalletList(token);
        var finalResponse = response.data;
        if (response.status == Status.ConnectivityError) {
          emit(const WalletFailure(error: ""));
        }
        if (response.status == Status.Success) {
          emit(WalletSuccess(data: finalResponse as List<Data>));
        } else {
          emit(WalletFailure(error: response.message ??  "Error"));
        }
      } catch (error) {
        print(error);
        emit(WalletFailure(error: error.toString()));
      }
    });
  }

}