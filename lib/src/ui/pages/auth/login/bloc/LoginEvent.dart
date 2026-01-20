import 'package:ejercicio1/src/ui/utils/BlocFormItem.dart';

abstract class LoginEvent {}

class LoginInitEvent extends LoginEvent {}

class CorreoChanged extends LoginEvent {
  final Blocformitem correo ;
  CorreoChanged({ required this.correo});
}

class ClaveChanged extends LoginEvent {
  final Blocformitem clave ;
  ClaveChanged({ required this.clave});
}

class FormSubmit extends LoginEvent {}