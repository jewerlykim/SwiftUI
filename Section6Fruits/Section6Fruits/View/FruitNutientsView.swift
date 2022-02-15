//
//  FruitNutientsView.swift
//  Section6Fruits
//
//  Created by 김보석 on 2021/12/21.
//

import SwiftUI

struct FruitNutientsView: View {
    var fruit: Fruit
    let nutrients: [String] = ["Energe", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]

    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0 ..< nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())

                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        } //: Box
    }
}

struct FruitNutientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
