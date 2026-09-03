import 'package:Beyond/cubit/products_cubit.dart';
import 'package:Beyond/local/entities/product_entity.dart';
import 'package:Beyond/local/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products>
    with SingleTickerProviderStateMixin {
  late ProductCubit _productCubit;

  _ProductsState();

  @override
  void initState() {
    _productCubit = getIt<ProductCubit>();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _productCubit,
      child: Scaffold(
        appBar: AppBar(title: const Text('Products')),
        body: BlocBuilder<ProductCubit, ProductCubitState>(
          builder: (context, state) {
            if (state is ProductStateLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is ProductStateLoaded) {
              final products = state.products;

              if (products.isEmpty) {
                return const Center(child: Text('Nenhum produto encontrado'));
              }

              return ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Theme.of(context).dividerColor),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      onTap: () => {},
                      child: Row(
                        spacing: 4,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.network(
                              product.image,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                              loadingBuilder:
                                  (
                                    BuildContext context,
                                    Widget child,
                                    ImageChunkEvent? loadingProgress,
                                  ) {
                                    if (loadingProgress == null) {
                                      return child;
                                    }
                                    return Center(
                                      child: CircularProgressIndicator(
                                        value:
                                            loadingProgress
                                                    .expectedTotalBytes !=
                                                null
                                            ? loadingProgress
                                                      .cumulativeBytesLoaded /
                                                  (loadingProgress
                                                          .expectedTotalBytes ??
                                                      1)
                                            : null,
                                      ),
                                    );
                                  },
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 4.0,
                                    top: 4.0,
                                  ),
                                  child: Text(
                                    product.title,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 4.0),
                                  child: Text(
                                    product.description,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4, right: 4),
                            child: Text(
                              'R\$${product.price.toStringAsFixed(2)}',
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
