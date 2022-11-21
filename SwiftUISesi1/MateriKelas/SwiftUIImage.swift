//
//  SwiftUIImage.swift
//  SwiftUISesi1
//
//  Created by Hidayat Abisena on 16/11/22.
//

import SwiftUI

struct SwiftUIImage: View {
    var body: some View {
//        Image(systemName: "cloud.hail")
//            .font(.system(size: 120))
//            .symbolRenderingMode(.hierarchical)
//            .foregroundStyle(.indigo)
//            .shadow(color: .gray, radius: 10, x: 0, y: 10)
        
//        Image("bg-image")
//            .resizable()
//            .scaledToFill()
//            .ignoresSafeArea(.container, edges: .bottom)
//            .frame(width: 300)
//            .clipped()
        
//        Image("bg-image")
//            .resizable()
//            .scaledToFill()
//            .frame(width: 300)
//            .clipShape(Capsule())
//            .opacity(0.6)
        
        ZStack {
            
            LinearGradient(colors: [Color.yellow, Color.purple ,Color.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            Image("bg-image")
                .resizable()
                .scaledToFill()
                .frame(width: 300)
                .clipShape(Circle())
                .overlay {
                    ZStack {
                        Circle()
                            .opacity(0.4)
                        HStack {
                            Image(systemName: "cloud.sun.rain")
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(.white, .yellow, .blue)
                                .font(.largeTitle)
                                .opacity(0.8)
                            
                            Text("Fruit Ninja")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }
                    }
            }
        }
    }
}

struct SwiftUIImage_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIImage()
    }
}
