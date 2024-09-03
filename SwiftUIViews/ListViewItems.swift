//
//  ListViewItems.swift
//  MachineTestNeoSoft-SwiftUI
//
//  Created by APPLE on 03/09/24.
//

import SwiftUI
import SwiftUI

struct ItemListView: View {
    
    @State private var searchText = ""
    
    var filteredItems: [ItemModel] {
        if searchText.isEmpty {
            return items
        } else {
            return items
                .filter { item in
                    item.title.lowercased().contains(searchText.lowercased()) }
                .sorted { $0.title < $1.title }
        }
    }
    
    var body: some View {
        VStack {
            SearchItem(searchText: $searchText)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    ForEach(filteredItems) { item in
                        ListRowView(item: item)
                    }
                }
            }
            .padding(.bottom, 0)
        }
        .background(Color.white)
        .padding(.leading,20)
    }
}

struct ListRowView: View {
    var item: ItemModel
    
    var body: some View {
        HStack {
            Image(item.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .padding(.trailing, 8)
            
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.headline)
                Text(item.subtitle)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding(.vertical, 10)
    }
    
}

struct ItemListView_Previews: PreviewProvider {
    static var previews: some View {
        ItemListView()
    }
}

