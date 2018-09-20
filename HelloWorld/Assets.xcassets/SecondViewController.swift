//
//  SecondViewController.swift
//  Octophone
//
//  Created by Jolene Bernagene/Amara Gordon on 9/20/18.
//  Copyright © 2018 Jolene/Amara. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    //MARK:Properties
    
    @IBOutlet weak var swimmingLabel: UILabel!
    
    @IBOutlet weak var swimmingImageView: UIImageView!
    
    @IBAction func linkbutton(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"https://www.youtube.com/watch?v=MESi-bQv--U ")! as URL, options: [:], completionHandler: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
