//
//  FirebaseStorageManager.swift
//  PawMood
//
//  Created by WPH on 2025/4/4.
//

import FirebaseStorage
import UIKit

final class FirebaseStorageManager {
    static let shared = FirebaseStorageManager()
    private init() {}

    func uploadSampleImage(completion: @escaping (Result<URL, Error>) -> Void) {
        guard let image = UIImage(named: "sample_dog"),
              let data = image.jpegData(compressionQuality: 0.8) else {
            completion(.failure(NSError(domain: "ImageError", code: 0, userInfo: [NSLocalizedDescriptionKey: "Failed to load image."])))
            return
        }

        let storageRef = Storage.storage().reference()
        let fileRef = storageRef.child("mood_images/\(UUID().uuidString).jpg")

        fileRef.putData(data, metadata: nil) { metadata, error in
            if let error = error {
                completion(.failure(error))
                return
            }

            fileRef.downloadURL { url, error in
                if let error = error {
                    completion(.failure(error))
                } else if let url = url {
                    completion(.success(url))
                }
            }
            
        }
    }
}
