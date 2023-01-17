//
//  ActorsView.swift
//  MovieReview
//
//  Created by Hasibur Rahman on 17/1/23.
//

import SwiftUI

struct ActorsView: View {
    @State var movie = "Movie Binded Name"
    @State var isPresented = false
    var body: some View {
        VStack {
            Text("Actors")
            List(1..<3) { index in
                NavigationLink(destination: Text("d")) {
                    Text("\(index)")
                }
            }
        }
        .navigationTitle("Movie Binded Name")
        .navigationBarItems(trailing: Button("+") {
            isPresented.toggle()
        })
        .sheet(isPresented: $isPresented) {
            Text("d")
        }
    }
}

struct ActorsView_Previews: PreviewProvider {
    static var previews: some View {
        ActorsView()
    }
}
