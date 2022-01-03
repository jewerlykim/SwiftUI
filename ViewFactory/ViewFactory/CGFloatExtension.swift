//
//  CGFloatExtension.swift
//  ViewFactory
//
//  Created by 김보석 on 2021/12/23.
//

import SwiftUI


extension CGFloat {
    func resize(proportion: Float) -> CGFloat {
        return self * CGFloat(proportion)
    }
}
