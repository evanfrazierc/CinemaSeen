//
//  SearchBarView.swift
//  Cinema Seen
//
//  Created by Christopher Evan Frazier on 12/26/19.
//  Copyright © 2019 Christopher Evan Frazier. All rights reserved.
//

import SwiftUI

struct SearchBarView: View {
    @State var text: Binding<String>
    var title: String = "Search"
    //var onEditingChanged: (Bool) -> Void = { _ in }
    var onCommit: () -> Void = { }

    var body: some View {
        //TextField(
        TextField(title, text: text, onCommit: onCommit)
            .background(Color.gray.opacity(0.3))
            .padding(EdgeInsets(top: 0.0, leading: 16.0, bottom: 0, trailing: 16.0))
    }
}
