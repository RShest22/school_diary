import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        //centerTitle: true,
        title: const Text('Настройки'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            _UserInfo(),
            SizedBox(height: 5),
            _BlocMenuWidget(),
            SizedBox(height: 5),
            _BlocMenuWidgetSecond(),
          ],
        ),
      ),
    );
  }
}

class _BlocMenuWidgetSecond extends StatelessWidget {
  const _BlocMenuWidgetSecond();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                Icon(Icons.notifications),
                SizedBox(width: 20),
                Expanded(child: Text('Уведомления и звуки')),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
          const Divider(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                Icon(Icons.privacy_tip),
                SizedBox(width: 20),
                Expanded(child: Text('Конфиденциальность')),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
          const Divider(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                Icon(Icons.date_range),
                SizedBox(width: 20),
                Expanded(child: Text('Данные и память')),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
          const Divider(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                Icon(Icons.brush),
                SizedBox(width: 20),
                Expanded(child: Text('Оформление')),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
          const Divider(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                Icon(Icons.language),
                SizedBox(width: 20),
                Expanded(child: Text('Язык')),
                Icon(Icons.chevron_right),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _BlocMenuWidget extends StatelessWidget {
  const _BlocMenuWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                Icon(Icons.favorite_border_rounded),
                SizedBox(width: 20),
                Expanded(child: Text('Избранное')),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
          const Divider(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                Icon(Icons.call),
                SizedBox(width: 20),
                Expanded(child: Text('Недавние звонки')),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
          const Divider(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                Icon(Icons.computer),
                SizedBox(width: 20),
                Expanded(child: Text('Устройства')),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
          const Divider(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                Icon(Icons.folder),
                SizedBox(width: 20),
                Expanded(child: Text('Папки с чатами')),
                Icon(Icons.chevron_right),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: const [
          SizedBox(height: 20),
          _UserAvatar(),
          SizedBox(height: 20),
          _UserNameWidget(),
          SizedBox(height: 10),
          _UserPhoneWidget(),
          SizedBox(height: 10),
          _UserNickNameWidget(),
          SizedBox(height: 10),
        ],
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
