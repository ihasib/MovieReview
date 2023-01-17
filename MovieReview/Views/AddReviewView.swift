//
//  AddReviewView.swift
//  MovieReview
//
//  Created by Hasibur Rahman on 17/1/23.
//

import SwiftUI

struct AddReviewView: View {
    @State var review = ""
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter Title", text: $review)
                Button("Save") {
                    print("Save button tapped")
                }
                Spacer()
            }
            .navigationTitle("Add Review")
            .padding()
        }
    }
}

struct AddReviewView_Previews: PreviewProvider {
    static var previews: some View {
        AddReviewView()
    }
}
