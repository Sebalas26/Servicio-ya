import 'package:ejercicio1/src/ui/pages/auth/login/bloc/LoginEvent.dart';
import 'package:ejercicio1/src/ui/pages/auth/login/bloc/LoginState.dart';
import 'package:ejercicio1/src/ui/utils/BlocFormItem.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Loginbloc extends Bloc<LoginEvent, Loginstate> {
  final formKey = GlobalKey<FormState>();

  Loginbloc() : super(Loginstate()) {
    on<LoginInitEvent>((event, emit) {
      emit(state.copyWith(formKey: formKey));
    });

    on<CorreoChanged>((event, emit) {
      // event.correo LO QUE EL USUARIO ESTA ESCRIBIENDO
      emit(state.copyWith(
        correo: Blocformitem(
          value: event.correo.value,
          error: event.correo.value.isEmpty 
          ? 'Ingresa el correo' : null
        ),
        formKey: formKey));
    });

    on<ClaveChanged>((event, emit) {
      emit(state.copyWith(
        clave: Blocformitem(
          value: event.clave.value,
          error: event.clave.value.isEmpty
          ? 'Ingresa la clave' 
          : event.clave.value.length < 6
            ? 'Clave es de minimo 7 caracteres'
            : null
        ), 
        formKey: formKey));
    });

    on<FormSubmit>((event, emit) {
      print("correo ${state.correo}");
      print("clave ${state.clave}");
    });
  }
}
