//
//  ReviewView.swift
//  MovieReview
//
//  Created by Hasibur Rahman on 17/1/23.
//

import SwiftUI

struct ReviewView: View {
    @State var isPresented = false
    var body: some View {
        VStack(alignment: .leading) {
            Text("REVIEWS")
            List(1..<3) { _ in
                HStack {
                    Text("Review text")
                    Spacer()
                    Text("\(Date.now.description)")
                }
            }
        }
        .navigationTitle("Movie Binded Name")
        .navigationBarItems(trailing: Button("Add New Review", action: {
            isPresented.toggle()
        }))
        .sheet(isPresented: $isPresented, content: {
            AddReviewView()
        })
    }
}

struct ReviewView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewView()
    }
}
