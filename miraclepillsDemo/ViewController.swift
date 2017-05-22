//
//  ViewController.swift
//  miraclepillsDemo
//
//  Created by Ahmed Samir AbdElMaaboud on 5/21/17.
//  Copyright © 2017 Ahmed Samir AbdElMaaboud. All rights reserved.
//

import UIKit


//UIViewController means we need to implement source for our statepicker
//means we need to implement code for user selection ifor our data in state picker

class ViewController: UIViewController , UIPickerViewDataSource,UIPickerViewDelegate {
    //t3ref elstate picker view (outlet)

    @IBOutlet weak var StatePicker: UIPickerView!
    //t3ref el bttom e;y hdos 3leh outlet)

    @IBOutlet weak var StateButtonPressed: UIButton!
    
    
    //we will define an array which will hold our states 
    let states = ["Egypt","Cairo","Alaska","Manhatn","Portsaid"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // lw 7abet a4yr e; background ast5dm el view where view is the baseview
        //self.view.backgroundColor = UIColor.purple
        //these two line means search fir the code of delegate and data source if this statew picker in this class (viewcontroller.swift) , after this implement those function at the buttom (number of rows , title for rows,number of components)
        
        StatePicker.dataSource = self
        StatePicker.delegate = self
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //action of button
    @IBAction func StateButtonPressed(_ sender: Any) {
        
    }
    
    //columns (1 col)
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        //return number o states in our array
        return 1
    }
    //rows
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
          return states.count
    }
    //title
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //return states names 
        return states[row]
    }
}

