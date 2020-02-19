//
//  JitsiViewController.swift
//  ProyectJitsi
//
//  Created by DEV-IOS on 18/02/2020.
//  Copyright © 2020 DEV-IOS. All rights reserved.
//

import UIKit
import JitsiMeet

class JitsiViewController: UIViewController {
    
    @IBOutlet weak var jitsiMeetView: JitsiMeetView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let conferences = JitsiMeetConferenceOptions.fromBuilder({constructor in
            constructor.serverURL = URL(string: "https://remote.theloop360.com/")
            constructor.room = "PruebaApp"
            constructor.audioOnly = true
        })
        
        jitsiMeetView.join(conferences)
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
