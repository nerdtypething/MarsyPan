//
//  RoverCamsViewController.swift
//  MarsyPan
//
//  Created by Ruben Hansen-Rojas on 12/29/21.
//

import Foundation
import UIKit

class RoverCamsViewController: UIViewController, UITableViewDataSource {
    
    // these three cams are the common ones among the three rovers
    // (https://api.nasa.gov/index.html) for the Mars Rover Photos
    // API.
    private let _cams = [RoverCam(name: "Front Hazard Avoidance"),
                         RoverCam(name: "Rear Hazard Avoidance"),
                         RoverCam(name: "Navigation Camera")]
    
    @IBOutlet var marsSolLabel: UILabel!
    @IBOutlet var solInputTextField: UITextField!
    @IBOutlet var camsTableView: UITableView!
    
    static func make(_ rover: Rover) -> RoverCamsViewController {
        let vc = Bundle.main.loadNibNamed("RoverCamsViewController", owner: self, options: nil)![0] as! RoverCamsViewController
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.camsTableView.register(UINib(nibName: "RoverCamTableViewCell", bundle: nil), forCellReuseIdentifier: "RoverCamTableViewCell")
        self.camsTableView.dataSource = self
        self.setContentAndStyle()
    }
    
    private func setContentAndStyle() {
        self.title = "ROVER_NAME Cameras"
        self.marsSolLabel.text = "Mars Sol:"
        self.solInputTextField.placeholder = "Mars Sol for desired photos"
    }

    // MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self._cams.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: UITableViewCell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        if (self._cams.count > indexPath.row) {
            if let camCell = tableView.dequeueReusableCell(withIdentifier: "RoverCamTableViewCell") as? RoverCamTableViewCell {
                camCell.bind(_cams[indexPath.row])
                cell = camCell
            }
        }
        
        return cell
    }
}
