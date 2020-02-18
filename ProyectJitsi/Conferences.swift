//
//  ViewController.swift
//  ProyectJitsi
//
//  Created by DEV-IOS on 17/02/2020.
//  Copyright © 2020 DEV-IOS. All rights reserved.
//

import UIKit
import JitsiMeet

class Conferences: UIViewController {

    @IBOutlet weak var jitsiMeetView: JitsiMeetView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        jitsiMeetView.delegate = self as? JitsiMeetViewDelegate;
        
        let conferences = JitsiMeetConferenceOptions.fromBuilder({constructor in
            constructor.serverURL = URL(string: "https://remote.theloop360.com/")
            constructor.room = "PruebaApp"
            constructor.audioOnly = true
        })
        
        jitsiMeetView.join(conferences)
    }


}

