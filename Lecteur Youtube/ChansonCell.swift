//
//  ChansonCell.swift
//  Lecteur Youtube
//
//  Created by admin on 13/02/2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class ChansonCell: UITableViewCell {

    @IBOutlet weak var miniature: UIImageView!
    
    @IBOutlet weak var artisteEtTitreLabel: UILabel!
    
    var chanson: Chanson! //forcée en non optionnelle
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    func creerCell(_ chanson: Chanson) {
        self.chanson = chanson
        telechargerImage()
        
        let attributed = NSMutableAttributedString(string: self.chanson.titre, attributes: [.font:UIFont.boldSystemFont(ofSize: 20), .foregroundColor: UIColor.black])
        
        let secondeLigne = NSMutableAttributedString(string: "\n" + self.chanson.artiste, attributes: [.font:UIFont.italicSystemFont(ofSize: 20), .foregroundColor: UIColor.orange])
        
        attributed.append(secondeLigne)
        artisteEtTitreLabel.attributedText = attributed
    }
    
    func telechargerImage() {
        miniature.image = #imageLiteral(resourceName: "logo")
        if let url = URL(string: self.chanson.miniatureUrl) {
            // on crée une session pour aller chercher des donnees depuis une URL:
            let session = URLSession.shared
            let task = session.dataTask(with: url, completionHandler: { (data, response, Error) in
                if let imageData = data, let image = UIImage(data: imageData) {
                DispatchQueue.main.async {
                    self.miniature.image = image
                    }
                }
                
            })
            
            //On repasse des taches en background sur le main:
            task.resume()
            
        }
    }
}
