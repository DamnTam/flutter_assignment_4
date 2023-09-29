import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

List<String> img = [
  'https://in.canon/media/image/2023/02/06/c83adfc2fcaf473f9935b6962f114b45_EOS+R50+Black+RF-S18-45mm.png',
  'https://ph.canon/media/image/2023/02/06/aa40086891434857aa3e5c6465f427a0_EOS+R50+Black+Front+Slant+Left.png',
  'https://assets.stickpng.com/images/580b57fbd9996e24bc43bfe9.png',
  'https://asia.canon/media/image/2023/05/19/b89bed4e21e540f985dedebe80166def_EOS+R100+RF-S18-45mm+Front+Slant.png',
  'https://assets.stickpng.com/images/580b57fbd9996e24bc43bfe9.png',
  'https://pngimg.com/d/photo_camera_PNG101601.png',
  'https://in.canon/media/image/2023/02/06/c83adfc2fcaf473f9935b6962f114b45_EOS+R50+Black+RF-S18-45mm.png',
  'https://ph.canon/media/image/2023/02/06/aa40086891434857aa3e5c6465f427a0_EOS+R50+Black+Front+Slant+Left.png',
  'https://assets.stickpng.com/images/580b57fbd9996e24bc43bfe9.png',
  'https://asia.canon/media/image/2023/05/19/b89bed4e21e540f985dedebe80166def_EOS+R100+RF-S18-45mm+Front+Slant.png',
  'https://assets.stickpng.com/images/580b57fbd9996e24bc43bfe9.png',
  'https://pngimg.com/d/photo_camera_PNG101601.png',
];

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: OrientationBuilder(builder: (context, orientation) {
        return orientation == Orientation.portrait
            ? Column(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipOval(
                          child: Image.network(
                        'https://cdn.hasselblad.com/f/77891/3840x1800/cf8fdedba3/x2d-lightweight-potrait-kit-banner.jpg',
                        height: screenWidth * 0.9,
                        width: screenWidth * 0.9,
                        fit: BoxFit.cover,
                      )),
                    ),
                  ),
                  const Text(
                    'Tanvir Ahmed Moon',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Hello,im Tanvir Ahmed Moon,I like about mobile app development with flutter and'
                      ' im super exited about Ostaad Flutter course!!!',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 17),
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                        itemCount: img.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 1,
                        ),
                        itemBuilder: (context, index) {
                          return Container(
                              margin: EdgeInsets.all(5),
                              height: 100,
                              width: 100,
                              color: Colors.grey,
                              child: Image.network(img[index]));
                        }),
                  )
                ],
              )
            : Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipOval(
                          child: Image.network(
                        'https://cdn.hasselblad.com/f/77891/3840x1800/cf8fdedba3/x2d-lightweight-potrait-kit-banner.jpg',
                        height: screenWidth * 0.4,
                        width: screenWidth * 0.4,
                        fit: BoxFit.cover,
                      )),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.transparent,
                        height: screenWidth * .424,
                        width: screenWidth * .6,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Tanvir Ahmed',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Hello,im Tanvir Ahmed Moon,I like about mobile app development with flutter and'
                                ' im super exited about Ostaad Flutter course!!!',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300, fontSize: 17),
                              ),
                            ),
                            Expanded(
                              child: GridView.builder(
                                  itemCount: img.length,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    childAspectRatio: 1,
                                  ),
                                  itemBuilder: (context, index) {
                                    return Container(
                                        margin: EdgeInsets.all(5),
                                        height: 100,
                                        width: 100,
                                        color: Colors.grey,
                                        child: Image.network(
                                          img[index],
                                        ));
                                  }),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              );
      }),
    );
  }
}
