//
//  TrafficLightView.swift
//  TrafficLightSwiftUI
//
//  Created by M I C H A E L on 08.06.2023.
//

import SwiftUI

enum LightColor {
    case red, yellow, green
}

struct TrafficLightView: View {
    @State private var nextLight = LightColor.red
    
    @State private var buttonTitle = "START"
    
    @State private var redOpacity = 0.4
    @State private var yellowOpacity = 0.4
    @State private var greenOpacity = 0.4
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(spacing: 20) {
                LightView(color: .red, opacity: redOpacity)
                LightView(color: .yellow, opacity: yellowOpacity)
                LightView(color: .green, opacity: greenOpacity)
                Spacer()
                StartButtonView(title: buttonTitle, copletion: buttonPressed)
            }
            .padding()
        }
    }
    
    private func buttonPressed() {
        if buttonTitle == "START" {
            buttonTitle = "NEXT"
        }
        changeLight()
    }
    
    private func changeLight() {
        switch nextLight {
        case .red:
            greenOpacity = 0.4
            redOpacity = 1
            nextLight = .yellow
        case .yellow:
            redOpacity = 0.4
            yellowOpacity = 1
            nextLight = .green
        case .green:
            yellowOpacity = 0.4
            greenOpacity = 1
            nextLight = .red
        }
    }
}

struct TrafficLightView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView()
    }
}
