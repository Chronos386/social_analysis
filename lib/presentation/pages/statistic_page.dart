import '../../res/global.dart';
import 'my_photo_view_page.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import '../view_models/main_view_model.dart';
import '../../res/generated/locale_keys.g.dart';
import '../view_models/statistic_view_model.dart';
import '../widgets/statistic_page/post_item_widget.dart';
import '../widgets/statistic_page/user_item_widget.dart';
import 'package:easy_localization/easy_localization.dart';

class StatisticPage extends StatefulWidget {
  const StatisticPage({super.key});

  @override
  State<StatisticPage> createState() => _StatisticPageState();
}

class _StatisticPageState extends State<StatisticPage> {
  var viewModelMain = GetIt.instance<MainViewModel>();
  var viewModel = GetIt.instance<StatisticViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          centerTitle: true,
          title: Text(
            "Сообщество ${viewModelMain.groupIdController.text}",
            style: Global.textHeader,
          ),
          backgroundColor: Global.appBarTwo,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: Global.backgroundGradient,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Text(
                    LocaleKeys.posts_statistic.tr(),
                    style: Global.textHeader,
                  ),
                ),
                const SizedBox(height: 5),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) {
                          return MyPhotoViewPage(
                              imageUrl: viewModel.data!.likesPhoto
                          );
                        }),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2, color: Colors.black),
                      ),
                      child: Image.network(
                        viewModel.data!.likesPhoto,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 5),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) {
                          return MyPhotoViewPage(
                              imageUrl: viewModel.data!.commentsPhoto
                          );
                        }),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2, color: Colors.black),
                      ),
                      child: Image.network(
                        viewModel.data!.commentsPhoto,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 5),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) {
                          return MyPhotoViewPage(
                              imageUrl: viewModel.data!.repostsPhoto
                          );
                        }),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2, color: Colors.black),
                      ),
                      child: Image.network(
                        viewModel.data!.repostsPhoto,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 5),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) {
                          return MyPhotoViewPage(
                              imageUrl: viewModel.data!.popularityPhoto
                          );
                        }),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2, color: Colors.black),
                      ),
                      child: Image.network(
                        viewModel.data!.popularityPhoto,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 5),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) {
                          return MyPhotoViewPage(
                              imageUrl: viewModel.data!.popularityByDayPhoto
                          );
                        }),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2, color: Colors.black),
                      ),
                      child: Image.network(
                        viewModel.data!.popularityByDayPhoto,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),
                Center(
                  child: Text(
                    LocaleKeys.top_commentators.tr(),
                    style: Global.textHeader,
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: viewModel.data!.users.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        UserItemWidget(item: viewModel.data!.users[index]),
                        const SizedBox(height: 5),
                      ],
                    );
                  },
                ),


                const SizedBox(height: 15),
                Center(
                  child: Text(
                    LocaleKeys.top_likes.tr(),
                    style: Global.textHeader,
                  ),
                ),
                const SizedBox(height: 5),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: viewModel.data!.topLikes.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        PostItemWidget(item: viewModel.data!.topLikes[index]),
                        const SizedBox(height: 5),
                      ],
                    );
                  },
                ),


                const SizedBox(height: 15),
                Center(
                  child: Text(
                    LocaleKeys.top_comments.tr(),
                    style: Global.textHeader,
                  ),
                ),
                const SizedBox(height: 5),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: viewModel.data!.topComments.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        PostItemWidget(item: viewModel.data!.topComments[index]),
                        const SizedBox(height: 5),
                      ],
                    );
                  },
                ),

                const SizedBox(height: 15),
                Center(
                  child: Text(
                    LocaleKeys.top_reposts.tr(),
                    style: Global.textHeader,
                  ),
                ),
                const SizedBox(height: 5),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: viewModel.data!.topReposts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        PostItemWidget(item: viewModel.data!.topReposts[index]),
                        const SizedBox(height: 5),
                      ],
                    );
                  },
                ),

                const SizedBox(height: 15),
                Center(
                  child: Text(
                    LocaleKeys.top_popularity.tr(),
                    style: Global.textHeader,
                  ),
                ),
                const SizedBox(height: 5),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: viewModel.data!.topPopularityRating.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        PostItemWidget(item: viewModel.data!
                            .topPopularityRating[index]),
                        const SizedBox(height: 5),
                      ],
                    );
                  },
                ),

                const SizedBox(height: 15),
                Center(
                  child: Text(
                    LocaleKeys.statistics_emotional.tr(),
                    style: Global.textHeader,
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: viewModel.data!.emotionalPhotos.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) {
                              return MyPhotoViewPage(
                                  imageUrl: viewModel
                                      .data!.emotionalPhotos[index]
                              );
                            }),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2, color: Colors.black),
                          ),
                          child: Image.network(
                            viewModel.data!.emotionalPhotos[index],
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}