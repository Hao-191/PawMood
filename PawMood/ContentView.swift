//
//  ContentView.swift
//  PawMood
//
//  Created by WPH on 2025/4/3.
//



import SwiftUI

struct ContentView: View {
    
    // this ContentView is just for swiftUI and firebase connect test.
    // the real app view is using the MainTabView.swift
    
    
    @State private var status: String = "Ready to upload"
    let sampleImageURL = 
    "https://firebasestorage.googleapis.com/v0/b/pawmood-7be18.firebasestorage.app/o/sample_dog.jpg?alt=media&token=2f4a0c7b-ec25-4f7a-821c-54487cbd5f39"
    @State private var imageURL: String?
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            if let imageURL = imageURL, let url = URL(string: imageURL) {
                            AsyncImage(url: url) { image in
                                image
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 300)
                                    .cornerRadius(12)
                            } placeholder: {
                                ProgressView()
                            }
                            .padding()
                        }
            Text("PawMood")
            Button("Write to Firestore") {
                FirestoreManager.shared.addMockMoodEntry(imageURL: sampleImageURL) { result in
                    switch result {
                    case .success:
                        print("✅ Mood entry added to Firestore")
                    case .failure(let error):
                        print("❌ Firestore write error: \(error.localizedDescription)")
                    }
                }
            }
            Button("Upload Sample Image") {
                            status = "Uploading..."
                            FirebaseStorageManager.shared.uploadSampleImage { result in
                                DispatchQueue.main.async {
                                    switch result {
                                    case .success(let url):
                                        self.status = "✅ Uploaded to: \(url.absoluteString)"
                                        self.imageURL = url.absoluteString
                                        
                                        // Also save to Firestore
                                        FirestoreManager.shared.addMockMoodEntry(imageURL: url.absoluteString) { firestoreResult in
                                            if case .failure(let error) = firestoreResult {
                                                print("⚠️ Firestore error: \(error)")
                                            }
                                        }
                                    case .failure(let error):
                                        self.status = "❌ Error: \(error.localizedDescription)"
                                    }
                                }
                            }
                        }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
