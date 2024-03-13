//
//  CardView.swift
//  HikingApp
//
//  Created by Steven Santeliz on 12/3/24.
//

import SwiftUI

// MARK: - View Constants

private enum Constants {
    enum Circle { static let size: CGFloat = 256 }
    
    enum Text {
        static let titleSize: CGFloat = 52
    }
    
    enum Card {
        static let width: CGFloat = 320
        static let height: CGFloat = 570
    }
}

// MARK: - Card View

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            
            VStack {
                Text("Hiking")
                    .fontWeight(.black)
                    .font(.system(size: Constants.Text.titleSize))
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
                
                Text("some")
                    .multilineTextAlignment(.leading)
                    .italic()
                    .foregroundStyle(.colorGrayMedium)
                
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [
                                    .colorIndigoMedium,
                                    .colorOrangeMedium
                                ],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: Constants.Circle.size)
                    
                    Image(.image1)
                        .resizable()
                        .scaledToFit()
                }
            }
        }
        .frame(width: Constants.Card.width,
               height: Constants.Card.height)
    }
}

#Preview {
    CardView()
}
