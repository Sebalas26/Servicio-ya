import 'package:ejercicio1/src/ui/utils/BlocFormItem.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

class Registerstate extends Equatable {

  final Blocformitem nombre;
  final Blocformitem apellidos;
  final Blocformitem correo;
  final Blocformitem telefono;
  final Blocformitem clave;
  final Blocformitem repetirClave;
  final GlobalKey <FormState>? formKey;
  
  const Registerstate ({
    this.nombre = const Blocformitem(error: 'Ingresa el nombre'),
    this.apellidos = const Blocformitem(error: 'Ingresa los apellidos'),
    this.correo = const Blocformitem(error: 'Ingresa el correo'),
    this.telefono = const Blocformitem(error: 'Ingresa el telefono'),
    this.clave = const Blocformitem(error: 'Ingresa la clave'),
    this.repetirClave = const Blocformitem(error: 'Ingresa la confirmacion de clave'),
    this.formKey

  });

  Registerstate copyWith ({

  Blocformitem? nombre,
  Blocformitem? apellidos,
  Blocformitem? correo,
  Blocformitem? telefono,
  Blocformitem? clave,
  Blocformitem? repetirClave,
  GlobalKey <FormState>? formKey

  }) {

    return Registerstate(
      nombre: nombre ?? this.nombre,
      apellidos: apellidos ?? this.apellidos,
      correo: correo ?? this.correo,
      telefono: telefono ?? this.telefono,
      clave: clave ?? this.clave,
      repetirClave: repetirClave ?? this.repetirClave,
      formKey: formKey
    );
  }
  
  @override

  List<Object?> get props => [nombre,apellidos,correo,telefono,clave,repetirClave];




}
