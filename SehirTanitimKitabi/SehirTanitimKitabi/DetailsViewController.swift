//
//  DetailsViewController.swift
//  SehirTanitimKitabi
//
//  Created by ELİF BEYZA SAĞLAM on 4.06.2022.
//

import UIKit

class DetailsViewController: UIViewController {
   
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var sehirIsmiLabel: UILabel!
    @IBOutlet weak var sehirBolgesiLabel: UILabel!
    
    var secilenSehir : Sehir?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sehirIsmiLabel.text = "Adana"
        sehirBolgesiLabel.text = "Akdeniz"
        sehirIsmiLabel.textColor = .black
        
        print("Şehir \(secilenSehir?.isim)")
        
        sehirIsmiLabel.text = secilenSehir?.isim
        sehirBolgesiLabel.text = secilenSehir?.bolge
        imageView.image = secilenSehir?.gorsel

      
    }
    

    
}
