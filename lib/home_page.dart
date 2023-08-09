
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:system_alert_window/system_alert_window.dart';

// ignore: must_be_immutable
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

// SystemAlertWindow systemAlertWindow = SystemAlertWindow();
class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
            child: SizedBox(
              height: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: ()async{

                        SystemWindowHeader header = SystemWindowHeader(
                          title: SystemWindowText(text: "Incoming Call", fontSize: 10, textColor: Colors.black45),
                          padding: SystemWindowPadding.setSymmetricPadding(12, 12),
                          subTitle: SystemWindowText(text: "9898989899", fontSize: 14, fontWeight: FontWeight.BOLD, textColor: Colors.black87),
                          decoration: SystemWindowDecoration(startColor: Colors.grey[100]),
                          button: SystemWindowButton(text: SystemWindowText(text: "Personal", fontSize: 10, textColor: Colors.black45), tag: "personal_btn"),);
                      SystemWindowBody body = SystemWindowBody(
                        rows: [
                          EachRow(
                            columns: [
                              EachColumn(
                                text: SystemWindowText(text: "Please Answer This Call",
                                    fontSize: 12, textColor: Colors.black45),
                              ),
                            ],
                            gravity: ContentGravity.CENTER,
                          ),
                        ],
                        padding: SystemWindowPadding(left: 16, right: 16, bottom: 12, top: 12),
                      );
                      SystemWindowFooter footer = SystemWindowFooter(
                          buttons: [
                            SystemWindowButton(
                              text: SystemWindowText(text: "Simple button", fontSize: 12, textColor: const Color.fromRGBO(250, 139, 97, 1)),
                              tag: "simple_button", //useful to identify button click event
                              padding: SystemWindowPadding(left: 10, right: 10, bottom: 10, top: 10),
                              width: 0,
                              height: SystemWindowButton.WRAP_CONTENT,
                              decoration: SystemWindowDecoration(
                                  startColor: Colors.white, endColor: Colors.white, borderWidth: 0, borderRadius: 0.0),
                            ),
                            SystemWindowButton(
                              text: SystemWindowText(text: "Focus button", fontSize: 12, textColor: Colors.white),
                              tag: "focus_button",
                              width: 0,
                              padding: SystemWindowPadding(left: 10, right: 10, bottom: 10, top: 10),
                              height: SystemWindowButton.WRAP_CONTENT,
                              decoration: SystemWindowDecoration(
                                  startColor: const Color.fromRGBO(250, 139, 97, 1), endColor: const Color.fromRGBO(247, 28, 88, 1), borderWidth: 0, borderRadius: 30.0),
                            )
                          ],
                          padding: SystemWindowPadding(left: 16, right: 16, bottom: 12),
                          decoration: SystemWindowDecoration(startColor: Colors.white),
                          buttonsPosition: ButtonPosition.CENTER);


                      SystemAlertWindow.showSystemWindow(
                          height: 230,
                          header: header,
                          body: body,
                          footer: footer,
                          margin: SystemWindowMargin(left: 8, right: 8, top: 100, bottom: 0),
                          gravity: SystemWindowGravity.TOP,
                          notificationTitle: "Incoming Call",
                          notificationBody: "+1 646 980 4741",
                          prefMode: SystemWindowPrefMode.DEFAULT);
                        },
                      child:  const Text("Get The Overlay"),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(onPressed: (){
                      SystemAlertWindow.closeSystemWindow();
                    }, child: const Text("Close The Overlay"),),
                  )
                ],
              ),
            ),
          ),
      //     // SizedBox(
      //     //   height: 50,
      //     //   child: ElevatedButton(
      //     //     onPressed:(){
      //     //       FlutterOverlayWindow.showOverlay(
      //     //           enableDrag: true,
      //     //           overlayTitle: "Demo",
      //     //           alignment: OverlayAlignment.center
      //     //       );}, child: const Text("Click Here For Overlay Notification"),),
      //     //   // child: ElevatedButton
      //     //   // (onPressed: (){
      //     //   //   _requestOverlayPermission(context);
      //     //   // },
      //     //   //  child: const Text("Click")),
      //     // ),
      //     // ElevatedButton(
      //     //   onPressed: (){
      //     //     FlutterOverlayWindow.shareData(
      //     //         const Column(
      //     //           children: [
      //     //             Padding(
      //     //               padding: EdgeInsets.all(8.0),
      //     //               child: Text("Hello"),
      //     //             ),
      //     //             SizedBox(height: 10,),
      //     //             Padding(
      //     //               padding: EdgeInsets.all(8.0),
      //     //               child: Text("Hii"),
      //     //             ),
      //     //           ],
      //     //         ));
      //     //   },
      //     //   child:  const Text("Click Here For Overlay screen"),),
      //     // ElevatedButton(onPressed: (){
      //     //   FlutterOverlayWindow.closeOverlay();
      //     //  },
      //     //   child:  const Text("Click Here For Close Overlay"),
      //     // ),
      //   ],
      // ),
    ]
    )
    );
  }
}
//
// void _showOverlayWindow() async {
//   bool isGranted = (SystemAlertWindow.checkPermissions) ;
//   if (isGranted) {
//     SystemWindowHeader header = SystemWindowHeader(
//         title: SystemWindowText(text: "Incoming Call", fontSize: 10, textColor: Colors.black45),
//         padding: SystemWindowPadding.setSymmetricPadding(12, 12),
//         subTitle: SystemWindowText(text: "9898989899", fontSize: 14, fontWeight: FontWeight.BOLD, textColor: Colors.black87),
//         decoration: SystemWindowDecoration(startColor: Colors.grey[100]),
//         button: SystemWindowButton(text: SystemWindowText(text: "Personal", fontSize: 10, textColor: Colors.black45), tag: "personal_btn"),
//         buttonPosition: ButtonPosition.TRAILING);
//
//
//   SystemWindowFooter footer = SystemWindowFooter(
//   buttons: [
//   SystemWindowButton(
//   text: SystemWindowText(text: "Simple button", fontSize: 12, textColor: Color.fromRGBO(250, 139, 97, 1)),
//   tag: "simple_button", //useful to identify button click event
//   padding: SystemWindowPadding(left: 10, right: 10, bottom: 10, top: 10),
//   width: 0,
//   height: SystemWindowButton.WRAP_CONTENT,
//   decoration: SystemWindowDecoration(
//   startColor: Colors.white, endColor: Colors.white, borderWidth: 0, borderRadius: 0.0),
//   ),
//   SystemWindowButton(
//   text: SystemWindowText(text: "Focus button", fontSize: 12, textColor: Colors.white),
//   tag: "focus_button",
//   width: 0,
//   padding: SystemWindowPadding(left: 10, right: 10, bottom: 10, top: 10),
//   height: SystemWindowButton.WRAP_CONTENT,
//   decoration: SystemWindowDecoration(
//   startColor: Color.fromRGBO(250, 139, 97, 1), endColor: Color.fromRGBO(247, 28, 88, 1), borderWidth: 0, borderRadius: 30.0),
//   )
//   ],
//   padding: SystemWindowPadding(left: 16, right: 16, bottom: 12),
//   decoration: SystemWindowDecoration(startColor: Colors.white),
//   buttonsPosition: ButtonPosition.CENTER);
//
//   SystemWindowBody body = SystemWindowBody(
//   rows: [
//   EachRow(
//   columns: [
//   EachColumn(
//   text: SystemWindowText(text: "Some body", fontSize: 12, textColor: Colors.black45),
//   ),
//   ],
//   gravity: ContentGravity.CENTER,
//   ),
//   ],
//   padding: SystemWindowPadding(left: 16, right: 16, bottom: 12, top: 12),
//   );
//
//   SystemAlertWindow.showSystemWindow(
//   height: 230,
//   header: header,
//   body: body,
//   footer: footer,
//   margin: SystemWindowMargin(left: 8, right: 8, top: 100, bottom: 0),
//   gravity: SystemWindowGravity.TOP,
//   notificationTitle: "Incoming Call",
//   notificationBody: "+1 646 980 4741",
//   prefMode: SystemWindowPrefMode.DEFAULT);
//   //Using SystemWindowPrefMode.DEFAULT uses Overlay window till Android 10 and bubble in Android 11
//   //Using SystemWindowPrefMode.OVERLAY forces overlay window instead of bubble in Android 11.
//   //Using SystemWindowPrefMode.BUBBLE forces Bubble instead of overlay window in Android 10 & above
//   }
// }
//
