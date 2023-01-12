//
//  MovieCell.swift
//  MovieReview
//
//  Created by S. M. Hasibur Rahman on 12/1/23.
//

import SwiftUI

struct MovieCell: View {
    var body: some View {
        HStack {
            VStack {
                Text("Movie Name")
                Text("Movie Director")
            }
            Spacer()
            HStack {
                Image(systemName: "star")
                Text("Rating Value")
            }
        }
        .padding()
    }
}

struct MovieCell_Previews: PreviewProvider {
    static var previews: some View {
        MovieCell()
    }
}
