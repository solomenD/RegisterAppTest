//
//  AlertOk.swift
//  RegisterAppTest
//
//  Created by Solomon  on 24.12.2022.
//

import UIKit

extension UIViewController {
    
    func alertOk(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(ok)
        
        present(alert, animated: true, completion: nil)
    }
    
}
