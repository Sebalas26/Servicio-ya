import 'package:ejercicio1/src/ui/utils/BlocFormItem.dart';

abstract class RegisterEvent {}

class RegisterInitEvent extends RegisterEvent {}

class NameChanged extends RegisterInitEvent{
  final Blocformitem nombre;
  NameChanged({ required this.nombre});
}

class LastNameChanged extends RegisterInitEvent{
  final Blocformitem apellidos;
  LastNameChanged({ required this.apellidos});
}

class MailChanged extends RegisterInitEvent{
  final Blocformitem correo;
  MailChanged({ required this.correo});
}

class PhoneChanged extends RegisterInitEvent{
  final Blocformitem telefono;
  PhoneChanged({ required this.telefono});
}

class PasswordChanged extends RegisterInitEvent{
  final Blocformitem clave;
  PasswordChanged({ required this.clave});
}

class ConfirmPasswordChanged extends RegisterInitEvent{
  final Blocformitem confirmarClave;
  ConfirmPasswordChanged({ required this.confirmarClave});
}

class FormSubmit extends RegisterInitEvent{}

class FormReset extends RegisterInitEvent{}