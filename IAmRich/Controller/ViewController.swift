//
//  ViewController.swift
//  IAmRich
//
//  Created by Mateus Amorim on 08/08/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var viewInitial = InitialView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(viewInitial)
        makeConstrant()
    }
    
    
    func makeConstrant(){
        viewInitial.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}



