//
//  ViewController.swift
//  ProyectJitsi
//
//  Created by DEV-IOS on 18/02/2020.
//  Copyright © 2020 DEV-IOS. All rights reserved.
//

import UIKit
import JitsiMeet

class ViewController: UIViewController {
    
    @IBOutlet weak var colorBackground: UIView!
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textFieldRoom: UITextField!
    @IBOutlet weak var btnNewRoom: UIButton!
    @IBOutlet weak var btnGoLive: UIButton!
    @IBOutlet weak var romsTableaView: UITableView!
    
    let rooms:[Room] = []
    
    @IBAction func btnNewRoomAction(_ sender: Any) {
        
    }
    
    @IBAction func btnGoLiveAction(_ sender: Any) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpView()
        
    }
    
    func setUpView(){
        self.delegates()
        colorBackground.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        logoImage.image = UIImage(named: "")
        titleLabel.text = "Crear nuevo Room"
    }
    
    func delegates() {
        romsTableaView.delegate = self
        romsTableaView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = rooms.count
        return section
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "HomeTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TableViewCell else {
            fatalError("La celda no es una instancia de HomeCell")
        }
        return cell
    }
}
