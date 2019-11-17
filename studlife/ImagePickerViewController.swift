//
//  ImagePickerViewController.swift
//  studlife
//
//  Created by Aidan Kelley on 11/17/19.
//  Copyright © 2019 Aidan Kelley. All rights reserved.
//

import Foundation
import SwiftUI
import UIKit
import MobileCoreServices

struct ImagePickerViewController: UIViewControllerRepresentable {
  
  @EnvironmentObject var viewModel: ContentViewModel
  @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
  
//  @Binding var sourceType: UIImagePickerController.SourceType
  
  func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePickerViewController>) -> UIImagePickerController {
    
    self.viewModel.currentPickerVC = self
    
    let imagePicker = UIImagePickerController()
    imagePicker.delegate = self.viewModel
    imagePicker.sourceType = .photoLibrary
    imagePicker.mediaTypes = [kUTTypeImage as String]
    
    return imagePicker
  }
  
  func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePickerViewController>) {
    
  }
  
  mutating func dismiss() {
    self.presentationMode.wrappedValue.dismiss()
  }
}
