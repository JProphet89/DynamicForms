//
//  ViewController.swift
//  dynamic_forms
//
//  Created by João Fonseca on 16/11/2017.
//  Copyright © 2017 João Fonseca. All rights reserved.
//

import UIKit

class ViewController: UIViewController , ContainerToMaster {
    
    
    @IBOutlet weak var formContainer: UIView!
    var containerViewController: FormDynamicController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "containerViewSegue" {
            containerViewController = segue.destination as? FormDynamicController
            containerViewController!.containerToMaster = self
        }
    }
    
    func updateForm(id: Int) {
        print(1)
    }

    @IBAction func pressButton1(_ sender: Any) {
        containerViewController?.updateForm(id: 1)
    }
    @IBAction func pressButton2(_ sender: Any) {
        containerViewController?.updateForm(id: 2)
    }
    @IBAction func pressButton3(_ sender: Any) {
        containerViewController?.updateForm(id: 3)
    }
    
}

