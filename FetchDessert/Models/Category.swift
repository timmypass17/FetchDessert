//
//  Category.swift
//  FetchiOSTakeHome
//
//  Created by Timmy Nguyen on 9/12/23.
//

import Foundation

enum Category: String, CustomStringConvertible {
    case dessert
    case beef
    case chicken
    // etc...
    
    var description: String {
        return self.rawValue.capitalized
    }
    
    var pluralDescription: String {
        // Note: Not all categories can be plural by appending an 's'
        switch self {
        case .beef, .chicken, .dessert:
            return "\(description)s"
        }
    }
}
