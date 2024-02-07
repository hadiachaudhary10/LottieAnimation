//
//  ContentView.swift
//  LottieAnimation
//
//  Created by Dev on 07/02/2024.
//

import SwiftUI

struct ContentView: View {
  @State var currentIndex: Int = 0
  @State var fromFrame: CGFloat = 0.0
  @State var toFrame: CGFloat = 15.0
    var body: some View {
        VStack {
          LottiePlusView(name: "animation", loopMode: .playOnce, fromFrame: $fromFrame, toFrame: $toFrame)
          HStack {
            Spacer()
            Button("Next") {
              currentIndex += 1
              changeLottieAnimation(currentIndex: currentIndex)
            }
          }
        }
        .padding()
    }
    func changeLottieAnimation(currentIndex : Int){
      switch currentIndex {
        case 1:
          fromFrame = 15.0
          toFrame = 30.0
          return
        case 2:
          fromFrame = 30.0
          toFrame = 45.0
          return
        case 3:
          fromFrame = 45.0
          toFrame = 60.0
          return
        case 4:
          fromFrame = 60.0
          toFrame = 75.0
          return
        case 5:
          fromFrame = 75.0
          toFrame = 90.0
          return
        case 6:
          fromFrame = 90.0
          toFrame = 115.0
          return
        default:
          return
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
