import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class WalletEvent extends Equatable {
  const WalletEvent();
  @override
  List<Object> get props => [];
}

class GetWalletList extends WalletEvent {
  final String token;
    GetWalletList({
      required this.token
    });
}