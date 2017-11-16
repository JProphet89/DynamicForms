//
//  FormDynamicController.swift
//  dynamic_forms
//
//  Created by João Fonseca on 16/11/2017.
//  Copyright © 2017 João Fonseca. All rights reserved.
//

import UIKit
import Eureka


protocol ContainerToMaster {
    func updateForm(id:Int)
}


class FormDynamicController:  FormViewController{
    var questions : Int = 1
    var containerToMaster:ContainerToMaster?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        form +++ Section("Section1")
            <<< TextRow(){ row in
                row.title = "Text Row"
                row.placeholder = "Enter text here"
            }
            <<< PhoneRow(){
                $0.title = "Phone Row"
                $0.placeholder = "And numbers here"
            }
            +++ Section("Section2")
            <<< DateRow(){
                $0.title = "Date Row"
                $0.value = Date(timeIntervalSinceReferenceDate: 0)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public static func someStuff(){
        
    }
    
    public func updateForm(id:Int){
        print("passou")
        form.removeAll()
        switch id {
            case 1:
                form +++ Section("Section1")
                    <<< TextRow(){ row in
                        row.title = "Text Row"
                        row.placeholder = "Enter text here"
                    }
                    <<< PhoneRow(){
                        $0.title = "Phone Row"
                        $0.placeholder = "And numbers here"
                    }
                    +++ Section("Section2")
                    <<< DateRow(){
                        $0.title = "Date Row"
                        $0.value = Date(timeIntervalSinceReferenceDate: 0)
                    }
                break
            case 2:
                form +++ Section("Section1")
                    <<< TextRow(){ row in
                        row.title = "Text "
                        row.placeholder = "Enter text here"
                    }
                    <<< DateRow(){
                        $0.title = "Date "
                        $0.value = Date(timeIntervalSinceReferenceDate: 0)
                    }
                    <<< PhoneRow(){
                        $0.title = "Phone "
                        $0.placeholder = "And numbers here"
                    }
                break
            default:
                form +++ Section("Section1")
                    <<< PhoneRow(){
                        $0.title = "Phone Row"
                        $0.placeholder = "And numbers here"
                    }
                    <<< DateRow(){
                        $0.title = "Date Row"
                        $0.value = Date(timeIntervalSinceReferenceDate: 0)
                    }
                    <<< TextRow(){ row in
                            row.title = "Text Row"
                            row.placeholder = "Enter text here"
                    }
        }
    }
}

