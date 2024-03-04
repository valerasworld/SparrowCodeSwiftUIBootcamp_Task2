//
//  MixedText.swift
//  SparrowCodeSwiftUIBootcamp_Task 2
//
//  Created by Валерий Зазулин on 04.03.2024.
//

import SwiftUI

struct MixedText: View {
    
    @State var sliderValue: CGFloat = 300
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                Group {
                    Text("Марафон ")
                        .foregroundStyle(Color.secondary) +
                    
                    (sliderValue > 157 ? Text("по SwiftUI") : Text("по\nSwiftUI"))
                }
                
                
                Text("«Отцовский Пинок»")
                    .font(.title)
                    .bold()
                    .foregroundStyle(Color.blue)
            }
            .frame(width: sliderValue, height: 200)
            .border(.red, width: 2)
            
            Slider(value: $sliderValue, in: 100...300)
                .padding(.horizontal)
        }
        
    }
}

#Preview {
    MixedText()
}
