//
//  RemoteImage.swift
//  League ESports
//
//  Created by Enzo Han on 1/14/21.
//

import SwiftUI

// This struct lets us call and image and use it later when previewing the user's avatar
struct RemoteImage: View {
    
    @ObservedObject var imageLoader = ImageLoader()
    var placeholder: Image
    
    init(url: String, placeholder:Image =  Image(systemName: "photo")) {
        self.placeholder = placeholder
        imageLoader.getImage(url: url)
    }
    
    var body: some View {
        if let image = self.imageLoader.downloadImage {
            return Image(uiImage: image).resizable()
        }
        return placeholder
    }
}

// Class is used to load images and have a nice preview
class ImageLoader: ObservableObject {
    
    @Published var downloadImage:UIImage?
    
    // Function gets given a url
    func getImage(url:String) {
        // sets the url
        guard let imageURL = URL(string: url) else {
            fatalError("The URL string is invalid")
        }
        // URL Session to obtain image
        URLSession.shared.dataTask(with: imageURL) { data,response,error in
            guard let data = data, error == nil else {
                fatalError("Error when reading image")
            }
            // Sets the variable to the fetched image
            DispatchQueue.main.async {
                self.downloadImage = UIImage(data: data)
            }
        }.resume()
    }
}

struct RemoteImage_Previews: PreviewProvider {
    static var previews: some View {
        RemoteImage(url: "https://cdn.pandascore.co/images/lol/champion/image/3049bbc2c6d6156feb02e615ddd33105.png")
    }
}


