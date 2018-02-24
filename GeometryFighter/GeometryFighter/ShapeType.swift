//
//  ShapeType.swift
//  GeometryFighter
//
//  Created by Migu on 2018/2/23.
//  Copyright © 2018年 VIctorChee. All rights reserved.
//

import Foundation

enum ShapeType: Int {
    case box, sphere, pyramid, torus, capsule, cylinder, cone, tube
    
    static func random() -> ShapeType {
        let maxValue = tube.rawValue
        let random = arc4random_uniform(UInt32(maxValue + 1))
        return ShapeType(rawValue: Int(random))!
    }
}
