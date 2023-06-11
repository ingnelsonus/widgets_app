import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/widgets/side_menu.dart';
// import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';

// import '../../../config/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final GlobalKey<ScaffoldState> scaffildKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key:scaffildKey,
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
        centerTitle: false,
      ),
      body: const _HomeView(),
      drawer: SideMenu(scaffildKey: scaffildKey)
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();
  @override
  Widget build(BuildContext context) {
    //appMenuItems
    return ListView.builder(
      // physics: const BouncingScrollPhysics(),
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        return _CustomListTitle(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: () {

        //Usando flutter Nativo
        // Navigator.of(context).push(
        //     MaterialPageRoute(
        //       builder: (context) => const ButtonsScreen()
        //     )
        // );
        // Navigator.pushNamed(context, menuItem.link);

        //Usando Go Router
        context.push(menuItem.link);
        // context.pushNamed(name)
      },
      onLongPress: () {},
    );
  }
}
