import 'package:flutter/material.dart';
import 'package:proyect/features/screens/profile/ui/widget/field_profile_widget.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final TextEditingController name = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController cc = TextEditingController();
  final TextEditingController sex = TextEditingController();
  final TextEditingController dateBirth = TextEditingController();
  final TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mi Perfil',
        ),
        leading: const Icon(
          Icons.arrow_back,
        ),
        backgroundColor: Colors.orange.shade500,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 20,
          ),
          child: Column(
            children: [
              CircleAvatar(
                radius: 80,
                backgroundColor: Colors.white,
                child: Image.network(
                  'https://media.istockphoto.com/id/1300845620/es/vector/icono-de-usuario-plano-aislado-sobre-fondo-blanco-s%C3%ADmbolo-de-usuario-ilustraci%C3%B3n-vectorial.jpg?s=612x612&w=is&k=20&c=zPM_oUwye9se11xNJdiJtq6iCxZ97z7Lpa2GUf1p8GU=',
                ),
              ),
              FieldProfileWidget(
                controller: name,
                textLabel: 'nombre',
                textHinText: 'nombre',
              ),
              FieldProfileWidget(
                controller: lastName,
                textLabel: 'Apellidos',
                textHinText: 'Apellidos',
              ),
              FieldProfileWidget(
                controller: cc,
                textLabel: 'Cedula',
                textHinText: 'Cedula',
              ),
              FieldProfileWidget(
                controller: sex,
                textLabel: 'sexo',
                textHinText: 'sexo',
              ),
              FieldProfileWidget(
                controller: dateBirth,
                textLabel: 'Fecha de nacimiento',
                textHinText: 'Fecha de nacimiento',
              ),
              FieldProfileWidget(
                controller: email,
                textLabel: 'Email',
                textHinText: 'Email',
              ),
              _buttonSave(() {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buttonSave(VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 15,
        ),
        decoration: BoxDecoration(
            color: Colors.green.shade500,
            borderRadius: BorderRadius.circular(
              30,
            )),
        child: const Text(
          'Guardar',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
