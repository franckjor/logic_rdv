import 'package:flutter/material.dart';

class LoadingPageInfiniteScroll extends StatelessWidget {
  const LoadingPageInfiniteScroll({
    Key key,
    @required this.isRefreshList,
  }) : super(key: key);

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
