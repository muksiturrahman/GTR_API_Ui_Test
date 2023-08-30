import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // For decoding JSON

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<dynamic> productListData = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final apiLink = "https://pqstec.com/invoiceapps/Values/GetProductList";
    final authToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySWQiOiI0MTMiLCJDdXJyZW50Q29tSWQiOiIxIiwibmJmIjoxNjkzMzA3MTUyLCJleHAiOjE2OTM5MTE5NTIsImlhdCI6MTY5MzMwNzE1Mn0.BQnXJn7L4e9TcTQ72UUXmLf7KTfpewT_d3uKN45iI-w";

    final response = await http.get(
      Uri.parse(apiLink),
      headers: {
        'Authorization': 'Bearer $authToken',
      },
    );

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);

      if (responseData is List) {
        setState(() {
          productListData = responseData;
        });
      } else if (responseData is Map && responseData.containsKey("ProductList")) {
        setState(() {
          productListData = responseData["ProductList"];
        });
      } else {
        print("Unexpected API response format");
      }
    } else {
      print('Request failed with status: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GTR Test', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: productListData.length,
        itemBuilder: (context, index) {
          final product = productListData[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              leading: product['ImagePath'] != null
                  ? Image.network("https://pqstec.com${product['ImagePath']}")
                  : Icon(Icons.image),
              title: Text(product['Name']),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product['Description']),
                  SizedBox(height: 4),
                  Text(
                    'Price: \$${product['Price'].toStringAsFixed(2)}',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
            ),
          );
        },
      )
    );
  }
}
