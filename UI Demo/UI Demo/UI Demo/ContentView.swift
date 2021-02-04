//
//  ContentView.swift
//  UI Demo
//
//  Created by einfochips on 04/02/21.
//  Copyright © 2021 Pandas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        ZStack {
             
            
            ScrollView {
                VStack {
                   Text("Swift UI")
                    .font(.largeTitle).bold()
                        .frame(maxHeight: .infinity, alignment: .leading)
                        .padding(.horizontal, 0)
                    
                    
                    ForEach(0 ..< 10) { item in
                        GeometryReader { geometry in
                            CardView(minY: geometry.frame(in: .global).minY )
                        }
                        .frame(maxWidth: .infinity)
                        .frame(height: 450)
                    }
                    
                   Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    
    @State var show = false
    var minY: CGFloat
    
    
    var body: some View {
        ZStack {
            Image("Content")
                .offset(x : show ? 10 :0)
                .rotation3DEffect(Angle(degrees: show ? 1 : 10), axis: (x:0, y: 10, z: 0))
                .animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0))
            
            
            Image("Card1")
                .offset(x :show ? -330 : 5)
                .rotationEffect(Angle(degrees: show ? 5 : 0))
                .animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0))
            
        }
        //.scaleEffect(minY < 0 ? minY / 1000 + 1  : 1, anchor: .bottom)
        //.rotation3DEffect(Angle(degrees: Double(minY/10)), axis: (x: -10, y: 0, z: 0))
        .onTapGesture {
            self.show.toggle()
        }
    }
}
