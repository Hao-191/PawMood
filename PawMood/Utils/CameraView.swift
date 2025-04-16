//
//  CameraView.swift
//  PawMood
//
//  Created by WPH on 2025/4/10.
//

import SwiftUI
import AVFoundation

struct CameraView: UIViewRepresentable {
    class CameraPreviewView: UIView {
        override class var layerClass: AnyClass {
            AVCaptureVideoPreviewLayer.self
        }

        var previewLayer: AVCaptureVideoPreviewLayer {
            return layer as! AVCaptureVideoPreviewLayer
        }
    }

    func makeUIView(context: Context) -> CameraPreviewView {
        let view = CameraPreviewView()

        // Configure session
        let session = AVCaptureSession()
        session.sessionPreset = .photo

        // Camera input
        if let device = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .back),
           let input = try? AVCaptureDeviceInput(device: device),
           session.canAddInput(input) {
            session.addInput(input)
        }

        // Preview layer
        view.previewLayer.session = session
        view.previewLayer.videoGravity = .resizeAspectFill

        // Start the session
        session.startRunning()

        return view
    }

    func updateUIView(_ uiView: CameraPreviewView, context: Context) {}
}
