import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyBoardType;
  final bool esPassword;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyBoardType,
    this.esPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,

      //keyboardType: keyBoardType == null ? null : TextInputType.emailAddress,
      keyboardType: keyBoardType,
      obscureText: esPassword,

      onChanged: (value) {
        print('value: $value ');
      },
      validator: (value) {
        if (value == null) return 'Este campo es requerido.';

        return value.length < 3 ? 'Minimo 3 caracteres' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        // hintText: 'Nombre de usuario',
        // labelText: 'Nombre',
        // helperText: 'Solo Letras',

        // prefixIcon: Icon(Icons.verified_user_outlined),
        suffixIcon: suffixIcon == null
            ? null
            : Icon(suffixIcon), // Icon(Icons.group_outlined),
        icon: icon == null
            ? null
            : Icon(icon), // Icon(Icons.assignment_ind_outlined),
        // focusedBorder: OutlineInputBorder(
        //   borderSide: BorderSide(
        //     color: Colors.green
        //   )

        // ) ,
        // border: OutlineInputBorder(
        //     borderRadius: BorderRadius.only(
        //         bottomLeft: Radius.circular(10),
        //         topRight: Radius.circular(10),
        //     )
        // )
      ),
    );
  }
}
