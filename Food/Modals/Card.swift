//
//  Card.swift
//  Food
//
//  Created by Groot on 12/06/23.
//

import Foundation


struct Card : Identifiable {
    var id : Int
    var image : String
    var title : String
    var descrip : String
    var stars : Int
    var price = "Rs 379.00"
    var expand : Bool
}

var TrendingCard = [
    Card(id: 0, image: "susi", title: "Crispy Chicken Sandwich", descrip: "chines",stars: 5, expand: false),
    Card(id: 1, image: "kottu", title: "Kottu", descrip: "Hot kottu",stars: 3, expand: false),
    Card(id: 2, image: "french", title: "French fries", descrip: "Best Seller",stars: 4, expand: false),
    Card(id: 3, image: "ko2", title: " Chicken kottu ", descrip: "Srilankan Kottu",stars: 5, expand: false),
    Card(id: 4, image: "bas", title: "Chicken Briyani", descrip: "Indian",stars: 3, expand: false),
    Card(id: 5, image: "maxresdefault3", title: "Fruit Salad", descrip: "fresh ",stars: 1, expand: false),
]

var FoodTypes = ["Pizza","Drinks","Tacos","Burger","Fries","Top"]
