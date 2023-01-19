//
//  CoreDataManager.swift
//  MovieReview
//
//  Created by S. M. Hasibur Rahman on 18/1/23.
//

import Foundation
import CoreData

struct CoreDataManager {
    let persistentContainer: NSPersistentContainer
    static let shared = CoreDataManager()
    
    private init() {
        persistentContainer = NSPersistentContainer(name: "MovieAppModel")
        persistentContainer.loadPersistentStores() { (description, error) in
            if let error = error {
                print(error.localizedDescription)
            }
        }
    }

    func save() {
        do {
            try persistentContainer.viewContext.save()
        } catch {
            print("Movie saving failed due to \(error.localizedDescription)")
        }
    }
}
