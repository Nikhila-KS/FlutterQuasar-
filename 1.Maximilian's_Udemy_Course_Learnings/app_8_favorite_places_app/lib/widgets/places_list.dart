import 'package:app_8_favorite_places_app/models/places.dart';
import 'package:app_8_favorite_places_app/screens/places_details.dart';
import 'package:flutter/material.dart';

class placesList extends StatelessWidget {
  const placesList({super.key, required this.places});

  final List<place> places;

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return  Center(child: 
      Text('No places added yet',
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
      ));
    }
    return ListView.builder(
      itemCount: places.length,
      itemBuilder: (ctx, index) => ListTile(
        leading:CircleAvatar(
          radius: 26,
          backgroundImage:FileImage(places[index].image),
          ),
        title: Text(
          places[index].title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(
              builder:(ctx)=>PlaceDetailScreen(p:places[index]),


    ),);
        },
      ),
    );
  }
}
