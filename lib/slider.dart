import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Farmers(),
  ));
}
class Farmers extends StatefulWidget {
  @override
  State<Farmers> createState() => _FarmerState();
}
class _FarmerState extends State<Farmers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text(
              'FARMERS FRESH ZONE',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            floating: false,
            pinned: true,
            actions: const [
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.location_on_outlined)),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Center(
                      child: Text(
                        "Kochi",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))),
            ],
            bottom: AppBar(
              title: Container(
                color: Colors.white,
                width: double.infinity,
                height: 40,
                child: const Center(
                  child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search for vegetables and fruits..',
                        prefixIcon: Icon(Icons.search),
                      )),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.greenAccent,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    height: 20,
                    width: 120,
                    child: const Center(
                      child: Text(
                        "VEGETABLES",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.greenAccent,
                        ),
                        borderRadius:
                        const BorderRadius.all(Radius.circular(20))),
                    height: 25,
                    width: 120,
                    child: const Center(
                      child: Text(
                        "FRUITS",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.greenAccent,
                        ),
                        borderRadius:
                        const BorderRadius.all(Radius.circular(20))),
                    height: 25,
                    width: 120,
                    child: const Center(
                      child: Text(
                        "EXOTIC CUTS",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Image.network(
                  "https://food.unl.edu/newsletters/images/fresh-vegetables-basket.png"),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    //color: Colors.grey,
                    border: Border.all(width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Icon(Icons.timer),
                          SizedBox(
                            height: 10,
                          ),
                          Text("30 mins ploicy")
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.camera_front_outlined),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Traceability")
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.home_work),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Local Sourrounding")
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Shop by Category",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              VegGrid(),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.green,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.green,
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.green,
              ),
              label: 'Account')
        ],
      ),
    );
  }
}

class VegGrid extends StatelessWidget {
  List<String> images = [
    'https://www.pngitem.com/pimgs/m/46-464142_fresh-fruit-vegetable-leaves-fruits-and-vegetables-in.png',
    'https://i.ndtvimg.com/i/2017-02/fruits-and-vegetables_650x366_41486465566.jpg?im=FaceCrop,algorithm=dnn,width=345,height=250',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiP8TIQ6tYgWCno8eXnUbQ89f0DcPIIygbwQ&usqp=CAU',
    'https://juzifruits.com/assets/bowl.jpg',
    'https://www.hsph.harvard.edu/nutritionsource/wp-content/uploads/sites/30/2012/09/vegetables-and-fruits-farmers-market.jpg',
    'https://www.berries.com/blog/wp-content/uploads/2019/05/types-of-fruit-nectarine.jpg'
  ];

  List<String> names = [
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh cut",
    "Nutrition Charged",
    "Packed Flavours"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
        itemCount: images.length,
        itemBuilder: (BuildContext, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // height: 90,
                //width: 120,
                height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width * .3,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 20.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(images[index])),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(names[index]),
            ],
          );
        });
  }
}