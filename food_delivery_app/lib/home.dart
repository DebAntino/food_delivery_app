import 'package:flutter/material.dart';
import 'package:testing/data/resturants_details.dart';
import 'package:testing/models/resturant_info.dart';

// import 'package:food_delivery_app/data/resturants_details.dart';
// import 'package:food_delivery_app/models/resturant_info.dart';

class Resturants extends StatefulWidget {
  const Resturants({super.key});

  @override
  State<Resturants> createState() => _ResturantsState();
}

class _ResturantsState extends State<Resturants> {
  List<ResturantsModel> list = ResturantDetails().getResturantsModel();
  @override
  Widget build(BuildContext context) {
    //print(list.length);
    //print('${list[0].iconUrl}');
    return Container(
      child: Expanded(
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Image(
                    image: AssetImage('${list[index].iconUrl}'),
                    height: 50,
                    width: 50,
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        //mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            list[index].resturantName,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Container(
                            padding: const EdgeInsets.all(2),
                            color: Colors.green,
                            child: Text(
                              (list[index].rating).toString(),
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 3),
                      Text(
                        list[index].foods,
                        style: const TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        "₹ ${list[index].price} per person  ||  ${list[index].time} mins",
                        style: const TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 3),
                      if (list[index].closing < 60)
                        Text(
                          "closes in ${list[index].closing} minutes",
                          style: const TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      if (list[index].promoted)
                        const Text(
                          "Promoted",
                          style: TextStyle(color: Colors.grey),
                        ),
                      const SizedBox(height: 3),
                      Text(
                        list[index].features,
                        style: const TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
