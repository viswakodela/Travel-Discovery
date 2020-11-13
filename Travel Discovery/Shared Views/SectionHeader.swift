//
//  SectionHeader.swift
//  Travel Discovery
//
//  Created by Viswa Kodela on 2020-11-10.
//

import SwiftUI

struct SectionHeaderText: View {
    let text: String
    let actionLabel: String
    var body: some View {
        HStack {
            Text(text)
                .font(.system(size: 16, weight: .semibold))
            Spacer()
            Text(actionLabel)
                .font(.system(size: 15, weight: .semibold))
        }
    }
}

struct SectionHeaderText_Previews: PreviewProvider {
    static var previews: some View {
        SectionHeaderText(text: "Hello World!", actionLabel: "See All")
    }
}
