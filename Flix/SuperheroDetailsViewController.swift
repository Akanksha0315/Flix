//
//  SuperheroDetailsViewController.swift
//  Flix
//
//  Created by Akku on 2/28/21.
//

import UIKit
import AlamofireImage

class SuperheroDetailsViewController: UIViewController {
    
    @IBOutlet weak var superheroBackdropView: UIImageView!
    @IBOutlet weak var superheroPosterView: UIImageView!
    @IBOutlet weak var superheroTitleLabel: UILabel!
    @IBOutlet weak var superheroSynopsisLabel: UILabel!
    
    var movie: [String:Any]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        superheroTitleLabel.text = movie["title"] as? String
        superheroTitleLabel.sizeToFit()
        superheroSynopsisLabel.text = movie["overview"] as? String
        superheroSynopsisLabel.sizeToFit()
        
        let baseUrl =  "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        superheroPosterView.af_setImage(withURL: posterUrl!)
        
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        superheroBackdropView.af_setImage(withURL: backdropUrl!)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
