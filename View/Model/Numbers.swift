//
//  Numbers.swift
//  Calculater
//
//  Created by G Bannikoppa, Naveen on 26/10/22.
//

import Foundation

enum Numbers: Int, CaseIterable, CustomStringConvertible {
    case zero, one, two, three, four, five, six, seven, eight, nine
    
    var description: String {
        "\(rawValue)"
    }
}
