import '../../../res/global.dart';
import 'package:flutter/material.dart';
import '../../models/post_model_presentation.dart';

class PostItemWidget extends StatelessWidget {
  final PostModelPresentation item;
  const PostItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(5),
        height: MediaQuery.of(context).size.height / 3,
        color: Global.filterCheckColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                item.text != null ? item.text! : "",
                style: Global.textRegular,
                overflow: TextOverflow.ellipsis,
                maxLines: 10,
              ),
            ),
            const Expanded(child: Spacer()),
            const Divider(thickness: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildIconWithText(Icons.favorite, item.countLikes.toString()),
                const VerticalDivider(thickness: 1),
                buildIconWithText(Icons.comment, item.countComments.toString()),
                const VerticalDivider(thickness: 1),
                buildIconWithText(Icons.repeat, item.countReposts.toString()),
                const VerticalDivider(thickness: 1),
                buildIconWithText(Icons.visibility, item.countViews.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIconWithText(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 20, color: Global.bottomNavBarColor,),
        const SizedBox(width: 5),
        Text(text),
      ],
    );
  }
}