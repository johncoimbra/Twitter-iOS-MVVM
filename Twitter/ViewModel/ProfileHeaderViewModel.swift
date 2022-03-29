//
//  ProfileHeaderViewModel.swift
//  Twitter
//
//  Created by John Allen Santos Coimbra on 29/03/22.
//

import UIKit

enum ProfileFilterOptions: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var description: String {
        switch self {
            case .tweets: return "Tweets"
            case .replies: return "Tweets e Respostas"
            case .likes: return "Curtidas"
        }
    }
}

struct ProfileHeaderViewModel {
    private let user: User
    
    let usernameText: String
    
    var followersString: NSAttributedString? {
        return attributedText(withValue: 0, text: "followers")
    }
    
    var followingString: NSAttributedString? {
        return attributedText(withValue: 2, text: "following")
    }
    
    var actionButtonTitle: String {
        // Se o usuário for o usuário atual, defina o título do botão para editar o perfil
        // Se não, configure o botão para seguindo/não seguindo
        if user.isCurrentUser {
            return "Editar Perfil"
        } else {
            return "Seguir"
        }

    }
    
    init(user: User) {
        self.user = user
        self.usernameText = "@" + user.userName
    }
    
    fileprivate func attributedText(withValue value: Int, text: String) -> NSAttributedString {
        let attributedTitle = NSMutableAttributedString(string: "\(value)",
                                                        attributes: [.font: UIFont.boldSystemFont(ofSize: 14)])
        attributedTitle.append(NSAttributedString(string: " \(text)",
                                                  attributes: [.font: UIFont.systemFont(ofSize: 14),
                                                               .foregroundColor: UIColor.lightGray]))
        
        return attributedTitle
    }
}
