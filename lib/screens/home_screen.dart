import 'package:flutter/material.dart';
import 'package:toon_app/models/webtoon_model.dart';
import 'package:toon_app/services/api_service.dart';
import 'package:toon_app/widgets/webtoon_widget.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  Future<List<WebtoonModels>> webtoons = ApiService.getTodaysToon();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Today`s Toon`s',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        foregroundColor: Colors.blueGrey,
        backgroundColor: Colors.white,
        elevation: 2,
      ),
      body: FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Expanded(child: makList(snapshot)),
              ],
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        future: webtoons,
      ),
    );
  }

  ListView makList(AsyncSnapshot<List<WebtoonModels>> snapshot) {
    return ListView.separated(
      itemBuilder: (context, index) {
        var webtoon = snapshot.data![index];
        return Webtoon(
          title: webtoon.title,
          thumb: webtoon.thumb,
          id: webtoon.id,
        );
      },
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      separatorBuilder: (context, index) => const SizedBox(
        width: 40,
      ),
    );
  }
}
