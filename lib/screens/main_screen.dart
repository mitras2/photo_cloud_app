import 'package:photo_cloud/main.dart';
import 'package:flutter/material.dart';
import 'package:photo_cloud/data_models/user_login_prefs.dart';
import 'package:photo_cloud/prototyping/image_list.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  void showImage(BuildContext context, String imageName) {
    Navigator.pushNamed(context, Routes.image, arguments: imageName);
  }

  @override
  Widget build(BuildContext context) {
    final UserLoginPrefs? user = ModalRoute.of(context)?.settings.arguments as UserLoginPrefs?;
    final String name = user?.username ?? "none";

    // https://stackoverflow.com/questions/58740104/flutter-read-all-files-from-asset-folder
    //final manifestJson = await DefaultAssetBundle.of(context).loadString('AssetManifest.json');
    //final images = json.decode(manifestJson).keys.where((String key) => key.startsWith('assets/images'));

    return Stack(children: [
      GridView.count(
        crossAxisCount: 4,
        childAspectRatio: 1,
        mainAxisSpacing: 0,
        crossAxisSpacing: 0,
        children: List.generate(image_names.length, (index) {
          return GestureDetector(
            onTap: () => showImage(context, image_names[index]),
            child:
              Container (
                child:
                  Hero(
                    tag: image_names[index],
                    child: Image.asset(
                      'assets/images/' + image_names[index],
                      fit: BoxFit.cover,
                    ),
                  )
              )
          );
        }
        ) ,
      ),
      // SafeArea(
      //     child: Text("home of $name"),
      // )
    ],);
  }
}
