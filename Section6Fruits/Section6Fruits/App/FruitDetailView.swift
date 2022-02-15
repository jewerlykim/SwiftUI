//
//  FruitDetailView.swift
//  Section6Fruits
//
//  Created by 김보석 on 2021/12/21.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // MARK: - Header

                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        // MARK: - Title

                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])

                        // MARK: - Headline

                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)

                        // MARK: - Nutrients

                        FruitNutientsView(fruit: fruit)

                        // MARK: - SubHeadline

                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])

                        // MARK: - Description

                        Text(fruit.description)
                            .multilineTextAlignment(.leading)

                        // MARK: - Link

                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    } //: VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VStack
            } //: Scroll
            .edgesIgnoringSafeArea(.top)
            .navigationBarTitle(fruit.title, displayMode: .inline)
        } //: Navigation
        .navigationViewStyle(.stack)
        .navigationBarHidden(true)
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
