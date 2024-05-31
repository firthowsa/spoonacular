part of 'menu_item_cubit.dart';
@Immutable()
abstract class MenuItemState extends Equatable {
  final List<MenuItem> menuItems;
  final bool noMoreData;
  final DioException? error;

  const MenuItemState({
    this.menuItems = const [],
    this.noMoreData = true,
    this.error,
  });

  @override
  List<Object?> get props => [menuItems, noMoreData, error];
}
// used to indicate that the cubit is running
// a process (fetching api data) inside and needs to wait till it completes.
class RemoteMenuItemsLoading extends MenuItemState {
  const RemoteMenuItemsLoading();

}
// indicate that the cubit has finished with a success results

class RemoteMenuItemsSuccess extends MenuItemState {
  const RemoteMenuItemsSuccess({super.menuItems, super.noMoreData});


}

// indicate that the cubit has failed to
// complete the process, with details on how it failed (DioError instance) .

class RemoteMenuItemsFailed extends MenuItemState {
  const RemoteMenuItemsFailed({super.error});


}