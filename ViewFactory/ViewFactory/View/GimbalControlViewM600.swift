//
//  GimbalControlViewM600.swift
//  ViewFactory
//
//  Created by 김보석 on 2021/12/22.
//

import SwiftUI

struct GimbalControlViewM600: View {
    var body: some View {
        GeometryReader { geometry in
            let windowWidth = geometry.size.width
            let windowHeight = geometry.size.height
            
            let gimbalAngleBarHeight = windowHeight.resize(proportion: 0.3567)
            let gimbalAngleBarWidth = gimbalAngleBarHeight.resize(proportion: 0.087)
            
            HStack {
                // MARK: - Control gimbal angle by degree button
                ZStack {
                    ForEach(0..<gimbalButtonAngles.count, id: \.self) { item in
                        Button(action: {
                        }, label: {
                            Text(gimbalButtonAngles[item].degree)
                                .foregroundColor(.white)
                        })
                            .frame(width: windowWidth.resize(proportion: 0.037), height: windowHeight.resize(proportion: 0.039))
                            .border(Color("ColorGimbalBackStroke"), width: 1)
                            .background(Color("ColorGimbalBackgreenOpa"))
                            .cornerRadius(2)
                            .offset(x: 0, y: gimbalButtonAngles[item].offsetY * (windowHeight/768))
                    }
                } //: ZStack
                .frame(width: gimbalAngleBarHeight.resize(proportion: 0.168), height: gimbalAngleBarHeight)
                
                // MARK: - Control gimbal angle by drag gesture
                ZStack {
                    Rectangle()
                        .foregroundColor(Color("ColorGimbalControl"))
                        .cornerRadius(2)
                    
                    ForEach(0..<gimbalControlLargeHorizontalYProportions.count, id: \.self) { index in
                        GimbalControlLargeHorizontal(pathRect: CGRect.init(parentWidth: gimbalAngleBarWidth, parentHeight: gimbalAngleBarHeight, largeProportion: gimbalControlLargeHorizontalYProportions[index]))
                    }
                    
                    ForEach(0..<gimbalControlSmallHorizontalYProportions.count, id: \.self) { index in
                        GimbalControlLargeHorizontal(pathRect: CGRect.init(parentWidth: gimbalAngleBarWidth, parentHeight: gimbalAngleBarHeight, smallProportion: gimbalControlSmallHorizontalYProportions[index]))
                    }
                    
                    Image("icon_vertical_gimbal_user")
                        .resizable()
                        .scaledToFit()
                        .offset(x: 0, y: -10)
                    Image("icon_vertical_gimbal_real")
                        .resizable()
                        .scaledToFit()
                        .offset(x: 0, y: 10)
                    
                } //: ZStack
                .frame(width: gimbalAngleBarWidth, height: gimbalAngleBarHeight)
            } //: HStack
            .frame(width: gimbalAngleBarHeight.resize(proportion: 0.255), height: gimbalAngleBarHeight)
            .position(x: windowWidth.resize(proportion: 0.818), y: windowHeight.resize(proportion: 0.488))
        }
    }
}

struct GimbalControlViewM600_Previews: PreviewProvider {
    static var previews: some View {
        GimbalControlViewM600()
            .previewLayout(.sizeThatFits)
            .previewInterfaceOrientation(.landscapeRight)
    }
}
