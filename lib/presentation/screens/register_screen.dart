import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/presentation/blocs/register/register_cubit.dart';
import 'package:forms_app/presentation/widgets/inputs/custom_text_form_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Nuevo usuario'),
        ),
        body: BlocProvider(
          create: (context) => RegisterCubit(),
          child: const _RegisterView(),
        ));
  }
}

class _RegisterView extends StatelessWidget {
  const _RegisterView();

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
            //mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlutterLogo(size: 100),
              _RegisterForm(),
              SizedBox(height: 20),
            ]),
      ),
    ));
  }
}

class _RegisterForm extends StatelessWidget {
  const _RegisterForm();

  @override
  Widget build(BuildContext context) {

    final registerCubit = context.watch<RegisterCubit>();
    final username = registerCubit.state.username;
    final email = registerCubit.state.email;
    final password = registerCubit.state.password;

    return Form(
        child: Column(
      children: [
        CustomTextFormField(
          label: 'Nombre de ususario',
          onChange: registerCubit.usernameChanged,
          errorMessage: username.errorMessage,
        ),
        const SizedBox(height: 10),


        CustomTextFormField(
          label: 'Correo Electrónico',
          onChange: registerCubit.emailChanged,
          errorMessage: email.errorMessage,
        ),
        const SizedBox(height: 10),
        

        CustomTextFormField(
          label: 'Contraseña',
          obscureText: true,
          onChange: registerCubit.passwordChanged,
          errorMessage: password.errorMessage,
        ),
        const SizedBox(height: 20),
        FilledButton.tonalIcon(
            onPressed: () {
              registerCubit.onSubmit();
            },
            icon: const Icon(Icons.save),
            label: const Text('Crear usuario')),
      ],
    ));
  }
}
