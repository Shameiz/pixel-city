//
//  Constants.swift
//  pixel-city
//
//  Created by Shameiz Rangwala on 2018-04-14.
//  Copyright © 2018 CodeSchool. All rights reserved.
//

import Foundation

let apiKey = "9317c975f0ecf6175b4644ebee0647a9";

typealias CompletionHandler = (_ Success: Bool) -> ()

func flickUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, addNumberofPhotos number:Int)->String{
    let url = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
    return url;
}

