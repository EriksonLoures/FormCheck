//
//  Toggle+CheckBoxStyle.swift
//  FormSwiftUI
//
//  Created by Erik Loures on 13/06/23.
//

import Foundation
import SwiftUI

struct ToggleCheckBoxStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            Image(systemName: "checkmark.circle")
                .symbolVariant(configuration.isOn ? .fill : .none)
        }
    }
}

extension ToggleStyle where Self == ToggleCheckBoxStyle {
    static var checklist: ToggleCheckBoxStyle { .init()}
}
