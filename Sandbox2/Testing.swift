//
//  Testing.swift

//  Sandbox2
//
//  Created by Susan Tovar on 2/11/22.
//

import SwiftUI

struct Testing: View {
//    height state being watched bc it's input variable
    @State var height = ""
//    heightCms watched for change to change calculation 
    @State var grindsTbsp: Double = 0.0
    
//    list variable to store string options for drop down 
    var grindOptions = ["tbsp", "grams"]
    
//    also state to watch for drop down of selection
    @State private var grindSelection = "tbsp"
    
    func calculate() {
        grindsTbsp = grindSelection == "tbsp" ? (Double(height) ?? 0.0) : 15 * (Double(height) ?? 0.0)
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("You need:")
                    .font(.title)
                    .foregroundColor(.black)
                
                Spacer()
                
                TextField("amount of grinds", text: $height)
                    .frame(width: 150, height: 50)
                    .onChange(of: height) { _ in   calculate()   }
                
                Picker("Select Height Units: ", selection: $grindSelection, content: {
                    ForEach(grindOptions, id: \.self) {
                        Text($0)
                    }
                })
                    .onChange(of: grindSelection) { _ in    calculate()  }
                
                Spacer()
            }
            
            Text("You selected: \(grindSelection)")
            
            Text("Grinds in tbsp: \(grindsTbsp)")
            
        }.padding()
        
    }
    
}

struct Testing_Previews: PreviewProvider {
    static var previews: some View {
        Testing()
    }
}


