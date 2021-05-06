//
//  DetailsViewController.swift
//  Assignment4
//
//  Created by user169313 on 5/6/21.
//  Copyright © 2021 Derrick Park. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var city: City!
    
    let vStackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .vertical
        sv.distribution = .equalSpacing
        sv.alignment = .center
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let labels = [("Country", city.flag), ("City", city.name), ("Temperature",String(city.temp)), ("Summary", city.summary) ]
        
        for (header, value) in labels {
           let lbl1 = UILabel()
            lbl1.text = header
            lbl1.font = .boldSystemFont(ofSize: 20)
            vStackView.addArrangedSubview(lbl1)
      
            let lbl2 = UILabel()
             lbl2.text = value
             vStackView.addArrangedSubview(lbl2)
        }
        
        view.addSubview(vStackView)
        vStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        vStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        vStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }

}
