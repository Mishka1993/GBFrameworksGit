//
//  RealmUser.swift
//  GBFrameworks
//
//  Created by Михаил Киржнер on 08.11.2022.
//

import Foundation
import RealmSwift

class RealmUser: Object {
    @Persisted var login: String
    @Persisted var password: String

    override class func primaryKey() -> String? {
        "login"
    }

    override class func indexedProperties() -> [String] {
        ["login"]
    }
}

extension RealmUser {
    convenience init(login: String, password: String) {
        self.init()
        self.login = login
        self.password = password
    }
}
