enum listsCategory {food, electronic,clothes,appliance}

listsCategory getCategory(String categoryName){
  Map<String,listsCategory> categorys = {
    "food": listsCategory.food,
    "electronic": listsCategory.electronic,
    "clothes": listsCategory.clothes,
    "appliance": listsCategory.appliance,
  };

  return categorys[categoryName]!;
}

List<String> home_appliances_names = [
  "Fridge",
  "Gas Stover",
  "TV",
];

List<String> home_appliances_imgs =[
  "assets/products/home_appliances/fridge.png",
  "assets/products/home_appliances/gas_stover.png",
  "assets/products/home_appliances/tv.png",
];

List<String> clothes_products_names = [
  "Cap",
  "Pant",
  "Tshirt",
];

List<String> clothes_products_imgs = [
  "assets/products/clothes/cap.png",
  "assets/products/clothes/pant.png",
  "assets/products/clothes/tshirt.png",
];

List<String> electronic_products_imgs = [
  "assets/products/electronics/iphone.png",
  "assets/products/electronics/macbook.png",
  "assets/products/electronics/ipad.png",
];

List<String> electronic_products_names = [
  "iPhone",
  "MacBook",
  "iPad",
];

List<String> foods_products_imgs = [
  "assets/products/foods/apple.png",
  "assets/products/foods/pear.png",
  "assets/products/foods/banana.png"
];

List<String> foods_products_names = [
  "Apple",
  "Pear",
  "Banana",
];