//
//  PostTableViewCell.swift
//  InstagramPDP
//
//  Created by Mahmudov Asrbek Ulug'bek o'g'li on 2/12/21.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet var profileImage: UIImageView!
    @IBOutlet var fullname: UILabel!
    @IBOutlet var postImage1: UIImageView!
    @IBOutlet var postImage2: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
