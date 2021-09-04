//
//  Color.swift
//  HW 2
//
//  Created by Николай Ларьков on 03.09.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import Foundation

struct Color {
    let red: Float
    let green: Float
    let blue: Float
    
    static func getDefaultColor() -> Color {
        Color(red: 1, green: 1, blue: 0)
    }
}

