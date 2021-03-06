import 'package:flutter/material.dart';
import 'package:moonfm/models/Mock.dart';

class TopChartsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final item = Mock.topCharts[index];
        return Container(
          color: index.isEven
              ? Theme.of(context).canvasColor
              : Theme.of(context).cardColor,
          child: ListTile(
            leading: Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(item.cover)),
                )),
            title: Text(item.title),
            subtitle: Text(item.auth),
          ),
        );
      },
      itemCount: Mock.topCharts.length,
    );
  }
}
