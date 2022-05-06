import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:photo_cloud/prototyping/image_list.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ImageViewerState();
  }
}

class _ImageViewerState extends State<ImageScreen> {

  late PageController controller;

  void createController(initialImageName) {
    // if(controller is PageController) {
    //   return;
    // }


    var startIndex = image_names.indexOf(initialImageName);
    controller = PageController(
      initialPage: startIndex,
    );
  }

  int get currentPage {
    return controller.page?.toInt() ?? 0;
  }

  void keyListener(KeyEvent e) {
    if(e is KeyDownEvent) {
      return;
    }

    if (e.logicalKey == LogicalKeyboardKey.arrowRight) {
      int targetPage = currentPage + 1;
      controller.animateToPage(targetPage, duration: const Duration(milliseconds: 120), curve: Curves.easeInOutCubic);
      return;
    }

    if (e.logicalKey == LogicalKeyboardKey.arrowLeft) {
      int targetPage = currentPage - 1;
      controller.animateToPage(targetPage, duration: const Duration(milliseconds: 120), curve: Curves.easeInOutCubic);
      return;
    }

    return;
  }




  @override
  Widget build(BuildContext context) {
    final startImageName = ModalRoute.of(context)!.settings.arguments as String;
    createController(startImageName);

    return Stack(
      children: [
        KeyboardListener(
          focusNode: FocusNode(),
          onKeyEvent: (e) => keyListener(e),
          child: PageView(
            controller: controller,
            children: List.generate(
              image_names.length,
                (index) =>
                GestureDetector(
                  onDoubleTap: () => {},
                  child: InteractiveViewer(
                    child: Hero(
                      tag:image_names[index],
                      child: Image.asset('assets/images/' + image_names[index])
                    ),
                  ),
                )
            ),
          )
        ),
        CupertinoNavigationBar(
          // Try removing opacity to observe the lack of a blur effect and of sliding content.
          backgroundColor: CupertinoColors.tertiaryLabel.withOpacity(0.84),
          middle: const Text('Image'),
        ),
      ],
    );
  }
}
