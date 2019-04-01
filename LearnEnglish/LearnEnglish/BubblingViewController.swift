//
//  BubblingViewController.swift
//  LearnEnglish
//
//  Created by JIHU on 2019/3/26.
//  Copyright © 2019 JIHU. All rights reserved.
//

import UIKit

class BubblingViewController: UIViewController {
    var index = 0
    

    @IBOutlet weak var textview: UITextView!
    @IBAction func click(_ sender: Any) {
        if self.index == 0 {
            DispatchQueue.global(qos: .userInitiated).async {
                
                var array  = Array(repeating: 0, count: 20)
                
                for index in 0..<20 {
                    array[index] = Int(arc4random_uniform(20)) + 1
                }
                DispatchQueue.main.async {
                    
                    self.textview.text = self.textview.text + "排序前的值" + "\n"
                    
                    self.textview.text = self.textview.text + array.description + "\n"
                }
                for i in 0 ..< array.count {
                    for j in 0 ..< array.count - 1 - i {
                        if array[j] > array[j+1] {
                            let  temp = array[j+1]
                            array[j+1] = array[j]
                            array[j] = temp
                        }
                        
                        sleep(UInt32(1))
                        DispatchQueue.main.async {
                            
                            self.textview.text = self.textview.text + "排序中" + "\n"
                            self.textview.text = self.textview.text + array.description + "\n"
                        }
                        
                    }
                }
                
                
                DispatchQueue.main.async {
                    self.textview.text = self.textview.text + "排序后的值" + "\n"
                    
                    self.textview.text = self.textview.text + array.description + "\n"
                    
                    
                }
            }

        } else if self.index == 1 {
            self.textview.text = self.textview.text + "排序前" + "\n"
            self.textview.text = self.textview.text + numbersArray.description + "\n"

            quicksort(left: 0, right: 5)
            
            self.textview.text = self.textview.text + "排序后" + "\n"
            self.textview.text = self.textview.text + numbersArray.description + "\n"

        }
    }
    
    @IBAction func paixu(_ sender: Any) {
        
    }
    
    
    @IBAction func shuoming(_ sender: Any) {
        
    }
    @IBOutlet weak var shurukuang: UITextField!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
//        var array:[String] = shurukuang.text!.components(separatedBy: "")
        
        
    }

    var numbersArray = [1, 4, 6, 5, 8, 2]

    
    func quicksort(left: Int, right : Int) -> Void {
        
        var i, j, pivot : Int
        
        if left > right {
            return
        }
        
        pivot = numbersArray[left]
        
        i = left
        j = right
        
        while i != j {
            
            while numbersArray[j] >= pivot && i < j {
                j -= 1
            }
            
            while numbersArray[i] <= pivot && i < j {
                i += 1
            }
            
            if i < j {
                numbersArray.swapAt(i, j)
            }
        }
        
        numbersArray[left] = numbersArray[i]
        numbersArray[i] = pivot//把基准值播入中间位置
        
        //二分
        quicksort(left: left, right: i - 1)
        quicksort(left: i + 1, right: right)
    }

}

//通过一层while循环，从数列的左边开始，找到小于基准值的数字，通过别一层while循环，从数列的右边开始，找到大于基准值的数字，交换他们的两个位置，再通过一层while循环，不断重复这一过程，使数列左侧都是小于基准值的数字，数列右侧都是大于基准值的数字，再把基准值插入中间位置。再通过递归的方式，把左数列和右数列传入函数中，重复上面的过程。
