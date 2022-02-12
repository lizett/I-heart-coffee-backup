//
//  Favorites.swift
//  Sandbox2
//
//  Created by Susan Tovar on 2/8/22.
//
//
//import Foundation
//import SwiftUI
//
//class Favorites: ObservableObject {
//    private var brewRecipes: Set<String>
//    private let saveKey = "Favorites"
//
//    init () {
////        load our saved data here
//        brewRecipes = []
//    }
//
//    func contains (_ brew: Water) -> Bool {
//        brewRecipes.contains(brew.id)
//    }
//
//    func add(_ brew: Water) {
//        objectWillChange.send()
//        brewRecipes.insert(brew.id)
//        save()
//    }
//
//    func remove(_ brew: Water) {
//        objectWillChange.send()
//        brewRecipes.remove(brew.id)
//        save()
//    }
//
//    func save () {
//
//    }
//}
