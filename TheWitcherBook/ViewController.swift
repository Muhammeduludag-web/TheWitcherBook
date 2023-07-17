//
//  ViewController.swift
//  TheWitcherBook
//
//  Created by uludağ on 17.07.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var myWitcher = [witcher]()
    var charWitcher : witcher?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        let geralt = witcher(nameInit: "Geralt", jobsInit: "Monster Slayer", imageInit: UIImage(named: "geralt")!)
        let ciri = witcher(nameInit: "Ciri", jobsInit: "Elder blood Pricess", imageInit: UIImage(named: "ciri")!)
        let vesemir = witcher(nameInit: "Vesemir", jobsInit: "Monster Slayer Masterss", imageInit: UIImage(named: "vesemir")!)
        let yennefer = witcher(nameInit: "Yennefer", jobsInit: "Wizard", imageInit: UIImage(named: "yennefer")!)
        let eredin = witcher(nameInit: "Eredin", jobsInit: "Wild Hunt", imageInit: UIImage(named: "eredin")!)
        
        
        myWitcher.append(geralt)
        myWitcher.append(ciri)
        myWitcher.append(vesemir)
        myWitcher.append(yennefer)
        myWitcher.append(eredin)
        
        
    
    }

    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myWitcher.count
       }
    
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = myWitcher[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
    
    
   
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        charWitcher = myWitcher[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVCSec
            destinationVC.selectedWitcher = charWitcher
        }
    }

}

