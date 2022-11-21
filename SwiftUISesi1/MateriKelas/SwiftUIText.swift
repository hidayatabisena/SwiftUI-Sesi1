//
//  SwiftUIText.swift
//  SwiftUISesi1
//
//  Created by Hidayat Abisena on 16/11/22.
//

import SwiftUI

struct SwiftUIText: View {
    var body: some View {
        VStack {
            Text("Hello, iOS Developer")
            // .font(.title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.green)
            
            Text("Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
                .multilineTextAlignment(.center)
                .lineLimit(3)
                .lineSpacing(10)
                .truncationMode(.head)
                .padding()
        }
    }
}

struct SwiftUIText_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIText()
    }
}
