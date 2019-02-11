//
//  TableauController.swift
//  Lecteur Youtube
//
//  Created by admin on 05/02/2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

//On ajoute les 2 protocoles UITableViewDelegate, UITableViewDataSource
class TableauController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var TableView: UITableView!
    
    var chansons = [Chanson]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView.delegate = self
        TableView.dataSource = self

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func ajouterChanson() {
        //On s'assure que l'array de chansons est vide
        chansons = [Chanson]()
        let a = Chanson(artiste: "Dead can Dance", titre: "children of the sun", code: "aiDNf8trWn8")
        chansons.append(a)
        let b = Chanson(artiste: "Dead can Dance", titre: "The Mountain", code: "7em5haBGxz4")
        chansons.append(b)
        let c = Chanson(artiste: "Dead can Dance", titre: "persephone", code: "Ku1HJ2DI7Xk")
        chansons.append(c)
        let d = Chanson(artiste: "Dead can Dance", titre: "yulunga", code: "2ZpXPwmbQvc")
        chansons.append(d)
        let e = Chanson(artiste: "Dead can Dance", titre: "summoning of the muse", code: "5J8mvTWceO8")
        chansons.append(e)
        let f = Chanson(artiste: "Dead can Dance", titre: " song of the Nile", code: "56bVNrGaw3U")
        chansons.append(f)
        let g = Chanson(artiste: "Dead can Dance", titre: "The Host of Seraphim", code: "QJhVM930YXY")
        chansons.append(g)
        let h = Chanson(artiste: "Dead can Dance", titre: "The snake and the moon", code: "nAuiMUce0kI")
        chansons.append(h)
        
    }
}