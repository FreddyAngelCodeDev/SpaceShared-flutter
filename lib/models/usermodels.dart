class Usuario {
  final String nameuser;
  final String apellido;
  final String nameiduser;
  final String imgProfile;

  Usuario({
    required this.nameuser,
    required this.apellido,
    required this.nameiduser,
    required this.imgProfile,
  });

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
        nameuser: json['name_user'],
        apellido: json['apellido'],
        nameiduser: json['name_id_user'],
        imgProfile: json['imgProfile']);
  }
}
