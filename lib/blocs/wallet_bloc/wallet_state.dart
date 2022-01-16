import 'package:grintech/models/wallet_response_model.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class WalletState extends Equatable {
  const WalletState();

  @override
  List<Object> get props => [];
}

class WalletInitial extends WalletState {}

class WalletLoading extends WalletState {}

class WalletSuccess extends WalletState {
  final List<Data> data;

  WalletSuccess({required this.data});

}

class WalletFailure extends WalletState {
  final String error;

  const WalletFailure({required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'WalletFailure { error: $error }';
}