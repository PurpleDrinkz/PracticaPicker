//
//  ViewController.swift
//  PracticaPicker
//
//  Created by Alumno on 13/09/18.
//  Copyright © 2018 Benjamin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    let colores = ["Orca", "Rino", "Lobo", "Leon", "Búho", "Delfín", "Elefantes", "Gorila", "Jirafa"]
    
    @IBOutlet weak var imgFoto: UIImageView!
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colores.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colores[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        switch row
        {
        case 0: imgFoto.image = UIImage(named: "orca")
        case 1: imgFoto.image = UIImage(named: "rino")
        case 2: imgFoto.image = UIImage(named: "lobo")
        case 3: imgFoto.image = UIImage(named: "leon")
        case 4: imgFoto.image = UIImage(named: "buho")
        case 5: imgFoto.image = UIImage(named: "delfin")
        case 6: imgFoto.image = UIImage(named: "elefante")
        case 7: imgFoto.image = UIImage(named: "gorila")
        case 8: imgFoto.image = UIImage(named: "jirafa")
       
            
        default:
            break
        }
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imgFoto.image = UIImage(named: "orca")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

