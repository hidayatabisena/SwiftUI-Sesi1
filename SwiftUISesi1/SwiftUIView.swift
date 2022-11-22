//
//  SwiftUIView.swift
//  SwiftUISesi1
//
//  Created by Hidayat Abisena on 22/11/22.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hello ios developer")
                Text("hello 2")
            }
        }
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
