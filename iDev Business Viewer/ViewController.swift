//
//  ViewController.swift
//  iDev Business Viewer
//
//  Created by Siraj Zaneer on 12/25/16.
//  Copyright © 2016 Siraj Zaneer. All rights reserved.
//

import UIKit
import AFNetworking

class ViewController: UIViewController {

    
    var business: Business?
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        guard let businessInfo = business else {
            return
        }
        
        
        nameLabel.text = businessInfo.name
        phoneLabel.text = businessInfo.phoneNumber
        priceLabel.text = businessInfo.price
        locationLabel.text = businessInfo.location
        
        let imageURL = URL(string: businessInfo.imageURL)
        
        imageView.setImageWith(imageURL!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    

}

