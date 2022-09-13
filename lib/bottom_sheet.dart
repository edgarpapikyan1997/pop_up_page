import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'fields_conatiners.dart';

void bottomSheet(BuildContext context) {
  showCupertinoModalBottomSheet(
    context: context,
    builder: (context) {
      return Material(
        color: Colors.transparent,
        child: Scaffold(
          backgroundColor: const Color(0xFF5a5a5a),
          appBar: AppBar(
            leading: const SizedBox(),
            centerTitle: true,
            leadingWidth: 0,
            backgroundColor: const Color(0xFF5a5a5a),
            title: Column(
              children: [
                Container(
                  height: 5,
                  width: 32,
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                )
              ],
            ),
            elevation: 0,
            toolbarHeight: 20,
          ),

          //===============================================================//

          body: SizedBox(
            height: MediaQuery.of(context).size.height * 0.99,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.delete, size: 30, color: Colors.deepOrange),
                    Text("Task",
                        style: TextStyle(fontSize: 30, color: Colors.white)),
                    Icon(Icons.close, size: 30, color: Colors.white),
                  ],
                ),
                const SizedBox(height: 20),
                FieldContainers(
                    up: true,
                    mainIcon: const Icon(Icons.bookmark_border,
                        size: 35, color: Colors.deepOrange),
                    rowText: "Create Homework",
                    underLabel: false),
                FieldContainers(
                  up: false,
                  mainIcon: const Icon(Icons.file_present,
                      size: 35, color: Colors.deepOrange),
                  rowText: "English, page 89, exercise 6,7",
                  underLabel: false,
                ),
                const SizedBox(height: 20),
                FieldContainers(
                    up: true,
                    mainIcon: const Icon(Icons.calendar_month,
                        color: Colors.deepOrange, size: 35),
                    rowText: "Date",
                    underLabel: false,
                    afterRowText: "Done once, 16 May(16:00)"),
                FieldContainers(
                    up: false,
                    mainIcon: const Icon(Icons.notification_add_rounded,
                        color: Colors.deepOrange, size: 35),
                    rowText: "Remind",
                    underLabel: true,
                    underText: "2.0"),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Container(
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        margin: const EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                          color: Colors.grey[600],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.account_tree_rounded,
                                    size: 35, color: Colors.deepOrange),
                                SizedBox(width: 4),
                                Text("Career & Business",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white)),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[900],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              margin: const EdgeInsets.only(
                                  top: 5, bottom: 10, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.grey[600],
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 8),
                                        child: const Icon(
                                            Icons.account_tree_rounded,
                                            size: 35,
                                            color: Colors.deepOrange),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        "Career\nBusiness",
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.white),
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                            color: Colors.grey[600],
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 12, horizontal: 12),
                                          child: const Text(
                                            "9+",
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Colors.orangeAccent,
                                                fontWeight: FontWeight.bold),
                                          )),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        "More\nCategory",
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.white),
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //==================================================//

                    Expanded(
                      flex: 4,
                      child: Container(
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 5),
                        margin: const EdgeInsets.only(left: 10, right: 15),
                        decoration: BoxDecoration(
                          color: Colors.grey[600],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.videogame_asset_outlined,
                                    size: 35, color: Colors.deepOrange),
                                SizedBox(width: 4),
                                Text("Difficulty",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white)),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[900],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              padding: const EdgeInsets.only(
                                  left: 5, right: 5, top: 10, bottom: 10),
                              margin: const EdgeInsets.only(top: 5, bottom: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: Row(
                                          children: const [
                                            Icon(Icons.account_tree_rounded,
                                                color: Colors.orangeAccent,
                                                size: 25),
                                            SizedBox(width: 5),
                                            Icon(Icons.account_tree_rounded,
                                                color: Colors.orangeAccent,
                                                size: 25),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        "Medium",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          const Text(
                                            "+15",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          const SizedBox(width: 2),
                                          Icon(Icons.lens,
                                              color: Colors.amber[400]),
                                          const SizedBox(width: 2),
                                          const Text(
                                            "+15",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber[600],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 150),
                Column(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 370,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                        child:
                            const Text("DONE", style: TextStyle(fontSize: 25)),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 50,
                      width: 370,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[600],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                        child:
                        const Text("DONE FOREVER", style: TextStyle(fontSize: 25)),
                        onPressed: () {},
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}
