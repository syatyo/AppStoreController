# AppStoreController
AppStore style controller.

It is easy to make AppStore style UITableViewController by using **private API**.

I think AppStore use it.

This code can get largeTitleView. It's useful customizing large navigation state.
```
guard let navigationBar = navigationController?.navigationBar else { return }
let uikitPrivateLargeTitleViewClassName = "_UINavigationBarLargeTitleView"

guard let largeTitleView = navigationBar.subviews.first(where: { String(describing: type(of: $0)) == uikitPrivateLargeTitleViewClassName }) else {
return
}
```
