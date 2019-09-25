//
//  ViewController.swift
//  appxyz
//
//  Created by Dante on 2019/9/25.
//  Copyright © 2019 cinderella. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    @IBOutlet weak var xLable: UILabel!
    @IBOutlet weak var yLable: UILabel!
    @IBOutlet weak var zLable: UILabel!
    
    var motionManager:CMMotionManager!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        motionManager=CMMotionManager()
        motionManager.startAccelerometerUpdates(to: .main, withHandler:updateLables)
    

    }
    func updateLables(data:CMAccelerometerData?,error:Error?){
        guard let accelerometerData=data else {return}
        
        let formatter=NumberFormatter()
        formatter.minimumFractionDigits=1
        formatter.maximumFractionDigits=1
        
        let x = formatter.string(for:accelerometerData.acceleration.x)!
        let y = formatter.string(for:accelerometerData.acceleration.y)!
        let z = formatter.string(for:accelerometerData.acceleration.z)!
        
        
        xLable.text="X:\(x)"
        yLable.text="Y:\(y)"
        zLable.text="zz:\(z)"
        
        
    }

}

