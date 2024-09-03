//
//  DataModel.swift
//  MachineTestNeoSoft-SwiftUI
//
//  Created by APPLE on 03/09/24.
//

import Foundation

struct ItemModel: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let subtitle: String
}

let items = [
    ItemModel(imageName: "Custardapple", title: "custard apple", subtitle: "Cus"),
    ItemModel(imageName: "Apple", title: "apple", subtitle: "App"),
    ItemModel(imageName: "Lemon", title: "lemon", subtitle: "Lem"),
    ItemModel(imageName: "Pineapple", title: "pine apple", subtitle: "Pin"),
    ItemModel(imageName: "Mango", title: "mango", subtitle: "Man"),
    ItemModel(imageName: "Coconut", title: "coconut", subtitle: "Coc"),
    ItemModel(imageName: "Custardapple", title: "custard apple", subtitle: "Cus"),
    ItemModel(imageName: "Apple", title: "apple", subtitle: "App"),
    ItemModel(imageName: "Lemon", title: "lemon", subtitle: "Lem"),
    ItemModel(imageName: "Pineapple", title: "pine apple", subtitle: "Pin"),
    ItemModel(imageName: "Mango", title: "mango", subtitle: "Man"),
    ItemModel(imageName: "Coconut", title: "coconut", subtitle: "Coc"),
    ItemModel(imageName: "Custardapple", title: "custard apple", subtitle: "Cus"),
    ItemModel(imageName: "Apple", title: "apple", subtitle: "App"),
    ItemModel(imageName: "Lemon", title: "lemon", subtitle: "Lem"),
    ItemModel(imageName: "Pineapple", title: "pine apple", subtitle: "Pin"),
    ItemModel(imageName: "Mango", title: "mango", subtitle: "Man"),
    ItemModel(imageName: "Coconut", title: "coconut", subtitle: "Coc"),
    ItemModel(imageName: "Custardapple", title: "custard apple", subtitle: "Cus"),
    ItemModel(imageName: "Apple", title: "apple", subtitle: "App"),
    ItemModel(imageName: "Lemon", title: "lemon", subtitle: "Lem"),
    ItemModel(imageName: "Pineapple", title: "pine apple", subtitle: "Pin"),
    ItemModel(imageName: "Mango", title: "mango", subtitle: "Man"),
    ItemModel(imageName: "Coconut", title: "coconut", subtitle: "Coc")
    
]

let sliderImgs = ["image1", "image2", "image4"]
