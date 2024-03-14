//
//  CardView.swift
//  HikingApp
//
//  Created by Steven Santeliz on 12/3/24.
//

import SwiftUI

// MARK: - View Constants

private enum Constants {
    enum Text { static let titleSize: CGFloat = 52 }
    enum Header { static let horizontalPadding: CGFloat = 30 }
    
    enum Image {
        static let name: String = "image-{0}"
        static let placeholderName: String = "{0}"
    }
    
    enum Card {
        static let width: CGFloat = 320
        static let height: CGFloat = 570
    }
}

// MARK: - Card View

struct CardView: View {
    
    @State private var randomNumber: Int = 1
    @State private var imageNumber: Int = 1
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
            
            VStack {
                
                headerView
                
                imageGradientCircle
                
                exploreMoreButton
            }
        }
        .frame(width: Constants.Card.width,
               height: Constants.Card.height)
    }
    
    private var headerView: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(NSLocalizatedString(.title))
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
                
                Spacer()
                
                Button { } label: {
                    CustomButtonView()
                }
            }
            
            Text(NSLocalizatedString(.description))
                .multilineTextAlignment(.leading)
                .italic()
                .foregroundStyle(.colorGrayMedium)
        }
        .padding(.horizontal, Constants.Header.horizontalPadding)
    }
    
    @ViewBuilder
    private var imageGradientCircle: some View {
        let imageName = Constants.Image.name
            .replacingOccurrences(of: Constants.Image.placeholderName,
                                  with: "\(imageNumber)")
        ZStack {
            CustomCircleView()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .animation(.default,
                           value: imageNumber)
        }
    }
    
    private var exploreMoreButton: some View {
        Button {
            getRandomImage()
        } label: {
            Text(NSLocalizatedString(.exploreMore))
                .fontWeight(.heavy)
                .font(.title2)
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .colorGreenLight,
                            .colorGreenMedium
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
        }
        .buttonStyle(GradientButton())
    }
    
    private func getRandomImage() {
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
        
        imageNumber = randomNumber
    }
}

extension CardView {
    private enum localizatedKey {
        case title, description, exploreMore
    }
    
    private func NSLocalizatedString(_ key: localizatedKey) -> String {
        return switch key {
            case .title: "Hiking"
            case .description: "Fun and enjoyable outdoor activity for friends and families"
            case .exploreMore: "Explore More"
        }
    }
}

#Preview {
    CardView()
}
