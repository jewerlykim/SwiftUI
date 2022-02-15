//
//  ContentView.swift
//  SwiftUISection2
//
//  Created by 김보석 on 2021/11/23.
//

import SwiftUI

extension Image {
    func imageModifier() -> some View {
        resizable()
            .scaledToFit()
    }

    func iconModifier() -> some View {
        imageModifier()
            .frame(maxWidth: 128)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}

struct ContentView: View {
    private let imageURL: String = "https://credo.academy/credo-academy@3x.png"

    var body: some View {
        // MARK: - 1. BASIC

        // AsyncImage(url: URL(string: imageURL))

        // MARK: - 2. SCALE

        // AsyncImage(url: URL(string: imageURL), scale: 3.0)
        // default value is 1.0 bigger scaling value smaller image size

        // MARK: - 3. PLACEHOLDER

        // AsyncImage(url: URL(string: imageURL)) { image in
        //     image.imageModifier()
        // } placeholder: {
        //     Image(systemName: "photo.circle.fill").iconModifier()
        // }
        // .padding(40)

        // MARK: - 4. PHASE

        // AsyncImage(url: URL(string: imageURL)) { phase in
        //     // SUCCESS: The image successfully loaded.
        //     // FAILURE: The image failed to load with an error
        //     // EMPTY: No image is loaded.
        //
        //     if let image = phase.image {
        //         image.imageModifier()
        //     } else if phase.error != nil {
        //         Image(systemName: "ant.circle.fill").iconModifier()
        //     } else {
        //         Image(systemName: "photo.circle.fill").iconModifier()
        //     }
        // }
        // .padding(40)

        // MARK: - 5. ANIMATION

        AsyncImage(url: URL(string: imageURL), transaction: Transaction(animation: .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))) { phase in
            switch phase {
            case let .success(image):
                image
                    .imageModifier()
                    // .transition(.move(edge: .top))
                    // .transition(.slide)
                    .transition(.scale)
            case .failure:
                Image(systemName: "ant.circle.fill").iconModifier()
            case .empty:
                Image(systemName: "photo.circle.fill").iconModifier()
            @unknown default:
                ProgressView()
            }
        }
        .padding(40)
    }
}

// struct ContentView_Previews: PreviewProvider {
//     static var previews: some View {
//         ContentView()
//     }
// }
