//
//  Business.swift
//  iDev Business Viewer
//
//  Created by Siraj Zaneer on 1/13/17.
//  Copyright © 2017 Siraj Zaneer. All rights reserved.
//

import UIKit
import SwiftyJSON

class Business: NSObject {

    var name: String = ""
    var price: String = ""
    var location: String = ""
    var rating: Double = 0.0
    var distance: Double = 0.0
    var phoneNumber: String = ""
    var type: String = ""
    var imageURL: String = ""
    
    init(json: JSON) {
        name = json["name"].stringValue
        price = json["price"].stringValue
        location = "\(json["location"]["address1"].stringValue), \(json["location"]["city"].stringValue)"
        rating = json["rating"].doubleValue
        distance = json["distance"].doubleValue
        phoneNumber = json["phone"].stringValue
        imageURL = json["image_url"].stringValue
        
        let types = json["categories"].arrayValue
        
        for type in types {
            if (self.type == "") {
                self.type.append(type["alias"].stringValue)
            } else {
                self.type.append(", \(type["alias"].stringValue)")
            }
            print(self.type)
        }
        
    }
    
}

/*
 {
 "id" : "the-temporarium-coffee-and-tea-san-francisco",
 "rating" : 5,
 "is_closed" : false,
 "review_count" : 114,
 "phone" : "+14155470616",
 "categories" : [
 {
 "title" : "Coffee & Tea",
 "alias" : "coffee"
 }
 ],
 "image_url" : "https:\/\/s3-media2.fl.yelpcdn.com\/bphoto\/mqP4uGnER6-6g9l9L9QBWA\/o.jpg",
 "url" : "https:\/\/www.yelp.com\/biz\/the-temporarium-coffee-and-tea-san-francisco?adjust_creative=518053Hp9nttpTmK1rW-ig&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=518053Hp9nttpTmK1rW-ig",
 "price" : "$",
 "location" : {
 "city" : "San Francisco",
 "country" : "US",
 "address1" : "3414 22nd St",
 "zip_code" : "94111",
 "address3" : "",
 "state" : "CA",
 "address2" : ""
 },
 "coordinates" : {
 "longitude" : -122.4235786,
 "latitude" : 37.7552528
 },
 "distance" : 1412.2572302276,
 "name" : "The Temporarium Coffee & Tea"
 }
 */
