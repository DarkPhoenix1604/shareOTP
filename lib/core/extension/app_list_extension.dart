

// extension PickerItemExtenstion on List<PickerStoreItem> {
//   List<PickerStoreItemBasket> get baskets {
//     final lists = this;
//     final baskets = <PickerStoreItemBasket>[];
//     for (final basket in lists) {
//       baskets.addAll(basket.basketData ??[]);
//     }
//     return baskets;
//   }
// }

extension CustomList<T> on List<T> {
  Map<String, List<T>> groupBy(String Function(T t) function) {
    var lists = this;
    if (lists.isNotEmpty) {
      var group = <String, List<T>>{};
      for (T item in lists) {
        String key = function(item);
        if (group.containsKey(key)) {
          var items = group[key]!;
          items.add(item);
          group[key] = items;
        } else {
          group[key] = [item];
        }
      }
      return group;
    }
    return Map.identity();
  }
}
