//
//  ContentView.swift
//  Sandbox2
//
//  Created by Susan Tovar on 2/1/22.
//

import SwiftUI

struct ContentView: View {
//    uncomment out var favorites when fav code is up and running
//    @StateObject var favorites = Favorites()
    var body: some View {
        
        NavigationView {
            VStack {
                Spacer()
                    Image("sun")
                    .resizable()
                    .scaledToFit()
                    
//                Text("I ❤️ Coffee")
//                    .bold()
//                    .padding()
                Spacer()
                NavigationLink(destination: BrewMethods()) {
                    Text("Brew the perfect cup of coffee!")
                        .bold()
                        .padding()
                }
                NavigationLink(destination: Testing()) {
                    Text("Testing!")
                        .bold()
                        .padding()
                    
                }
                // substituting button and action with "Clicked" for now
                Button(action: {
                    print("Clicked")
                }, label: {
                    Text("Sign In/Sign Up")
                        .bold()
                })
                Spacer()
            
            }
            .background(Color("Custom Color"))
        }
    }
//        un-comment below line when favorites code is up and working
//        .envornmentObject(favorites)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
