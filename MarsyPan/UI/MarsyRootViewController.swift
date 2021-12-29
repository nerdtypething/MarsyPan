//
//  MarsyRootViewController.swift
//  MarsyPan
//
//  Created by Ruben Hansen-Rojas on 12/29/21.
//

import UIKit

class MarsyRootViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    private let _rovers = [Rover(imageName: "curiosity", name: "Curiosity"),
                           Rover(imageName: "opportunity", name: "Opportunity"),
                           Rover(imageName: "spirit", name: "Spirit")]
    
    @IBOutlet var roversTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.roversTableView.register(UINib(nibName: "RoverTableViewCell", bundle: nil), forCellReuseIdentifier: "RoverTableViewCell")
        self.roversTableView.dataSource = self
        self.roversTableView.delegate = self
        self.title = "MarzyPan"
    }
    
    // MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return _rovers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: UITableViewCell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        if (self._rovers.count > indexPath.row) {
            if let roverCell = tableView.dequeueReusableCell(withIdentifier: "RoverTableViewCell") as? RoverTableViewCell {
                roverCell.bind(self._rovers[indexPath.row])
                cell = roverCell
            }
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (self._rovers.count > indexPath.row) {
            let roverCamVc = RoverCamsViewController.make(self._rovers[indexPath.row])
            self.navigationController?.pushViewController(roverCamVc, animated: true)
        }
    }
}

