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

# Top
<img width="250" alt="スクリーンショット 2019-05-28 23 54 53" src="https://user-images.githubusercontent.com/9734876/58488320-206aca80-81a4-11e9-9d8e-c57953d2d4c5.png">

# Scrolled
<img width="250" alt="スクリーンショット 2019-05-28 23 54 58" src="https://user-images.githubusercontent.com/9734876/58488335-22348e00-81a4-11e9-9e8d-68e58173dfa8.png">
