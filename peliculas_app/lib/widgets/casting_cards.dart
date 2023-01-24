import 'package:flutter/material.dart';

class CastingCards extends StatelessWidget {
  const CastingCards({
    super.key,
    required this.movieId,
  });

  final int movieId;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      width: double.infinity,
      height: 180,
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return _CastCard();
        },
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class _CastCard extends StatelessWidget {
  const _CastCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 110,
        height: 100,
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const FadeInImage(
                placeholder: AssetImage('assets/images/no-image.jpg'),
                image: NetworkImage('https://via.placeholder.com/150x300.png'),
                height: 140,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'actor.name',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            )
          ],
        ));
  }
}
