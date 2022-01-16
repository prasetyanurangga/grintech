import 'dart:async';

import 'package:grintech/blocs/login_bloc/login_event.dart';
import 'package:grintech/blocs/login_bloc/login_state.dart';
import 'package:grintech/models/login_response_model.dart';
import 'package:grintech/providers/response_data.dart';
import 'package:grintech/repositories/main_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  MainRepository mainRepository = MainRepository();

  LoginBloc() : super(LoginInitial()) {
    on<GetLogin>((event, emit) async {
      emit(LoginLoading());
      try {

        Map<String, String> requestBody = <String,String>{
          'email' : event.email,
          'password' : event.password,
          'uuid':'1312412312412',
          'fcm_token':'wadadawdaw'
        };
        final ResponseData<dynamic> response = await mainRepository.getLogin(requestBody);
        var finalResponse = response.data;
        print(finalResponse);
        if (response.status == Status.ConnectivityError) {
          emit(const LoginFailure(error: ""));
        }
        if (response.status == Status.Success) {
          emit(LoginSuccess(data: finalResponse));
        } else {
          emit(LoginFailure(error: response.message ??  "Error"));
        }
      } catch (error) {
        print(error);
        emit(LoginFailure(error: error.toString()));
      }
    });
  }
}