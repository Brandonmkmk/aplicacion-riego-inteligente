// import 'package:mongo_dart/mongo_dart.dart';

// class Users {
//   final ObjectId id;
//   final String nombre;
//   final String apellidos;
//   final String password;

//   const Users(
//       {required this.id,
//       required this.nombre,
//       required this.apellidos,
//       required this.password});

//   //convierte en una lista de objetos de clave valor
//   Map<String, dynamic> toMap() {
//     return {
//       '_id': id,
//       'nombre': nombre,
//       'apellidos': apellidos,
//       'password': password
//     };
//   }

//   Users.fromMap(Map<String, dynamic> map)
//       : nombre = map['nombre'],
//         id = map['_id'],
//         apellidos = map['apellidos'],
//         password = map['password'];
// }
