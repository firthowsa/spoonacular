
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:spoonacular/src/presentation/cubit/menu_item_cubit.dart';
import 'package:spoonacular/src/presentation/widgets/menu_item_widget.dart';


import '../../domain/models/response/menu_item.dart';


class MenuItemView extends HookWidget {
  const MenuItemView({super.key});

  @override
  Widget build(BuildContext context) {
    //final remoteArticlesCubit = BlocProvider.of<RemoteArticlesCubit>(context);
    //final scrollController = useScrollController();

    // useEffect(() {
    //   scrollController.onScrollEndsListener(() {
    //     remoteArticlesCubit.getBreakingNewsArticles();
    //   });
    //
    //   return scrollController.dispose;
    // }, const []);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Spoonacular ',
          //style: TextStyle(color: Colors.black),
        ),

      ),
      body: BlocBuilder<MenuItemCubit, MenuItemState>(
        builder: (_, state) {
          switch (state.runtimeType) {
            case RemoteMenuItemsLoading:
              return const Center(child: CupertinoActivityIndicator());
            case RemoteMenuItemsFailed:
              return const Center(child: Icon(Icons.refresh));
            case RemoteMenuItemsSuccess:
              return _buildArticles(
                state.menuItems,
                state.noMoreData,
              );
            default:
              return const SizedBox();
          }
        },
      ),
    );
  }

  Widget _buildArticles(
      List<MenuItem> menuItems,
      bool noMoreData,
      ) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
                (context, index) => MenuItemWidget(
              menuItem: menuItems[index],
              //onMenuItemPressed: (e) =>  router.push(ArticleDetailsView(article: e)),

            ),
            childCount: menuItems.length,
          ),
        ),
        if (!noMoreData)
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 14, bottom: 32),
              child: CupertinoActivityIndicator(),
            ),
          )
      ],
    );
  }
}
