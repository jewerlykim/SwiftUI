//
//  ContentView.swift
//  Section6Fruits
//
//  Created by 김보석 on 2021/12/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingSettings: Bool = false
    var fruits: [Fruit] = fruitsData

    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                Button(action: {
                    isShowingSettings = true

                }, label: {
                    Image(systemName: "slider.horizontal.3")
                }) //: Button
                .sheet(isPresented: $isShowingSettings) {
                    SettingView()
                }
            )
        } //: Navigation
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
