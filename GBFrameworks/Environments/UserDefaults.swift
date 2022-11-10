//
//  UserDefaults.swift
//  GBFrameworks
//
//  Created by Михаил Киржнер on 08.11.2022.
//

import Foundation

extension UserDefaults {
    private enum Keys {
        static let IsLogin = "IsLogin"
    }

    static var isLogin: Bool? {
        get { UserDefaults.standard.bool(forKey: Keys.IsLogin) }
        set { UserDefaults.standard.set(newValue!, forKey: Keys.IsLogin) }
    }
}
