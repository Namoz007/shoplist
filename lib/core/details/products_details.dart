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
  "Air Conditioner",
  "Armchair",
  "Bed",
  "Blender",
  "Bookshelf",
  "Bowl",
  "Chair",
  "Coffee mug",
  "Cutlery set",
  "Dining table",
  "Fan",
  "Microwave",
  "Mirror",
  "Pan",
  "Plate",
  "Sofa",
  "Toaster",
  "Wardrobe",
  "Washing machine",
];

List<String> home_appliances_imgs = [
  "assets/products/home_appliances/fridge.png",
  "assets/products/home_appliances/gas_stover.png",
  "assets/products/home_appliances/tv.png",
  "assets/products/home_appliances/air_conditioner.png",
  "assets/products/home_appliances/armchair.png",
  "assets/products/home_appliances/bed.png",
  "assets/products/home_appliances/blender.png",
  "assets/products/home_appliances/bookshelf.png",
  "assets/products/home_appliances/bowl.png",
  "assets/products/home_appliances/chair.png",
  "assets/products/home_appliances/coffee_mug.png",
  "assets/products/home_appliances/cutlery_set.png",
  "assets/products/home_appliances/dining_table.png",
  "assets/products/home_appliances/fan.png",
  "assets/products/home_appliances/microwave.png",
  "assets/products/home_appliances/mirror.png",
  "assets/products/home_appliances/pan.png",
  "assets/products/home_appliances/plate.png",
  "assets/products/home_appliances/sofa.png",
  "assets/products/home_appliances/toaster.png",
  "assets/products/home_appliances/wardrobe.png",
  "assets/products/home_appliances/washing_machine.png",
];

List<String> clothes_products_names = [
  "Cap",
  "Pant",
  "T-shirt",
  "Belt",
  "Cardigan",
  "Coat",
  "Dress",
  "Gloves",
  "Jacket",
  "Overalls",
  "Scarf",
  "Shorts",
  "Socks",
  "Suit",
  "Sweat pants",
  "Sweater",
  "Tank Top",
  "Tie",
  "Vest",
];

List<String> clothes_products_imgs = [
  "assets/products/clothes/cap.png",
  "assets/products/clothes/pant.png",
  "assets/products/clothes/tshirt.png",
  "assets/products/clothes/belt.png",
  "assets/products/clothes/cardigan.png",
  "assets/products/clothes/coat.png",
  "assets/products/clothes/dress.png",
  "assets/products/clothes/gloves.png",
  "assets/products/clothes/jacket.png",
  "assets/products/clothes/overalls.png",
  "assets/products/clothes/scarf.png",
  "assets/products/clothes/shorts.png",
  "assets/products/clothes/socks.png",
  "assets/products/clothes/suit.png",
  "assets/products/clothes/sweat_pants.png",
  "assets/products/clothes/sweater.png",
  "assets/products/clothes/tank_top.png",
  "assets/products/clothes/tie.png",
  "assets/products/clothes/vest.png",
];

List<String> electronic_products_imgs = [
  "assets/products/electronics/iphone.png",
  "assets/products/electronics/macbook.png",
  "assets/products/electronics/ipad.png",
  "assets/products/electronics/smartwatch.png",
  "assets/products/electronics/book_reader.png",
  "assets/products/electronics/wireless_earbuds.png",
  "assets/products/electronics/headphones.png",
  "assets/products/electronics/gaming_console.png",
  "assets/products/electronics/wifi_router.png",
  "assets/products/electronics/tv.png",
  "assets/products/electronics/printer.png",
  "assets/products/electronics/scanner.png",
  "assets/products/electronics/usb_flash.png",
  "assets/products/electronics/security_camera.png",
  "assets/products/electronics/smart_doorbell.png",
  "assets/products/electronics/power_bank.png",
  "assets/products/electronics/digital_alarm_clock.png",
  "assets/products/electronics/portable_speaker.png",
];

List<String> electronic_products_names = [
  "iPhone",
  "MacBook",
  "iPad",
  "Smartwatch",
  "Book reader",
  "Wireless Earbuds",
  "Headphones",
  "Gaming console",
  "Wi-fi Router",
  "TV",
  "Printer",
  "Scanner",
  "Usb Flash",
  "Security Camera",
  "Smart Doorbell",
  "Power Bank",
  "Digital Alarm Clock",
  "Portable Speaker",
];

List<String> foods_products_imgs = [
  "assets/products/foods/apple.png", "assets/products/foods/pear.png",
  "assets/products/foods/banana.png", "assets/products/foods/quince.png",
  "assets/products/foods/peach.png", "assets/products/foods/apricot.png",
  "assets/products/foods/cherry.png", "assets/products/foods/orange.png",
  "assets/products/foods/pomegranate.png", "assets/products/foods/mandarin.png",
  "assets/products/foods/lemon.png", "assets/products/foods/grapefruit.png",
  "assets/products/foods/pineapple.png", "assets/products/foods/kiwi.png",
  "assets/products/foods/persimmon.png", "assets/products/foods/green_grape.png",
  "assets/products/foods/strawberry.png", "assets/products/foods/raspberry.png",
  "assets/products/foods/blackcurrant.png", "assets/products/foods/mulberry.png",
  "assets/products/foods/papaya.png", "assets/products/foods/melon.png",
  "assets/products/foods/watermelon.png", "assets/products/foods/turnip.png",
  "assets/products/foods/beetroot.png", "assets/products/foods/radish.png",
  "assets/products/foods/carrot.png", "assets/products/foods/tomato.png",
  "assets/products/foods/chili_pepper.png", "assets/products/foods/eggplant.png",
  "assets/products/foods/cucumber.png", "assets/products/foods/cabbage.png",
  "assets/products/foods/garlic.png", "assets/products/foods/onion.png",
  "assets/products/foods/potato.png",
];

List<String> foods_products_names = [
  "Apple", "Pear", "Banana", "Quince", "Peach", "Apricot", "Cherry",
  "Orange", "Pomegranate", "Mandarin", "Lemon", "Grapefruit", "Pineapple",
  "Kiwi", "Persimmon", "Grape", "Strawberry", "Raspberry", "Blackcurrant",
  "Mulberry", "Papaya", "Melon", "Watermelon", "Turnip", "Beetroot",
  "Radish", "Carrot", "Tomato", "Chili pepper", "Eggplant", "Cucumber",
  "Cabbage", "Garlic", "Onion", "Potato",
];