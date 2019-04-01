//
//  semaphoreViewController.swift
//  LearnEnglish
//
//  Created by JIHU on 2019/3/27.
//  Copyright © 2019 JIHU. All rights reserved.
//

import UIKit

class semaphoreViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBAction func click(_ sender: Any) {
        
        let semaphoreSignal = DispatchSemaphore(value: 0)
        
        for index in 1...500 {
            DispatchQueue.global().async {
                semaphoreSignal.wait()
                print(Thread.current)
                print("这是第\(index)次执行.\n")
//                semaphoreSignal.signal()
            }
            print("test")
            
        }

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
