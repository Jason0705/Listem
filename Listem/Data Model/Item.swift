//
//  Item.swift
//  Listem
//
//  Created by Jason Li on 2018-06-20.
//  Copyright © 2018 Jason Li. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
