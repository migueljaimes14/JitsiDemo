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
    
    var rooms:[Room] = [] {
        didSet{
            self.romsTableaView.reloadData()
        }
    }
    
    @IBAction func btnNewRoomAction(_ sender: Any) {
        self.createRoom()
        
    }
    
    @IBAction func btnGoLiveAction(_ sender: Any) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboard()
        self.setUpView()
    }
    
    func createRoom () {
        guard let nameRoom = textFieldRoom.text else { return }
        dismissKeyboard()
        if !nameRoom.isEmpty{
            let room = Room(IDRoom: 1, TitleRoom: nameRoom)
            rooms.append(room)
        }
        else{
            //            TODO - Si la celda esta vacia
        }
    }
    
    func setUpView(){
        self.keyboard()
        self.delegates()
        logoImage.image = UIImage(named: "logo")
        logoImage.layer.cornerRadius = logoImage.frame.size.width/2
        titleLabel.text = "Crear nuevo Room"
        textFieldRoom.roundBlue()
        textFieldRoom.returnKeyType = UIReturnKeyType.done
        btnGoLive.setTitle("Ir al evento", for: .normal)
        btnGoLive.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        btnGoLive.backgroundColor = UIColor.systemBlue
        btnGoLive.layer.cornerRadius = 5
        self.romsTableaView.separatorStyle = .none
    }
    
    func delegates() {
        romsTableaView.delegate = self
        romsTableaView.dataSource = self
        textFieldRoom.delegate = self
    }
    
    func keyboard(){
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = rooms.count
        return section
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TableViewCell else {
            fatalError("La celda no es una instancia de HomeCell")
        }
        cell.nameRoom.text = rooms[indexPath.row].titleRoom
        cell.backgroundColor = UIColor.clear
        return cell
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textFieldRoom.resignFirstResponder()
        self.createRoom()
        return true
    }
    
}



