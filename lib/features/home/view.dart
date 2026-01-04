import 'package:clothes_e_shop/core/resources/app_colors.dart';
import 'package:clothes_e_shop/features/home/cubit.dart';
import 'package:clothes_e_shop/features/home/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = context.read<HomeCubit>();
          if (state is HomeLoading) {
            return Scaffold(
              body: Center(
                child: Lottie.asset("assets/animations/loading.json"),
              ),
            );
          } else if (state is HomeLoaded) {
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  "Discover",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: primaryTextColor,
                  ),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return CategoryButton(
                            category: state.categories[index],
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {

                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2
                                )
                              ),
                              child: Column(
                                children: [
                                  Image.network(state.products[index]["image"]),
                                  Text(state.products[index]["title"]),
                                  Text("${state.products[index]["price"]}"),
                                ],
                              ),
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
          return Scaffold(
            body: Center(
              child: ElevatedButton(
                onPressed: () {
                  cubit.init();
                },
                child: Text("Get data"),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CategoryButton extends StatefulWidget {
  const CategoryButton({super.key, required this.category});

  final String category;

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<HomeCubit>().init();
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(22, 8, 22, 8),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          widget.category,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
