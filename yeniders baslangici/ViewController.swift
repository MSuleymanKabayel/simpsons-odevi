//
//  ViewController.swift
//  yeniders baslangici
//
//  Created by Süleyman Kabayel on 12.01.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tabelvViewVC1: UITableView!
    var mysimpsons = [simpson] ()
    var chosenSimpson : simpson?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tabelvViewVC1.dataSource = self
        tabelvViewVC1.delegate = self
        
        //simpson objeleri
        let homer = simpson(simpsonName: "homer", simpsonJob: "NuclerSeafty", simpsonImage: UIImage(named: "Homer_Simpson")!)
        let marge = simpson(simpsonName: "Marge", simpsonJob: "house Wife", simpsonImage: UIImage(named: "marge")!)
        let bart = simpson(simpsonName: "Bart", simpsonJob: "Student", simpsonImage: UIImage(named: "bart")!)
        let lisa = simpson(simpsonName: "Lisa", simpsonJob: "student", simpsonImage: UIImage(named: "lisa")!)
        
        mysimpsons.append(homer)
        mysimpsons.append(marge)
        mysimpsons.append(lisa)
        mysimpsons.append(bart)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mysimpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mysimpsons [indexPath.row].name
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mysimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! simpsonsSecondVC
            destinationVC.selctedSimpson = chosenSimpson
        }
    }

}

  

