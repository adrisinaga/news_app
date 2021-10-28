class DataModel {
  final int? id;
  final String? title;
  final String? image;
  late bool? selected;

  DataModel({this.id, this.title, this.image, this.selected});

  DataModel copyWith({
    final int? id,
    final String? title,
    final String? image,
    final bool? selected,
  }) =>
      DataModel(
        id: id ?? this.id,
        title: title ?? this.title,
        image: image ?? this.image,
        selected: selected ?? this.selected,
      );
}

List<DataModel> dataTopic = [
  DataModel(
    id: 0,
    title: 'Future Tech',
    image:
        'https://images.unsplash.com/photo-1617500756598-a0ee57567ac8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80',
    selected: false,
  ),
  DataModel(
    id: 1,
    title: 'Cryptocurrency',
    image:
        'https://images.unsplash.com/photo-1517245386807-bb43f82c33c4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80',
    selected: false,
  ),
  DataModel(
    id: 2,
    title: 'Gaming',
    image:
        'https://images.unsplash.com/photo-1635248742228-bbecf535ee86?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80',
    selected: false,
  ),
  DataModel(
    id: 3,
    title: 'Business',
    image:
        'https://images.unsplash.com/photo-1635403868664-179c789560a7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=487&q=80',
    selected: false,
  ),
  DataModel(
    id: 4,
    title: 'Fintech',
    image:
        'https://images.unsplash.com/photo-1634146353893-ef6f06c132fe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80',
    selected: false,
  ),
  DataModel(
    id: 5,
    title: 'Gadget',
    image:
        'https://images.unsplash.com/photo-1635348281338-8addc4992088?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80',
    selected: false,
  ),
  DataModel(
    id: 6,
    title: 'Self Development',
    image:
        'https://images.unsplash.com/photo-1627666586575-b383710392a4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80',
    selected: false,
  ),
  DataModel(
    id: 7,
    title: 'Startups',
    image:
        'https://images.unsplash.com/photo-1606917454663-343e58811bb1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=435&q=80',
    selected: false,
  ),
  DataModel(
    id: 8,
    title: 'Software',
    image:
        'https://images.unsplash.com/photo-1635286731771-7fec0d6ee944?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=412&q=80',
    selected: false,
  ),
  DataModel(
    id: 9,
    title: 'Design',
    image:
        'https://images.unsplash.com/photo-1610969014702-0b039f9b3528?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=395&q=80',
    selected: false,
  ),
  DataModel(
    id: 10,
    title: 'Fantasy & Sci-fi',
    image:
        'https://images.unsplash.com/photo-1634579477602-da30cf80f06e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    selected: false,
  ),
  DataModel(
    id: 11,
    title: 'Fictions',
    image:
        'https://images.unsplash.com/photo-1635173024111-c6016e97f871?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=465&q=80',
    selected: false,
  ),
  DataModel(
    id: 12,
    title: 'Financial Literatures',
    image:
        'https://images.unsplash.com/photo-1635238004463-90ff3ee8038c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80',
    selected: false,
  ),
];
