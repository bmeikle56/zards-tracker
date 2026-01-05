//
//  StatefulPreviewWrapper.swift
//  ZardsTracker
//
//  Created by Braeden Meikle on 1/5/26.
//

import SwiftUI

struct StatefulPreviewWrapper<Value, Content: View>: View {
    @State var value: Value
    let content: (Binding<Value>) -> Content

    init(_ value: Value, @ViewBuilder content: @escaping (Binding<Value>) -> Content) {
        _value = State(initialValue: value)
        self.content = content
    }

    var body: some View {
        content($value)
    }
}
