import 'package:flutter/material.dart';
import 'package:masveterinarias_app/widget/custom_binary_option.dart';

import 'hotel_booking/popular_course_list_view.dart';

class ProfileTap extends StatelessWidget {
  ProfileTap({
    Key key,
    this.ShowFollowBottom = false,
  }) : super(key: key);
  bool ShowFollowBottom;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share,
                  color: Colors.black,
                )),
          )
        ],
        leading: ShowFollowBottom == true
            ? Padding(
                padding: const EdgeInsets.only(left: 20),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    )),
              )
            : const SizedBox(),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage("assets/images/ImageProfile.jpg"),
                        ),
                        ShowFollowBottom == false
                            ? InkWell(
                                onTap: () {},
                                child: const CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.black,
                                  child: Icon(
                                    Icons.edit,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            : const SizedBox()
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "Choirul Syafril",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "32",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Recipes",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(color: Colors.black54),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "10",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Seguidos",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(color: Colors.black54),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "1200",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Seguidores",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2
                                  .copyWith(color: Colors.black54),
                            )
                          ],
                        ),
                      ],
                    ),
                    ShowFollowBottom == true
                        ? RaisedButton(
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            color: Colors.black87,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20.0, horizontal: 100.0),
                              child: Text(
                                "Seguir",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          )
                        : const SizedBox(
                            height: 20,
                          )
                  ]),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              CustomBinaryOption(
                textleft: "Publicaciones",
                textRight: "Perfil",
              ),
              GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 1,
                shrinkWrap: true,
                childAspectRatio: 1 / 1.5,
                children: List.generate(1, (index) => PopularCourseListView()),
              )
            ]),
          )
        ]),
      ),
    );
  }
}
