import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        children: [
          Card(
            child: Column(children: const [
              ListTile(
                leading: Icon(
                  Icons.photo_album_outlined,
                  color: AppTheme.primary,
                ),
                title: Text('Soy un titulo'),
                subtitle: Text(
                    'Ea nisi est aute nostrud ullamco. Nisi amet ad ullamco labore sit deserunt laborum adipisicing dolore enim eu incididunt ad laboris. Irure non fugiat exercitation do voluptate duis sint culpa sit ullamco eiusmod tempor. Velit id esse ipsum labore reprehenderit mollit est et sunt elit.'),
              )
            ]),
          )
        ],
      ),
    );
  }
}
