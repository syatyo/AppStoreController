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
        item.bottomAnchor.constraint(equalTo: navigationBar.bottomAnchor, constant: -12).isActive = true
        item.heightAnchor.constraint(equalToConstant: 30).isActive = true
        item.widthAnchor.constraint(equalToConstant: 30).isActive = true
    }

}
