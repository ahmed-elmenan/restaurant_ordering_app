class Item {
  Item({this.name, this.isSelected, this.extraPrice});

  String name;
  double extraPrice;
  bool isSelected;
}

List<Item> entreeChaude = [Item(name: "Soupe du jour", isSelected: false)];

List<Item> boissonFroide = [
  Item(name: "Lait Frais", isSelected: false),
  Item(name: "jus", isSelected: false),
  Item(name: "Eau minérale", isSelected: false),
];

List<Item> boissonChaude = [
  Item(name: "Café", isSelected: false),
  Item(name: "Café au lait", isSelected: false),
  Item(name: "Thé", isSelected: false),
];

List<Item> sale = [
  Item(name: "Chausson Fromage", isSelected: false),
  Item(name: "Chausson Viande hachée", isSelected: false),
  Item(name: "Nem Poisson", isSelected: false),
  Item(name: "Nem Légume", isSelected: false),
  Item(name: "Mini Pizza", isSelected: false),
];

List<Item> platGarni = [
  Item(name: "Tajine", isSelected: false),
  Item(name: "Plat + Garniture", isSelected: false),
];

List<Item> viennoiserie = [
  Item(name: "Coissant", isSelected: false),
  Item(name: "Pain au chocolat", isSelected: false),
  Item(name: "Pain au lait", isSelected: false),
  Item(name: "Shnek", isSelected: false),
];

List<Item> completeFormExtra = [
  Item(name: "Portion Fromage", isSelected: false, extraPrice: 1.50),
  Item(name: "Portion Beurre", isSelected: false, extraPrice: 2.50),
  Item(name: "Portion Confiture", isSelected: false, extraPrice: 2.50),
  Item(name: "Portion Miel", isSelected: false, extraPrice: 2.50),
  Item(name: "Œuf", isSelected: false, extraPrice: 2.50),
  Item(name: "Dattes", isSelected: false, extraPrice: 2.50),
  Item(name: "Chebbakiya", isSelected: false, extraPrice: 2.50)
];
