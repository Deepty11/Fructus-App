//
//  FruitModel.swift
//  Fructus
//
//  Created by Rehnuma Reza Deepty on 17/4/23.
//

import Foundation
import SwiftUI

struct FruitDataModel: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var description: String
    var gradientColors: [Color]
    var nutrition: [String]
}
