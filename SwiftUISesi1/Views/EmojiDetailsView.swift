//
//  EmojiDetailsView.swift
//  SwiftUISesi1
//
//  Created by Hidayat Abisena on 14/11/22.
//

import SwiftUI

struct EmojiDetailsView: View {
    // MARK: - PROPERTIES
    let emojiDetails: EmojiModel
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .center) {
            Text(emojiDetails.emoji)
                .font(.system(size: 120))
                .padding(.bottom)
            
            Text(emojiDetails.name)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .padding(.bottom)
            
            Text(emojiDetails.description)
                .font(.system(size: 18, design: .rounded))
                .lineSpacing(4)
                .multilineTextAlignment(.center)
            
            Spacer()
            
        } //: VSTACK
        .padding()
    }
}

// MARK: - PREVIEW
struct EmojiDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiDetailsView(emojiDetails: EmojiModel(emoji: "🧑🏻‍💻", name: "The Technologist", description: "The Technologist: Light Skin Tone emoji is a ZWJ sequence combining 🧑 Person, 🏻 Light Skin Tone, ‍ Zero Width Joiner and 💻 Laptop."))
    }
}
