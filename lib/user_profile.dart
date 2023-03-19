import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Настройки'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            SizedBox(height: 20),
            _UserAvatar(),
            SizedBox(height: 20),
            _UserNameWidget(),
            SizedBox(height: 10),
            _UserPhoneWidget(),
            SizedBox(height: 10),
            _UserNickNameWidget()
          ],
        ),
      ),
    );
  }
}

class _UserNickNameWidget extends StatelessWidget {
  const _UserNickNameWidget();

  @override
  Widget build(BuildContext context) {
    return const Text('@nick_name');
  }
}

class _UserPhoneWidget extends StatelessWidget {
  const _UserPhoneWidget();

  @override
  Widget build(BuildContext context) {
    return const Text(
      '+375 29 123 45 67',
      style: TextStyle(
        fontSize: 17,
        color: Colors.grey,
        //fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget();

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Фамилия Имя Отчество',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _UserAvatar extends StatelessWidget {
  const _UserAvatar();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 100,
      height: 100,
      child: Placeholder(),
    );
  }
}
