//
//  books.swift
//  swiftui_projekt
//
//  Created by Fabian Kirchmann / BBS2H20A on 25.01.22.
//

import Foundation

struct Book: Codable, Identifiable {
    let id = UUID()
    var author: String
    var email: String
    var title: String
}
