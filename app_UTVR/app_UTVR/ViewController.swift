//
//  ViewController.swift
//  app_UTVR
//
//  Created by Yang Bo on 2017/10/14.
//  Copyright © 2017年 UTVR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var About: UIButton!
    
    @IBOutlet weak var Events: UIButton!
    
    @IBOutlet weak var AR: UIButton!
    
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
                //AboutのボタンのUI設定
        About.backgroundColor = UIColor(red: 51/255, green: 153/255, blue: 1.0, alpha: 1)
 // 背景色
        
        About.layer.borderWidth = 1.0 // 枠線の幅
        
        About.layer.borderColor = UIColor(red: 51/255, green: 102/255, blue: 1.0, alpha: 0.5).cgColor // 枠線の色
        About.layer.cornerRadius = 10.0 // 角丸のサイズ
        
        About.setTitleColor(UIColor.white,for: UIControlState.normal) // タイトルの色
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: "NavigationBarHome"), for: .topAttached, barMetrics: .default) //navigation bar の背景画像の指定
        
        //EventsのボタンのUI設定
        Events.layer.cornerRadius = 10.0 // 角丸のサイズ
        
        Events.backgroundColor = UIColor(red: 153/255, green: 51/255, blue: 0, alpha: 1) // 背景色
        
        Events.setTitleColor(UIColor.white,for: UIControlState.normal) // タイトルの色
        
        //ARのボタンのUI設定
        AR.layer.cornerRadius = 10.0 // 角丸のサイズ
        
        AR.backgroundColor = UIColor(red: 51/255, green: 204/255, blue: 153/255, alpha: 1) // 背景色
        
        AR.setTitleColor(UIColor.white,for: UIControlState.normal) // タイトルの色
        
    }

    //ここからTimer
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.update), userInfo: nil, repeats: true)
        timer.fire()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        timer.invalidate()
    }
    
    func update(tm: Timer) {
        // do something
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: "NavigationBarHome"), for: .topAttached, barMetrics: .default) //navigation bar の背景画像の指定
    }
    //ここまでTimer
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

