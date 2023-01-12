//
//  ContentView.swift
//  MovieReview
//
//  Created by S. M. Hasibur Rahman on 11/1/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented = false
    var body: some View {
        NavigationView {
            List(1..<5) {_ in
//                ForEach(1...5,)
                NavigationLink(destination: MovieDetailView()/*Text("2nd screen")*/) {
//                    Text("Hello, world!")
                    MovieCell()
                }
            }
            .navigationTitle("Movies")
            .navigationBarItems(trailing: Button("Add Movie") {
                print("Hello")
                isPresented.toggle()
            })
        }
        .sheet(isPresented: $isPresented, onDismiss: nil) {
            AddMovieView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
