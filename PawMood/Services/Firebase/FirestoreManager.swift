//
//  FirestoreManager.swift
//  PawMood
//
//  Created by WPH on 2025/4/4.
//

import Foundation
import FirebaseFirestore

final class FirestoreManager {
    static let shared = FirestoreManager()
    private init() {}

    private let db = Firestore.firestore()
    
    func addMockMoodEntry(imageURL: String, completion: @escaping (Result<Void, Error>) -> Void) {
        let data: [String: Any] = [
            "imageURL": imageURL,
            "timestamp": Timestamp(date: Date()),
            "mood": "Happy 🐶 (mock)" // optional mock value
        ]

        db.collection("mood_entries").addDocument(data: data) { error in
            if let error = error {
                completion(.failure(error))
            } else {
                completion(.success(()))
            }
        }
    }
}
