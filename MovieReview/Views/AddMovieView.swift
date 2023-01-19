//
//  AddMovieView.swift
//  MovieReview
//
//  Created by S. M. Hasibur Rahman on 12/1/23.
//

import SwiftUI

struct AddMovieView: View {
    @State var addMovieVM = AddMovieViewModel()
    @State private var movieName = ""
    @State private var movieDirector = ""
    @State private var date = Date.now
    var body: some View {
        VStack {
            TextField("Enter Name", text: $addMovieVM.title)
            TextField("Enter Director", text: $addMovieVM.director)
            HStack {
                Text("Rating")
                Spacer()
                ForEach(1..<6) { _ in
                    Image(systemName: "star")
                }
            }
            HStack {
//                Text("Release Date")
//                Spacer()
                DatePicker("Date", selection: $date)
            }
            Button("Save") {
                print("dave clicked")
            }
            Spacer()
        }
        .padding()
    }
}

struct AddMovieView_Previews: PreviewProvider {
    static var previews: some View {
        AddMovieView()
    }
}
