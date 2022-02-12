//
//  CustomButtons.swift
//  Sandbox2
//
//  Created by Susan Tovar on 2/8/22.
//
import Foundation
import SwiftUI

struct CustomizedStyle: PrimitiveButtonStyle {
    typealias Body = Button
    func makeBody(configuration: Configuration) -> some View {
        print(configuration.label)
        configuration.trigger()
        
        return Button(configuration)
            .background(Color("Custom Color"))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .foregroundColor(Color("Text Color"))
        
    }
}

//struct CustomButtons_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomButtons()
//    }
//}
