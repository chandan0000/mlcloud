import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mlcloud/showcase.dart';
import 'package:showcaseview/showcaseview.dart';

// class HomeScreen extends ConsumerStatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends ConsumerState<HomeScreen> {
//   final GlobalKey globalKeyOne = GlobalKey();
//   final GlobalKey globalKeyTwo = GlobalKey();
//   final GlobalKey globalKeyThree = GlobalKey();
//   final GlobalKey globalKeyFour = GlobalKey();
//   @override
//   void initState() {
//     WidgetsBinding.instance.addPostFrameCallback(
//       (_) => ShowCaseWidget.of(context).startShowCase(
//         [
//           globalKeyOne,
//           globalKeyTwo,
//           globalKeyThree,
//           globalKeyFour,
//         ],
//       ),
//     );
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('BottomNavigationBar Sample'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: ShowCaseView(
//           globalKey: globalKeyOne,
//           title: 'Homeascreen',
//           description: 'this my first app',
//           child: Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey globalKeyOne = GlobalKey();
  final GlobalKey globalKeyTwo = GlobalKey();

  @override
  void initState() {
    WidgetsBinding.instance
        .addPostFrameCallback((_) => ShowCaseWidget.of(context).startShowCase([
              globalKeyOne,
              globalKeyTwo,
            ]));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cloud ML'),
        actions: [
          ShowCaseView(
            globalKey: globalKeyOne,
            title: 'Notification',
            description: "click here",
            child: Icon(Icons.dangerous),
          )
        ],
      ),
      floatingActionButton: ShowCaseView(
        globalKey: globalKeyTwo,
        title: 'Add Users',
        description: 'Add new user data by clicking this button.',
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.amber,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
