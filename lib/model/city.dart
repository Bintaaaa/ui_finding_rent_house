class City{
  int id;
  String name;
  String imageUrl;
  bool isFav;
  City(this.id, this.name,this.imageUrl,this.isFav);
}

List <City> cardCity =
      cityData.map((item)=>City(item['id'], item['name'], item['imageUrl'],item['isFav']))
              .toList();

var cityData = [
  {"id" : 1,
    "name" : "Jakarta",
    "imageUrl" : "assets/city1.png"
  },
  {"id" : 2,
    "name" : "Bandung",
    "imageUrl" : "assets/city2.png"
  },
  {"id" : 1,
    "name" : "Yogya",
    "imageUrl" : "assets/city3.png"
  },
];