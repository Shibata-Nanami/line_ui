import 'package:flutter/material.dart';

import 'style.dart';

/// 検索フォーム
class SearchForm extends StatelessWidget {
  const SearchForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: secondaryBlack,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.search,
                  color: primaryWhite,
                ),
                Text(
                  "検索",
                  style: TextStyle(
                    color: primaryGrey,
                  ),
                ),
              ],
            ),
            const Icon(
              Icons.qr_code_scanner,
              color: primaryWhite,
            ),
          ],
        ),
      ),
    );
  }
}
