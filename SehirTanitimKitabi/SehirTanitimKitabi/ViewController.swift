//
//  ViewController.swift
//  SehirTanitimKitabi
//
//  Created by ELİF BEYZA SAĞLAM on 4.06.2022.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
   
    var sehirDizisi = [Sehir]()
    var kullaniciSecimi : Sehir?
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate=self
        tableView.dataSource=self
        
        let ankara = Sehir(isim: "Ankara", bolge: "İç Anadolu", gorsel:UIImage(named: "ankara")!)
        let antalya = Sehir(isim: "Antalya", bolge: "Akdeniz", gorsel:UIImage(named: "antalya")!)
        let gaziantep = Sehir(isim: "Gaziantep", bolge: "Güneydoğu Anadolu", gorsel:UIImage(named: "gaziantep")!)
        let istanbul = Sehir(isim: "İstanbul", bolge: "Marmara", gorsel:UIImage(named: "istanbul")!)
       let izmir = Sehir(isim: "İzmir", bolge: "Ege", gorsel:UIImage(named: "izmir")!)
        
        
        
      
    
        
        sehirDizisi = [ankara ,antalya,gaziantep,istanbul, izmir]
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sehirDizisi.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = sehirDizisi[indexPath.row].isim
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.kullaniciSecimi = sehirDizisi[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destionationVC = segue.destination as! DetailsViewController
            destionationVC.secilenSehir = kullaniciSecimi
    }
}
}

