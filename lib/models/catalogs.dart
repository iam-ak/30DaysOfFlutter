class Item{
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item( {required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image} );
}

final products=[
  Item(
    id: "Akshay001",
    name: "iphone 12 pro",
    desc: "Apple iphone 12th generation",
    price: 999,
    color: "#33505a",
    image: "https://static.toiimg.com/thumb/resizemode-4,msid-78671027,imgsize-200,width-1200/78671027.jpg"
  )
];