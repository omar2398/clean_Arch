import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

abstract class networkInfo {
  Future<bool> get isConnected;
}

class networkInfoImp implements networkInfo{
  final internetConnection = InternetConnection();
  @override
  Future<bool> get isConnected async => await internetConnection.hasInternetAccess;
}