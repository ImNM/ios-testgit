//
//  PostData.swift
//  H4XOR News
//
//  Created by 이찬진 on 2021/05/13.
//

import Foundation

struct Results : Decodable {
    let hits : [Post]
}

struct Post : Decodable, Identifiable {
    var id : String {
        return objectID
    }
    let objectID : String
    let points : Int
    let title : String
    let url : String?
}
