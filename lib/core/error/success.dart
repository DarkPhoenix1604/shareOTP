import 'message.dart';

abstract class AppSuccess extends Message {
const  AppSuccess({required super.message});
  
}

class SuccessMessage extends AppSuccess {
  const SuccessMessage({required super.message});
}
