//
//  Dish.swift
//  App
//
//  Created by masato on 12/11/2018.
//

import Foundation
import Vapor

final class Dish :Content {

    var name :String

    init(name :String) {
        self.name = name

    }
}
