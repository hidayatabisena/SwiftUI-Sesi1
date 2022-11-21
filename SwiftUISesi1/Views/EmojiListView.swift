//
//  EmojiListView.swift
//  SwiftUISesi1
//
//  Created by Hidayat Abisena on 14/11/22.
//

import SwiftUI

struct EmojiListView: View {
    // MARK: - PROPERTIES
    @State private var searchText: String = ""
    
    private var emojiSearchResults: [EmojiModel] {
        let results = EmojiProvider.all()
        if searchText.isEmpty {
            return results
        } else {
            return results.filter {
                $0.name.lowercased().contains(searchText.lowercased()) || $0.emoji.contains(searchText)
            }
        }
    }
    
    private var suggestedResult: [EmojiModel] {
        if searchText.isEmpty {
            return []
        } else {
            return emojiSearchResults
        }
    }
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            List(emojiSearchResults) { result in
                NavigationLink(destination: {
                    EmojiDetailsView(emojiDetails: result)
                }) {
                    Text("\(result.emoji) \(result.name)")
                        .font(.title2)
                    .padding(6)
                }
            }
            .navigationTitle("Emoji Finder")
            .searchable(
                text: $searchText,
                placement: .navigationBarDrawer(displayMode: .always),
                prompt: "What emoji's that you're looking for?"
            ) {
                ForEach(suggestedResult) { result in
                    Text("Looking for \(result.emoji) - \(result.name)?")
                        .searchCompletion(result.name)
                }
            }
            
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW
struct EmojiListView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiListView()
    }
}
