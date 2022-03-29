//
//  User.swift
//  Twitter
//
//  Created by John Allen Santos Coimbra on 21/02/22.
//

import Foundation
import Firebase

struct User {
    let fullName: String
    let email: String
    let userName: String
    var profileImageUrl: URL?
    let uid: String
    
    var isCurrentUser: Bool { return Auth.auth().currentUser?.uid == uid }
    
    init(uid: String, dictionary: [String: AnyObject]) {
        self.uid = uid
        self.fullName = dictionary["fullname"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
        self.userName = dictionary["username"] as? String ?? ""
        
        if let profileImageUrlString = dictionary["profileImageUrl"] as? String {
            guard let url = URL(string: profileImageUrlString) else {return}
            self.profileImageUrl = url
        }
    }
}
