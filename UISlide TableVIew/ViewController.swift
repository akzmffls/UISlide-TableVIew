//
//  ViewController.swift
//  UISlide TableVIew
//
//  Created by D7703_14 on 2018. 5. 15..
//  Copyright © 2018년 Personal Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.dataSource = self
        myTableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func SliderMoved(_ sender: Any) {
        
        let val = Int(mySlider.value)
        print(val)
        print("슬라이드 움직임")
        myLabel.text = String(val)
    }
    
    //필수적인 dalegate 함수 구현
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            let identifier = "RE"
            let cell = myTableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
            cell.textLabel?.text = String(Int(mySlider.value) + indexPath.row)
            return cell
    }
    
}



