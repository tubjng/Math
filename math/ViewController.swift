//
//  ViewController.swift
//  math
//
//  Created by tubjng on 7/14/16.
//  Copyright © 2016 tubjng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl_p1: UILabel!
    
    
    @IBOutlet weak var lbl_p2: UILabel!
    
    @IBOutlet weak var btn_b1: UIButton!
   
    @IBOutlet weak var btn_b2: UIButton!
    
    @IBOutlet weak var btn_b3: UIButton!
    
    @IBOutlet weak var lbl_right: UILabel!
    
    @IBOutlet weak var lbl_wrong: UILabel!
    
    @IBOutlet weak var dau: UILabel!
    
    var result: Int = 0
    var right: Int =  0
    var wrong: Int = 0
    var ketqua: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            SetRandom()
    }
    @IBAction func btn_action(_ sender: AnyObject) {
        compare(sender.currentTitle!!)
       SetRandom()
        
    }
    func pheptinh()
    {
        let random: Int = Int(arc4random_uniform(3))
        
        if (random == 0) {
            dau.text = String (" + ")
            ketqua = sum(Int(lbl_p1.text!)!, p2: Int(lbl_p2.text!)!)
        }
        else if (random == 1) {
             dau.text = String (" - ")
            ketqua = subtraction(Int(lbl_p1.text!)!, p2: Int(lbl_p2.text!)!)
        }
        else
        {
             dau.text = String (" * ")
            ketqua = multiplication(Int(lbl_p1.text!)!, p2: Int(lbl_p2.text!)!)
        }
        
        
    }
    func kotrung() {
        
    }
    
    func SetRandom() {
        let random1: Int = Int(arc4random_uniform(3))+1
        
        let random2: Int = Int(arc4random_uniform(3))+1
     print("\(random1)  \(random2)")
        
        lbl_p1.text = String(random1)
        
        lbl_p2.text = String(random2)
        SetResult(random1, randomB: random2)
    }
    
    func SetResult(_ randomA: Int,randomB: Int) {
        pheptinh()
        var subRandomA =  randomA
        var subRandomB =  randomB
        while (ketqua == subRandomA || ketqua == subRandomB || subRandomA == subRandomB)
        {
           subRandomA =  Int(arc4random_uniform(5))+1
            subRandomB =  Int(arc4random_uniform(5))+1
        }
        
        
        let random: Int = Int(arc4random_uniform(3))
        if (random == 0 )
        {
        btn_b1.setTitle(String(subRandomA), for:UIControlState())
        btn_b2.setTitle(String(subRandomB), for: UIControlState())
        btn_b3.setTitle(String(ketqua), for: UIControlState())
        }
        else if(random == 1 )
        {
        btn_b1.setTitle(String(ketqua), for: UIControlState())
        btn_b2.setTitle(String(subRandomA), for: UIControlState())
        btn_b3.setTitle(String(subRandomB), for: UIControlState())
        }
        else
        {
        btn_b1.setTitle(String(subRandomA), for: UIControlState())
        btn_b2.setTitle(String(ketqua), for: UIControlState())
        btn_b3.setTitle(String(subRandomB), for: UIControlState())
        }
    }
    
    func sum(_ p1: Int, p2: Int) -> Int {
        result = p1 + p2
        return p1 + p2
    }
    func multiplication(_ p1: Int, p2: Int) -> Int {

        result = p1 * p2
        return p1 * p2
    }
    func subtraction(_ p1: Int, p2: Int) -> Int {
        
        result = p1 - p2
        return p1 - p2
    }
    
    func compare( _ count : String)  {
        if(result == Int(count))
        {
            right = right + 1
            lbl_right.text=String("\(right)")
        }
        else
        {
            wrong = wrong + 1
            lbl_wrong.text=String("\(wrong)")
        }
    }
    
    



}

