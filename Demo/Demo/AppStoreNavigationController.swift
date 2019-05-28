//
//  AppStoreNavigationController.swift
//  Demo
//
//  Created by 山田良治 on 2019/05/27.
//  Copyright © 2019 syatyo. All rights reserved.
//

import UIKit

class AppStoreNavigationController: UITableViewController {
    
    private let item = UIButton(type: .contactAdd)
    private let model = DemoModel(count: 30)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let navigationBar = navigationController?.navigationBar else { return }
        let uikitPrivateLargeTitleViewClassName = "_UINavigationBarLargeTitleView"
        
        guard let largeTitleView = navigationBar.subviews.first(where: { String(describing: type(of: $0)) == uikitPrivateLargeTitleViewClassName }) else {
            return
        }
        
        largeTitleView.addSubview(item)
        
        item.translatesAutoresizingMaskIntoConstraints = false
        
        item.rightAnchor.constraint(equalTo: navigationBar.rightAnchor, constant: -16).isActive = true
        item.bottomAnchor.constraint(equalTo: navigationBar.bottomAnchor, constant: -10).isActive = true
        item.heightAnchor.constraint(equalToConstant: 30).isActive = true
        item.widthAnchor.constraint(equalToConstant: 30).isActive = true
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.users.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = model.users[indexPath.row].id
        cell.detailTextLabel?.text = model.users[indexPath.row].age.description
        return cell
    }
    
}
