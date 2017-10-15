//
//  EventViewController.swift
//  app_UTVR
//
//  Created by Yang Bo on 2017/10/15.
//  Copyright © 2017年 UTVR. All rights reserved.
//

import UIKit

class EventViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //navigation bar の背景画像の指定
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: "NavigationBarEvent"), for: .topAttached, barMetrics: .default)
        
        //NavigationBarの色の変化
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)]
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
