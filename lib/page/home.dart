// ignore_for_file: prefer_const_constructors, unnecessary_const, prefer_const_literals_to_create_immutables

import 'package:chat/theme/color.dart';
import 'package:cosmos/cosmos.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: JeaColor.bgColor,
      body: SafeArea(
        child: SizedBox(
          width: width(context),
          height: height(context),
          child: Expanded(
            child: Column(children: [
              top(context),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CosmosBody(
                    scrollable: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      messageComponent(
                          context,
                          "assets/image/user.png",
                          "Efe",
                          "Otobüs duyulmamış gitti lakin masaya doğru. Sokaklarda mıknatıslı okuma sayfası",
                          "00.15",
                          false),
                      messageComponent(
                          context,
                          "assets/image/user.png",
                          "Efe",
                          "Lambadaki gidecekmiş cesurca yaptı ona doğru sıla. Işık dağılımı mıknatıslı okuma sayfası biber ama lakin teldeki sarmal açılmadan dolayı un değirmeni bilgiyasayarı koyun. Gidecekmiş un değirmeni bundan dolayı bilgisayarı şafak masanın.",
                          "00.15",
                          true),
                      messageComponent(
                          context,
                          "assets/image/user.png",
                          "Efe",
                          "Mıknatıslı okuma sayfası cesurca yaptı beğendim sıradanlıktan çakıl. Filmini mi cesurca yaptı yapacakmış umut beğendim cesurca yaptı cezbelendi masanın batarya kutusu türemiş sıfat. Ona doğru anlamsız gazete otobüs gidecekmiş eve doğru ekşili çorba dışarı çıktılar bilgiyasayarı gidecekmiş.",
                          "00.15",
                          false),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: CosmosTextBox(
                          "Mesaj Yaz",
                          color: JeaColor.textColor,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Mesaj Yaz",
                              hintStyle: TextStyle(
                                  color: JeaColor.textColor.withOpacity(0.5))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(5),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.send_rounded,
                            color: JeaColor.textColor.withOpacity(0.7),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }

  Row messageComponent(BuildContext context, String image, String name,
      String message, String time, bool sender) {
    return sender == false
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: ClipOval(
                      child: CosmosImage(
                        image,
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                width: width(context) * 0.6,
                decoration: BoxDecoration(
                    color: JeaColor.cColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            color: JeaColor.textColor.withOpacity(0.5),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        message,
                        style: TextStyle(
                            color: JeaColor.textColor.withOpacity(0.8),
                            fontSize: 16,
                            overflow: TextOverflow.clip),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          time,
                          style: TextStyle(
                              color: JeaColor.textColor.withOpacity(0.5),
                              fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                width: width(context) * 0.6,
                decoration: BoxDecoration(
                    color: JeaColor.cColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            color: JeaColor.textColor.withOpacity(0.5),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        message,
                        style: TextStyle(
                            color: JeaColor.textColor.withOpacity(0.8),
                            fontSize: 16,
                            overflow: TextOverflow.clip),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          time,
                          style: TextStyle(
                              color: JeaColor.textColor.withOpacity(0.5),
                              fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: ClipOval(
                      child: CosmosImage(
                        image,
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
  }

  Widget top(context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "EfeChat",
                  style: GoogleFonts.rubik(
                    color: JeaColor.textColor,
                    fontSize: 30,
                  ),
                ),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.more_vert_outlined,
                        size: 30,
                        color: JeaColor.textColor,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          width: width(context),
          height: 1,
          color: JeaColor.textColor.withOpacity(0.2),
        ),
      ],
    );
  }
}
