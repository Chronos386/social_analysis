import '../../../res/global.dart';
import 'package:flutter/material.dart';
import '../../models/user_model_presentation.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:social_analysis/res/generated/locale_keys.g.dart';

class UserItemWidget extends StatelessWidget {
  final UserModelPresentation item;
  const UserItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(5),
        height: MediaQuery.of(context).size.height / 9,
        color: Global.filterCheckColor,
        child: Row(
          children: [
            Container(
              height: double.infinity,
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: item.photo != null ? CircleAvatar(
                backgroundImage: NetworkImage(item.photo!),
              ) : const Icon(
                Icons.person,
                size: 36,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${item.firstName} ${item.lastName}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  LocaleKeys.count_comments.tr(
                    namedArgs: {"count": item.countComments.toString()},
                  ),
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}