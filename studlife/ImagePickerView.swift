//
//  ImagePickerView.swift
//  studlife
//
//  Created by Aidan Kelley on 11/17/19.
//  Copyright © 2019 Aidan Kelley. All rights reserved.
//

import Foundation
import SwiftUI
import UIKit

struct ImagePickerView: View {
  
  var viewModel: ContentViewModel
  var sourceType: UIImagePickerController.SourceType
  
  var body: some View {
    ImagePickerViewController(viewModel: self.viewModel, sourceType: self.sourceType)
  }
}
