//
//  BottomPopUpView.swift
//  MachineTestNeoSoft-SwiftUI
//
//  Created by APPLE on 03/09/24.
//

import SwiftUI

// Bottom popup view with three labels
struct BottomPopupView: View {
    @Binding var isVisible: Bool
    
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing: 30) {
                
                Text("Total \(items.count) items in list")
                    .font(.headline)
                let titles = items.compactMap { $0.title }
                let titlesText = titles.joined(separator: ", ")
                
                Text("\(titlesText)")
                    .font(.headline)
                    .padding(.leading,10)
                
                let characterCounts = countCharacterOccurrences(items: items)
                let top3Characters = getTopNCharacters(from: characterCounts, topN: 3)
                
                Text("\(top3Characters.map { "\($0.0) = \($0.1) time(s)" }.joined(separator: "\n"))")
                    .font(.headline)
                
                Button(action: {
                    withAnimation {
                        isVisible = false // Hide the popup when the button is pressed
                    }
                }) {
                    Text("Dismiss")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(6)
                }
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 10)
            .padding(.horizontal, 20)
            .padding(.bottom, 0)
        }
        .background(
            Color.black.opacity(0.4)
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    withAnimation {
                        isVisible = false
                    }
                }
        )
    }
    private func getTopNCharacters(from counts: [Character: Int], topN: Int) -> [(Character, Int)] {
        return counts.sorted(by: { $0.value > $1.value }).prefix(topN).map { ($0.key, $0.value) }
    }
    
    private func countCharacterOccurrences(items: [ItemModel]) -> [Character: Int] {
        var characterCountDict: [Character: Int] = [:]
        for item in items {
            let title = item.title
            for character in title {
                if character.isWhitespace { continue }
                characterCountDict[character, default: 0] += 1
            }
        }
        return characterCountDict
    }
}

//#Preview {
//    BottomPopUpView()
//}
