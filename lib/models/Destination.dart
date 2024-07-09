class DestinationModel {
  String name;
  String imageURL;
  String rating;
  String description;

  DestinationModel({
    required this.name,
    required this.imageURL,
    required this.rating,
    required this.description,
  });

  static List<DestinationModel> getDestination() {
    List<DestinationModel> destination = [];

    destination.add(
      DestinationModel(
          name: 'Alley Palace',
          imageURL: 'assets/images/alley.png',
          rating: '4.1',
          description:
              'Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....'),
    );
    destination.add(
      DestinationModel(
          name: 'Coeurdes Alpes',
          imageURL: 'assets/images/coeurdes.png',
          rating: '4.5',
          description:
              'Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....'),
    );

    return destination;
  }
}
