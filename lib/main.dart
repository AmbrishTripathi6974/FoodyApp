import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ClassBuilder.dart';
import 'Pages/Authentication/Auth.dart';
import 'Pages/Home/home_page.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'controllers/popular_product_controller.dart';
import 'helper/dependencies.dart' as dep;
import 'Pages/Notification.dart';
import 'Pages/settings_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  ClassBuilder.registerClasses();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductContoller>().getPopularProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late KFDrawerController _drawerController;

  @override
  void initState() {
    super.initState();
    _drawerController = KFDrawerController(
      initialPage: ClassBuilder.fromString('HomePage'),
      
      items: [
        KFDrawerItem.initWithPage(
          text: Text(
            "HomePage",
            style: TextStyle(fontFamily: "Circular",color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          icon: Icon(
            FeatherIcons.home,
            color: Colors.white,
          ),
          page: ClassBuilder.fromString('HomePage'),
        ),

        KFDrawerItem.initWithPage(
          text: Text(
            "Favourites",
            style: TextStyle(fontFamily: "Circular",color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          icon: Icon(
            EvaIcons.heartOutline,
            color: Colors.white,
          ),
          page: Notifications(),
        ),

         KFDrawerItem.initWithPage(
          text: Text(
            "Settings",
            style: TextStyle(fontFamily: "Circular",color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          icon: Icon(
            EvaIcons.settings2Outline,
            color: Colors.white,
          ),
          page: SettingsPage(),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KFDrawer(
        controller: _drawerController,
        header: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          width: MediaQuery.of(context).size.width * 0.8,
          child: Row(
            children: <Widget>[
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: AssetImage('images/profile.png',),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(width: 15),
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Ambrish Tripathi",
                    style: TextStyle(fontFamily: "Circular",color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Flutter Developer",
                    style: TextStyle(fontFamily: "Circular",color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
        
        
        footer: KFDrawerItem(
          text: Text(
            "Logout",
            style: TextStyle(fontFamily: "Circular",color: Colors.white, fontSize: 18, fontWeight: FontWeight.w800),
          ),
          icon: Icon(
            FeatherIcons.logOut,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).push(CupertinoPageRoute(
              fullscreenDialog: true,
              builder: (BuildContext context) {
                return AuthPage();
              },
            ));
          },
        ),

        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: [Color.fromRGBO(146, 19, 136, 1), Color.fromRGBO(82, 147, 226, 1)],
            tileMode: TileMode.repeated,
          ),
        ),
      ),
    );
  }
}
