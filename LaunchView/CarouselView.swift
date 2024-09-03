////////
////////  ContentView.swift
////////  MachineTestNeoSoft-SwiftUI
////////
////////  Created by APPLE on 03/09/24.

import SwiftUI

struct ContentView: View {
    @State private var isPopupVisible = false
    var body: some View {
        ZStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    HeaderView()
                    ItemListView()
                }
            }
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        withAnimation {
                            isPopupVisible.toggle()
                        }
                    }) {
                        Image(systemName: "plus")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .clipShape(Circle())
                            .shadow(radius: 4)
                    }
                    .padding(.trailing, 16)
                    .padding(.bottom, 16)
                }
            }
            
            // Popup view
            if isPopupVisible {
                BottomPopupView(isVisible: $isPopupVisible)
            }
        }
    }
}

struct HeaderView: View {
    @State private var currentIndex = 0
    var body: some View {
        VStack {
            ZStack {
                VStack {
                    TabView(selection: $currentIndex) {
                        ForEach(sliderImgs.indices, id: \.self) { index in
                            ZStack {
                                Image(sliderImgs[index])
                                    .resizable()
                                    .scaledToFill()
                                    .cornerRadius(8)
                                    .padding(.horizontal, 8)
                                    .clipped()
                            }
                            .tag(index)
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                    .frame(height: 200)
                }
                .edgesIgnoringSafeArea(.bottom)
                .padding(.top, 20)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
