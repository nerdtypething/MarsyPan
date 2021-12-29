//
//  RoverCamsViewController.swift
//  MarsyPan
//
//  Created by Ruben Hansen-Rojas on 12/29/21.
//

import Foundation
import UIKit

// TODO:
// 1. When a user taps on the specific camera, the app should
//    display the first photo for the specific rover, the specific camera,
//    on the specified Mars Sol date. This photo should be displayed in its own
//    view controller.

class RoverCamsViewController: UIViewController, UITableViewDataSource {
    
    // these three cams are the common ones among the three rovers
    // (https://api.nasa.gov/index.html) for the Mars Rover Photos
    // API.
    private let _cams = [RoverCam(name: "Front Hazard Avoidance"),
                         RoverCam(name: "Rear Hazard Avoidance"),
                         RoverCam(name: "Navigation Camera")]
    
    @IBOutlet var marsSolLabel: UILabel!
    @IBOutlet var solInputTextField: UITextField!
    @IBOutlet var roverCamsLabel: UILabel!
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
        
        // TODO: Set the title to the name of the rover
        self.title = "ROVER_NAME"
        
        self.marsSolLabel.text = "Mars Sol:"
        self.solInputTextField.placeholder = "Mars Sol for desired photos"
        self.roverCamsLabel.text = "Available Cameras:"
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
