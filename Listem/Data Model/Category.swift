//
//  Category.swift
//  Listem
//
//  Created by Jason Li on 2018-06-20.
//  Copyright © 2018 Jason Li. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var dateCreated: Date?
    
    let items = List<Item>()
}
