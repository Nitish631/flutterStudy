class Items{
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Items({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}
final products=[
  Items(
    id: "computer001",
    name: "iPhone 12 Pro",
    desc: "Apple iphone 12th generation",
    price: 999,
    color: "#33505a",
    image: "https://cdn.gadgetbytenepal.com/wp-content/uploads/2022/04/iPhone-12-Blue.jpg"
    )
];