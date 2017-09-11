//
//  LoginVC.swift
//  testProject
//
//  Created by Saurabh  on 8/25/17.
//  Copyright © 2017 dogma. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfMobile: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    
    @IBAction func clickLogin(_ sender: Any) {
        
        if((tfName.text?.characters.count)!>0 && (tfMobile.text?.characters.count)!>0){
            
            let otp:OtpVC=OtpVC(nibName:"OtpVC",bundle:nil)
            self.navigationController?.pushViewController(otp, animated: true)
        }
        else{
            
            let alert = UIAlertController(title:NSLocalizedString( "Alert!", comment:""), message:NSLocalizedString("Both field are mandotary", comment:"") , preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
