//
//  GimbalControlSmallHorizontal.swift
//  ViewFactory
//
//  Created by 김보석 on 2021/12/22.
//

import SwiftUI

struct GimbalControlSmallHorizontal: View {
    
    var pathRect: CGRect
    
    
    var body: some View {
        Rectangle()
            .path(in: pathRect)
            .foregroundColor(Color.white)
    }
}

struct GimbalControlSmallHorizontal_Previews: PreviewProvider {
    static var previews: some View {
        GimbalControlSmallHorizontal(pathRect: CGRect(x: 0.0, y: 0.0, width: 10, height: 10))
            .previewLayout(.sizeThatFits)
    }
}
