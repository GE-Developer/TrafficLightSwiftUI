//
//  StartButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by M I C H A E L on 08.06.2023.
//

import SwiftUI

struct StartButtonView: View {
    let title: String
    let copletion: () -> Void
    
    var body: some View {
        Button(action: copletion) {
            Text(title)
                .frame(width: 200, height: 70)
                .background(Color.blue)
                .cornerRadius(20)
                .foregroundColor(.white)
                .font(.largeTitle)
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 4))
        }
    }
}

//struct StartButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        StartButtonView(copletion: Void)
//    }
//}
