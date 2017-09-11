//
//  MainVC.swift
//  testProject
//
//  Created by Saurabh  on 8/25/17.
//  Copyright © 2017 dogma. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func clickScan(_ sender: Any) {
        
        let main:ScanVC=ScanVC(nibName:"ScanVC",bundle:nil)
        self.navigationController?.pushViewController(main, animated: true)
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
