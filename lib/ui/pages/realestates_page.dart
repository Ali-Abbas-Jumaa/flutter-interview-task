import 'package:al_jad_test/blocs/realestate/realestate_bloc.dart';
import 'package:al_jad_test/ui/components/realestate_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class RealestatePage extends StatefulWidget {
  const RealestatePage({Key? key}) : super(key: key);

  @override
  State<RealestatePage> createState() => _RealestatePageState();
}

class _RealestatePageState extends State<RealestatePage> {
  final int _pageSize = 10;

  final PagingController<int, dynamic> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      context.read<RealestateBloc>().add(GetRealestateList(
            pageKey: pageKey,
            pageSize: _pageSize,
            pageController: _pagingController,
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFf0eff4),
        appBar: AppBar(
          title: const Text("بيتي"),
        ),
        body: PagedListView<int, dynamic>(
          pagingController: _pagingController,
          builderDelegate: PagedChildBuilderDelegate<dynamic>(
            itemBuilder: (context, item, index) => RealestateCard(
              title: item.title,
              area: item.area,
              image: item.image,
              nearestPoint: item.nearestPoint,
              price: item.price,
            ),
          ),
        ));
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
