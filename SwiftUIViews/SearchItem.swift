//
//  PageIndicatorView.swift
//  MachineTestNeoSoft-SwiftUI
//
//  Created by APPLE on 03/09/24.
//

import SwiftUI

struct SearchItem: View {
    @Binding var searchText: String
       
       var body: some View {
           TextField("Search...", text: $searchText)
               .textFieldStyle(RoundedBorderTextFieldStyle())
               .padding(.horizontal, 0)
               .padding(.top, 16)
       }
}


//#Preview {
//    PageIndicatorView()
//}
