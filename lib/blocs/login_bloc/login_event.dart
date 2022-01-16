import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
  @override
  List<Object> get props => [];
}

class GetLogin extends LoginEvent {
  final String email;
  final String password;
  GetLogin({
    required this.email, 
    required this.password
  });
}