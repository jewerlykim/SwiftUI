//
//  ContentView.swift
//  ViewFactory
//
//  Created by 김보석 on 2021/12/22.
//

import DJIUXSDK
import SwiftUI

struct ContentView: View {
    @ObservedObject private var viewModel = SampleViewModel()
    var preflightCheckListController = PreflightCheckListViewController()
    @State private var showingSheet = false
    var body: some View {
        GeometryReader { geometry in
            let windowHeight = geometry.size.height
            let windowWidth = geometry.size.width

            ZStack(alignment: .bottomLeading) {
                Color("bar_background")
            } // Zstack
            .sheet(isPresented: $showingSheet) {
                SheetView()
            }
            .edgesIgnoringSafeArea(.bottom)
            .onAppear(perform: {
                // sampleFunction()
                showingSheet = true
                viewModel.showLog()
            })
        }
    }
    // func sampleFunction() {
    //     assert(1+2 == 4, "not equal 1+2 = 4")
    // }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

struct SheetView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        Button("Press to dismiss") {
            presentationMode.wrappedValue.dismiss()
        }
        .font(.title)
        .padding()
        .background(Color.black)
    }
}
