//
//  ContentView.swift
//  studlife
//
//  Created by Aidan Kelley on 11/14/19.
//  Copyright © 2019 Aidan Kelley. All rights reserved.
//

import SwiftUI
import MobileCoreServices

struct ContentView: View {
  @EnvironmentObject var viewModel: ContentViewModel
//        let imagePicker = UIImagePickerController()
//        imagePicker.delegate = self
//        imagePicker.sourceType = .photoLibrary
//        imagePicker.mediaTypes = [kUTTypeImage as String]
//        self.present(imagePicker, animated: true)
  @State var showingDetail = false
  
  var body: some View {
    NavigationView {
      VStack {
        NavigationLink(destination: ImagePickerViewController()) {
          Text("Choose From Library")
        }
      }
    }
  }
  
  
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      return ContentView().environmentObject(ContentViewModel())
    }
}
#endif
