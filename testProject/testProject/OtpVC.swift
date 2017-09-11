//
//  OtpVC.swift
//  testProject
//
//  Created by Saurabh  on 8/25/17.
//  Copyright © 2017 dogma. All rights reserved.
//

import UIKit

class OtpVC: UIViewController,UITextFieldDelegate {

    
    @IBOutlet weak var tf1: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tf1.delegate=self
       
        // Do any additional setup after loading the view.
    }
    @IBAction func clickSubmit(_ sender: Any) {
        
        if((tf1.text?.characters.count)!>0 && tf1.text=="0000"){
            
            let main:MainVC=MainVC(nibName:"MainVC",bundle:nil)
            self.navigationController?.pushViewController(main, animated: true)
        }
        else{
            
            let alert = UIAlertController(title:NSLocalizedString( "Alert!", comment:""), message:NSLocalizedString("Invalid input", comment:"") , preferredStyle: UIAlertControllerStyle.alert)
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
