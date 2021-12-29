//
//  RoverTableViewCell.swift
//  MarsyPan
//
//  Created by Ruben Hansen-Rojas on 12/29/21.
//

import Foundation
import UIKit

class RoverTableViewCell: UITableViewCell {
    
    @IBOutlet var contentContainerView: UIView!
    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setContentAndStyle()
    }
    func bind(_ rover: Rover?) {
        guard let rover = rover else {
            return
        }
        
        self.profileImageView.image = UIImage(named: rover.imageName)
        self.nameLabel.text = rover.name
    }
    
    private func setContentAndStyle() {
        self.profileImageView.layer.borderWidth = 1
        self.profileImageView.layer.masksToBounds = false
        self.profileImageView.layer.borderColor = UIColor.white.cgColor
        self.profileImageView.layer.cornerRadius = 4.0
        self.profileImageView.clipsToBounds = true
        
        self.contentContainerView.layer.cornerRadius = 8.0
        self.contentContainerView.clipsToBounds = true
        self.contentContainerView.layer.masksToBounds = false
        self.contentContainerView.setDropShadow()
        self.contentView.layer.cornerRadius = 8.0
        self.selectionStyle = .none
    }
}
