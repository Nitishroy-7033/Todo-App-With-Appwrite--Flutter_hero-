import 'package:appwrite/appwrite.dart';

class AppWriteService {

  static final AppWriteService _instance = AppWriteService._internal();
  factory AppWriteService() => _instance;
  AppWriteService._internal();
  static const String _baseURL = "https://cloud.appwrite.io/v1";
  static const String _projectID = "todowithappwrite";
  late Client client;
  void initialize() 
  {
    client = Client()
    ..setEndpoint(_baseURL)
    ..setProject(_projectID);
  }
}