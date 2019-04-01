//
//  ViewController.swift
//  LearnEnglish
//
//  Created by JIHU on 2019/3/26.
//  Copyright © 2019 JIHU. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tableView = UITableView.init(frame: self.view.bounds, style: UITableView.Style.grouped)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(tableView)
        
        let long = UILongPressGestureRecognizer.init(target: self, action:  #selector(pinchGesAction(_:)))
        tableView.addGestureRecognizer(long)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = ["冒泡排序", "快速排序","信号量"][indexPath.row]
        return cell!
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 2 {
            self.navigationController?.pushViewController(semaphoreViewController(), animated: true)
        }else {
            let vc = BubblingViewController()
            vc.index = indexPath.row
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @objc func pinchGesAction(_ ges : UILongPressGestureRecognizer) {
        
    }

    
}

