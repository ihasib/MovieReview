//
//  MovieDetailView.swift
//  MovieReview
//
//  Created by S. M. Hasibur Rahman on 12/1/23.
//

import SwiftUI

struct MovieDetailView: View {
    var body: some View {
        VStack {
            NavigationView {
                List(1..<3) {index in
                    NavigationLink(destination: Text(")")) {
                        Text( (index == 1) ? "Reviews" : "Actors")
                    }
                }
                .navigationTitle("Movie Binded Name")
            }
            Spacer()
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView()
    }
}
