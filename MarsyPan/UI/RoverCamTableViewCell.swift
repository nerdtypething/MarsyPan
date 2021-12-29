//
//  RoverCamTableViewCell.swift
//  MarsyPan
//
//  Created by Ruben Hansen-Rojas on 12/29/21.
//

import Foundation
import UIKit

class RoverCamTableViewCell: UITableViewCell {
    
    @IBOutlet var contentContainerView: UIView!
    @IBOutlet var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setContentAndStyle()
    }
    
    func bind(_ cam: RoverCam?) {
        guard let cam = cam else {
            return
        }
        
        self.nameLabel.text = cam.name
    }
    
    private func setContentAndStyle() {
        self.contentContainerView.layer.cornerRadius = 8.0
        self.contentContainerView.clipsToBounds = true
        self.contentContainerView.layer.masksToBounds = false
        self.contentContainerView.setDropShadow()
        self.contentView.layer.cornerRadius = 8.0
        self.selectionStyle = .none
    }
}
