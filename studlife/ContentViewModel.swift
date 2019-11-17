//
//  ContentViewModel.swift
//  studlife
//
//  Created by Aidan Kelley on 11/16/19.
//  Copyright © 2019 Aidan Kelley. All rights reserved.
//

import Foundation
import UIKit

class ContentViewModel: NSObject, ObservableObject {
  var currentPickerVC: ImagePickerViewController?
}

extension ContentViewModel: UIImagePickerControllerDelegate {
  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
    if currentPickerVC != nil {
      currentPickerVC!.dismiss()
    }
    print("Hey!")
  }
}

extension ContentViewModel: UINavigationControllerDelegate {

}
