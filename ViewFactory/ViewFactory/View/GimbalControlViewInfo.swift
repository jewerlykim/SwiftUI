//
//  GimbalControlViewInfo.swift
//  ViewFactory
//
//  Created by 김보석 on 2021/12/22.
//

import SwiftUI


let gimbalControlLargeHorizontalCoordinates: [CGRect] = [
    CGRect(x: 6.0, y: 20.0, width: 12, height: 1.6),
    CGRect(x: 6.0, y: 59.0, width: 12, height: 1.6),
    CGRect(x: 6.0, y: 136.0, width: 12, height: 1.6),
    CGRect(x: 6.0, y: 213.0, width: 12, height: 1.6),
    CGRect(x: 6.0, y: 252.0, width: 12, height: 1.6)
]

let gimbalControlLargeHorizontalYProportions: [Float] = [
    Float(20.0 / 274),
    Float(59.0 / 274),
    Float(136.0 / 274),
    Float(213.0 / 274),
    Float(252.0 / 274)
]


let gimbalControlSmallHorizontalCoordinates: [CGRect] = [
    CGRect(x: 8.0, y: 34.0, width: 8.0, height: 0.6),
    CGRect(x: 8.0, y: 46.0, width: 8.0, height: 0.6),
    CGRect(x: 8.0, y: 73.0, width: 8.0, height: 0.6),
    CGRect(x: 8.0, y: 85.0, width: 8.0, height: 0.6),
    CGRect(x: 8.0, y: 98.0, width: 8.0, height: 0.6),
    CGRect(x: 8.0, y: 111.0, width: 8.0, height: 0.6),
    CGRect(x: 8.0, y: 123.0, width: 8.0, height: 0.6),
    CGRect(x: 8.0, y: 150.0, width: 8.0, height: 0.6),
    CGRect(x: 8.0, y: 162.0, width: 8.0, height: 0.6),
    CGRect(x: 8.0, y: 175.0, width: 8.0, height: 0.6),
    CGRect(x: 8.0, y: 188.0, width: 8.0, height: 0.6),
    CGRect(x: 8.0, y: 200.0, width: 8.0, height: 0.6),
    CGRect(x: 8.0, y: 227.0, width: 8.0, height: 0.6),
    CGRect(x: 8.0, y: 239.0, width: 8.0, height: 0.6)
]

let gimbalControlSmallHorizontalYProportions: [Float] = [
    Float(34.0 / 274),
    Float(46.0 / 274),
    Float(73.0 / 274),
    Float(85.0 / 274),
    Float(98.0 / 274),
    Float(111.0 / 274),
    Float(123.0 / 274),
    Float(150.0 / 274),
    Float(162.0 / 274),
    Float(175.0 / 274),
    Float(188.0 / 274),
    Float(200.0 / 274),
    Float(227.0 / 274),
    Float(239.0 / 274)
]



let gimbalButtonAngles: [GimbalButtonInfo] = [
    GimbalButtonInfo(degree: "+90", offsetY: CGFloat(-116)),
    GimbalButtonInfo(degree: "+60", offsetY: CGFloat(-77)),
    GimbalButtonInfo(degree: "0", offsetY: CGFloat(0)),
    GimbalButtonInfo(degree: "-60", offsetY: CGFloat(77)),
    GimbalButtonInfo(degree: "-90", offsetY: CGFloat(116))
    
]




