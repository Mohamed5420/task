class UserLoginEntity{
  final String phone;
  final String password;


  UserLoginEntity({required this.phone, required this.password});

  Map<String, dynamic> toJson() => {
    "phone": phone,
    "password": password
  };

}