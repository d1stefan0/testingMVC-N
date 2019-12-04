//
//  CommentCell.swift
//  testingMVC-N
//
//  Created by user on 12/4/19.
//  Copyright © 2019 DiStefanoTeam. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textVIew: UITextView!
    
    func configure(with comment: Comment) {
        label.text = comment.name
        textVIew.text = comment.body
    }
}
