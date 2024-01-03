import 'package:flutter/material.dart';

class LoadingPageInfiniteScroll extends StatelessWidget {
  const LoadingPageInfiniteScroll({
    super.key,
    required this.isRefreshList,
  });

  final bool isRefreshList;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Visibility(
        visible: isRefreshList,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
