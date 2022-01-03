//
//  CGRectExtension.swift
//  ViewFactory
//
//  Created by 김보석 on 2021/12/23.
//

import SwiftUI


extension CGRect {
    init (parentWidth: CGFloat, parentHeight: CGFloat, largeProportion: Float) {
        let largeProportion = CGFloat(largeProportion)
        self.init(x: parentWidth / 4, y: parentHeight * largeProportion, width: parentWidth / 2, height: parentHeight * 0.0058)
    }
    
    init (parentWidth: CGFloat, parentHeight: CGFloat, smallProportion: Float) {
        let smallProportion = CGFloat(smallProportion)
        self.init(x: parentWidth / 3, y: parentHeight * smallProportion, width: parentWidth / 3, height: parentHeight * 0.002189)
    }
}
