//
//  VideoControllerViewController.swift
//  Lecteur Youtube
//
//  Created by admin on 20/02/2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit
//ajout du webkit sinon erreur , wkwebView non déclaré:
import WebKit

class VideoController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    var chanson: Chanson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        if chanson != nil {
            chargerVideo(chanson: chanson!) //on met le ! car on a vérifié que ce n'etait pas nil
        }
       
    }
    
    //Chargement d'une video a partir d'internet
    func chargerVideo(chanson: Chanson) {
        if let url = URL(string: chanson.videoUrl) { //Si cette video existe :
                let requete = URLRequest(url: url)
            webView.load(requete)
        }
    }
}
