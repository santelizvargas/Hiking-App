//
//  CustomButtonView.swift
//  HikingApp
//
//  Created by Steven Santeliz on 12/3/24.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .colorGreenLight,
                            .colorGreenMedium
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
            
            Circle()
                .stroke(
                    LinearGradient(
                        colors: [
                            .colorGrayLight,
                            .colorGrayMedium
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    ),
                    lineWidth: 4)
            
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .colorGrayLight,
                            .colorGrayMedium
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
        }
        .frame(width: 58, height: 58)
    }
}


struct CustomButtonView_Preview: PreviewProvider {
    static var previews: some View {
        CustomButtonView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
