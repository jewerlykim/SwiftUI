//
//  OnboardingView.swift
//  Section6Fruits
//
//  Created by 김보석 on 2021/12/21.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties

    var fruits: [Fruit] = fruitsData

    // MARK: - Body

    var body: some View {
        VStack {
            TabView {
                ForEach(fruits) { item in
                    FruitCardView(fruit: item)
                } //: Loop
            } //: TabView
            .tabViewStyle(PageTabViewStyle())
            .padding(.vertical, 20)
        }
    }
}

// MARK: - Preview

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
