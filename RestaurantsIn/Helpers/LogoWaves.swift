//
//  LogoWaves.swift
//  RestaurantsIn
//
//  Created by Antony Rain on 22.04.2022.
//

import SwiftUI
import MapKit

struct LogoWaves: View {
    let universalSize = UIScreen.main.bounds
    @State var isAnimated = false
    
    var body: some View {
        
        ZStack {
            getSinWave(interval: universalSize.width, amplitude: 50, baseline: 40 + universalSize.height/2.3)
                .foregroundColor(Color("darkred").opacity(0.7))
                .offset(x: isAnimated ? -1*universalSize.width : 0)
                .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false), value: isAnimated)
            getSinWave(interval: universalSize.width*1.2, amplitude: 80, baseline: 50 + universalSize.height/2.3)
                .foregroundColor(Color("red").opacity(0.4))
                .offset(x: isAnimated ? -1*(universalSize.width*1.2) : 0)
                .animation(Animation.linear(duration: 5).repeatForever(autoreverses: true),value: isAnimated)
        }.onAppear(){
            self.isAnimated = true
        }
        .mask(RoundedRectangle(cornerRadius: 200).frame(width: 400, height: 500))
        .scaleEffect(0.9)
    }
    
    func getSinWave(interval:CGFloat, amplitude: CGFloat = 100 ,baseline:CGFloat = UIScreen.main.bounds.height/2) -> Path {
        Path{path in
            path.move(to: CGPoint(x: 0, y: baseline))
            path.addCurve(
                to: CGPoint(x: 1*interval,y: baseline),
                control1: CGPoint(x: interval * (0.35),y: amplitude + baseline),
                control2: CGPoint(x: interval * (0.65),y: -amplitude + baseline)
            )
            path.addCurve(
                to: CGPoint(x: 2*interval,y: baseline),
                control1: CGPoint(x: interval * (1.35),y: amplitude + baseline),
                control2: CGPoint(x: interval * (1.65),y: -amplitude + baseline)
            )
            path.addLine(to: CGPoint(x: 2*interval, y: universalSize.height))
            path.addLine(to: CGPoint(x: 0, y: universalSize.height))
        }
    }
}

struct LogoWaves_Previews: PreviewProvider {
    static var previews: some View {
        LogoWaves()
    }
}
