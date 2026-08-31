import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String userName;
  final String email;
  final String password;

  const UserEntity({
    required this.userName,
    required this.email,
    required this.password,
  });

  factory UserEntity.empty() {
    return UserEntity(userName: "", email: "", password: "");
  }

  @override
  List<Object?> get props => [userName, email, password];
}
