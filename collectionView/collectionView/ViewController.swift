//
//  ViewController.swift
//  collectionView
//
//  Created by hoi on 12/10/2023.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = viewCollection.dequeueReusableCell(withReuseIdentifier: "idCell", for: indexPath) as! MyCustomCell
        
        let lankmark = data[indexPath.row]
        
        cell.imageCollection.image = UIImage(named: lankmark.image!)
        cell.labelCollection.text = lankmark.name
        
        
        return cell
    }
    

    var data : [Data] = [
        Data(image: "BenTre", name: "BenTre"),
        Data(image: "BinhThuan", name: "BinhThuan"),
        Data(image: "BuonMeThuoc", name: "BuonMeThuoc"),
        Data(image: "CaMau", name: "CaMau"),
        Data(image: "CamPha_QuangNinh", name: "CamPha_QuangNinh"),
        Data(image: "CanTho", name: "CanTho"),
        Data(image: "CaoBang", name: "CaoBang"),
        Data(image: "CuaLo", name: "CuaLo"),
        Data(image: "DaLat", name: "DaLat"),
        Data(image: "DaNang", name: "DaNang"),
        Data(image: "DaoLySon", name: "DaoLySon"),
        Data(image: "DaoPhuQuy", name: "DaoPhuQuy"),
        Data(image: "DienBien", name: "DienBien"),
        Data(image: "DongThap", name: "DongThap"),
        Data(image: "HaGiang", name: "HaGiang"),
        Data(image: "HaiPhong", name: "HaiPhong"),
        Data(image: "HaLong", name: "HaLong"),
        Data(image: "HaNam", name: "HaHam"),
        Data(image: "HaNoi", name: "HaNoi"),
        Data(image: "HoiAn", name: "HoiAn"),
        Data(image: "Hue", name: "Hue"),
        Data(image: "LangSon", name: "LangSon"),
        Data(image: "MaiChau", name: "MaiChau"),
        Data(image: "MocChau", name: "MocChau"),
        Data(image: "MongCai", name: "MongCai"),
        Data(image: "NgheAn", name: "NgheAn"),
        Data(image: "NhaTrang", name: "NhaTrang"),
        Data(image: "NinhBinh", name: "NinhBinh"),
        Data(image: "PhanThiet", name: "PhanThiet"),
        Data(image: "PhuQuoc", name: "PhuQuoc"),
        Data(image: "PhuYen", name: "PhuYen"),
        Data(image: "QuangBinh", name: "QuangBinh"),
        Data(image: "QuangNinh", name: "QuangNinh"),
        Data(image: "SaiGon", name: "SaiGon"),
        Data(image: "SaPa", name: "SaPa"),
        Data(image: "TayNinh", name: "TayNinh"),
        Data(image: "ThaiNguyen", name: "ThaiNguyen"),
        Data(image: "ThanhHoa", name: "ThanhHoa"),
        Data(image: "TuyenQuang", name: "TuyenQuang"),
        Data(image: "VungTau", name: "VungTau")
    ]
    
    var chosenLandmark: Data?
    
    @IBOutlet weak var viewCollection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewCollection.delegate = self
        viewCollection.dataSource = self
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        chosenLandmark = data[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            
                let destinationController = segue.destination as! DetailsVC
            destinationController.linkData = chosenLandmark

            
        }
    }

}

