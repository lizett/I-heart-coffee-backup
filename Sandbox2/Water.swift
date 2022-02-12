//
//  Water.swift
//  Sandbox2
//
//  Created by Susan Tovar on 2/6/22.
//

import SwiftUI

struct Water: View {
    //    uncomment out favorite below when code works
    //    @EnvironmentObject var favorites: Favorites
    
    @State var brewModel: BrewModel
    @State var waterAmount: Int = 1
    @State var grindTbsp: Double = 0.0
    //    Try below state var, update computeGrinds func
    @State var grindsSelection = "tbsp"
    //
    //    @State var grindCalc = computeGrinds
    //    list var to store calc options as strings
    var grindOptions = ["tbsp", "grams"]
    
    
    func computeGrinds () -> Double {
        
        switch brewModel {
        case .frenchPress, .chemex:
            //            grindsSelection == "tbsp" ? (Double((17 * waterAmount))/15)
            //            grindSelection == "grams" ? (Double(15 * waterAmount))
            return (Double((17 * waterAmount))/15)
        case .drip:
            return Double(((30 * waterAmount)/15))
        case .mokaPot:
            return Double(((18 * waterAmount)/15))
        case .aeroPress:
            return Double(((15 * waterAmount)/15))
        default:
            return Double(((15 * waterAmount)/15))
        }
    }
    var body: some View {
        VStack (spacing: 5) {
            Spacer()
            HStack {
                Section {
                    Text("").padding(20)
                    Text("How many cups do you want to brew?")
                    Picker("", selection: $waterAmount) {
                        ForEach(1...15, id: \.self){
                            Text("\($0)")
                        }
                    }
                    Spacer()
                }
                
            }
            
            //            image conditionals below
            if (brewModel == .frenchPress) {
                Image("FrenchPress")
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            } else if brewModel == .chemex {
                Image("Chemex")
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            } else if brewModel == .aeroPress {
                Image("AeroPress")
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            } else if brewModel == .mokaPot {
                Image("MokaPot")
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            } else if brewModel == .drip {
                Image("Drip")
                //                          .clipShape(RoundedRectangle(cornerRadius: 30))
                    .resizable()
                    .scaledToFit()
                //                          .padding(30)
                //                          .cornerRadius(7) // Inner corner radius
                    .padding(5) // Width of the border
                    .background(Color.primary) // Color of the border
                    .cornerRadius(10) // Outer corner radius
            }
            
            let formatted = String(format: "%.2f", computeGrinds())
            HStack {
                Text("You will need:  **\(formatted)**")
                    Picker("Select Grinds Units: ", selection: $grindsSelection, content: {
                    ForEach(grindOptions, id: \.self) {
                        Text($0)
                    }
                })
                Text("of coffee grinds")
            }
            Spacer()
            //                .onChange(of: grindsSelection) { _ in    grindCalc(Water)  }
            
        }
    }
}
struct Water_Previews: PreviewProvider {
    static var previews: some View {
        Water(brewModel: .drip)
    }
}

//1 == Add below block under last spacer in struct
//            Button(favorites.contains(brew) ? "Remove from Favorites" : "Add to Favorites") {
//            if favorites.contains(brew) {
//                favorites.remove(brew)
//            } else {
//                favorites.add(brew)
//            }
//        }
//            .buttonStyle(.borderedProminent)
//            .padding()
//2 == add below in preview struct under Water
//            .environmentObject(Favorites())

