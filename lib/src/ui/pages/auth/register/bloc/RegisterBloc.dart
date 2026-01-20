import 'package:ejercicio1/src/ui/pages/auth/register/bloc/RegisterEvent.dart';
import 'package:ejercicio1/src/ui/pages/auth/register/bloc/RegisterState.dart';
import 'package:ejercicio1/src/ui/utils/BlocFormItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBloc extends Bloc<RegisterEvent, Registerstate> {
  final formKey = GlobalKey<FormState>();

  RegisterBloc() : super(const Registerstate()) {
    on<RegisterInitEvent>((event, emit) {
      emit(state.copyWith(formKey: formKey));

      on<NameChanged>((event, emit) {
        emit(state.copyWith(
            nombre: Blocformitem(
                value: event.nombre.value,
                error:
                    event.nombre.value.isNotEmpty ? 'Ingresa el nombre' : null),
            formKey: formKey));
      });

      on<LastNameChanged>((event, emit) {
        emit(state.copyWith(
            apellidos: Blocformitem(
                value: event.apellidos.value,
                error: event.apellidos.value.isNotEmpty
                    ? 'Ingresa el apellido'
                    : null),
            formKey: formKey));
      });

      on<MailChanged>((event, emit) {
        emit(state.copyWith(
            correo: Blocformitem(
                value: event.correo.value,
                error:
                    event.correo.value.isNotEmpty ? 'Ingresa el correo' : null),
            formKey: formKey));
      });

      on<PhoneChanged>((event, emit) {
        emit(state.copyWith(
            telefono: Blocformitem(
                value: event.telefono.value,
                error: event.telefono.value.isNotEmpty
                    ? 'Ingresa el telefono'
                    : null),
            formKey: formKey));
      });

      on<PasswordChanged>((event, emit) {
        emit(state.copyWith(
            clave: Blocformitem(
                value: event.clave.value,
                error: event.clave.value.isNotEmpty
                    ? 'Ingresa la clave'
                    : event.clave.value.length < 6
                        ? 'minimo 6 digitos'
                        : null),
            formKey: formKey));
      });

      on<ConfirmPasswordChanged>((event, emit) {
        emit(state.copyWith(
            repetirClave: Blocformitem(
                value: event.confirmarClave.value,
                error: event.confirmarClave.value.isNotEmpty
                    ? 'Ingresa la clave'
                    : event.confirmarClave.value.length < 6
                        ? 'minimo 6 digitos'
                        : null),
            formKey: formKey));
      });
    });
  }
}
