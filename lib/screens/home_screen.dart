
import 'package:flutter/material.dart';

import '../models/product.dart';
import '../services/product_service.dart';
import 'product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Product>> productsFuture;

  @override
  void initState() {
    super.initState();
    productsFuture = ProductService().fetchProducts();
  }

  void retryLoadingProducts() {
    setState(() {
      productsFuture = ProductService().fetchProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
            onPressed: () {
              Navigator.popUntil(context, (route) => route.isFirst);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Column(
                children: [
                  Icon(
                    Icons.waving_hand,
                    size: 65,
                    color: Colors.teal,
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Welcome!',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Welcome to your home page',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 35),

            Expanded(
              child: FutureBuilder<List<Product>>(
                future: productsFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState ==
                      ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  if (snapshot.hasError) {
                    return Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.error_outline,
                            size: 45,
                            color: Colors.red,
                          ),
                          const SizedBox(height: 10),
                          const Text('Failed to load products'),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: retryLoadingProducts,
                            child: const Text('Retry'),
                          ),
                        ],
                      ),
                    );
                  }

                  final products = snapshot.data ?? [];

                  return Column(
                    children: [
                      Card(
                        child: ListTile(
                          leading: const Icon(
                            Icons.shopping_bag,
                            color: Colors.teal,
                            size: 32,
                          ),
                          title: const Text(
                            'Items',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            '${products.length} products available',
                          ),
                        ),
                      ),

                      Expanded(
                        child: ListView.builder(
                          itemCount: products.length,
                          itemBuilder: (context, index) {
                            final product = products[index];

                            return Card(
                              child: ListTile(
                                leading: const Icon(
                                  Icons.shopping_bag_outlined,
                                  color: Colors.teal,
                                ),
                                title: Text(product.name),
                                subtitle: Text(product.description),
                                trailing: Text(
                                  '${product.price.toStringAsFixed(2)} \$',
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          ProductDetailsPage(
                                            product: product,
                                          ),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Colors.teal,
                  size: 32,
                ),
                title: const Text(
                  'Profile',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  'View your profile information',
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Profile section coming soon!'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
