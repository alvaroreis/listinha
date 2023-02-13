import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:listinha/src/shared/widgets/listinha_appbar.dart';

import '../shared/stores/app_store.dart';

class ConfigurationPage extends StatelessWidget {
  const ConfigurationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appStore = context.watch<AppStore>((store) => store.themeMode);

    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Scaffold(
      appBar: ListinhaAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Flexible(
              flex: 20,
              child: Text(
                'Configurações',
                style: textTheme.headlineMedium
                    ?.copyWith(fontWeight: FontWeight.w500),
              ),
            ),
            const Spacer(),
            Text(
              'Temas',
              style: textTheme.titleMedium,
            ),
            const Spacer(),
            RadioListTile<ThemeMode>(
              contentPadding: EdgeInsets.zero,
              value: ThemeMode.system,
              title: const Text('Sistema'),
              groupValue: appStore.themeMode.value,
              onChanged: appStore.changeThemeMode,
            ),
            RadioListTile<ThemeMode>(
              contentPadding: EdgeInsets.zero,
              value: ThemeMode.light,
              title: const Text('Claro'),
              groupValue: appStore.themeMode.value,
              onChanged: appStore.changeThemeMode,
            ),
            RadioListTile<ThemeMode>(
              contentPadding: EdgeInsets.zero,
              value: ThemeMode.dark,
              title: const Text('Escuro'),
              groupValue: appStore.themeMode.value,
              onChanged: appStore.changeThemeMode,
            ),
            const Spacer(flex: 2),
            Text(
              'Controle de dados',
              style: textTheme.titleMedium,
            ),
            const Spacer(),
            OutlinedButton(
              child: const Text('Apagar cache e reiniciar app'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
