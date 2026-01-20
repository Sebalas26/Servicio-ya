import 'package:ejercicio1/src/ui/utils/BlocFormItem.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class Loginstate extends Equatable {

  final GlobalKey<FormState>? formKey;
  final Blocformitem correo;
  final Blocformitem clave;

  const Loginstate ({
    this.correo = const Blocformitem( error: 'Ingresa el correo'),
    this.clave = const Blocformitem( error: 'Ingresa la clave'),
    this.formKey
  });

  Loginstate copyWith ({

   GlobalKey<FormState>? formKey,
   Blocformitem? correo,
   Blocformitem? clave

  }) {
    return Loginstate(
      correo: correo ?? this.correo,
      clave: clave ?? this.clave,
      formKey: formKey
    );
  }


  @override
  List<Object?> get props => [correo, clave];
  
}
