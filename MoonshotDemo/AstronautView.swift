//
//  AstronautView.swift
//  MoonshotDemo
//
//  Created by Minseok Choi on 6/26/23.
//

import SwiftUI

struct AstronautView: View {
    
    let astronaut : Astronaut
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(astronaut.name)
                    .font(.title.bold())
                    .padding()
                
                Image(astronaut.id)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Capsule())
                    .overlay(
                        Capsule()
                            .strokeBorder(.white, lineWidth: 1)
                    )
                Text("Description :")
                    .font(.title2)
                    .padding()
                
                Text(astronaut.description)
                    .padding()
                    .preferredColorScheme(.dark)
            }
        }
        .background(.darkBackground)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AstronautView_Previews: PreviewProvider {
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        AstronautView(astronaut: astronauts["armstrong"]!)
    }
}
