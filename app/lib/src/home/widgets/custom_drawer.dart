import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .85,
      child: NavigationDrawer(
        onDestinationSelected: (value) {
          switch (value) {
            case 0:
              break;
            case 1:
              Navigator.pop(context);
              Navigator.pushNamed(context, '/config');
              break;
          }
        },
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 28, 16, 16),
            child: Text(
              'Opções',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          NavigationDrawerDestination(
            icon: const Icon(Icons.sync_rounded),
            label: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Expanded(flex: 8, child: Text('Sincronizar')),
                  const Spacer(),
                  Flexible(
                    flex: 14,
                    child: Text(
                      '10/02/2024 às 14:30',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
          const NavigationDrawerDestination(
            icon: Icon(Icons.settings_rounded),
            label: Text('Configirações'),
          ),
        ],
      ),
    );
  }
}
