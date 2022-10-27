//
//  Opreations.swift
//  Calculater
//
//  Created by G Bannikoppa, Naveen on 26/10/22.
//

import Foundation

enum Opreations: CaseIterable, CustomStringConvertible {
    case addition, subtraction, multiplication, division
    
    var description: String {
        switch self {
        case .addition:
            return "+"
        case .subtraction:
            return "−"
        case .multiplication:
            return "×"
        case .division:
            return "÷"
        }
    }
}
