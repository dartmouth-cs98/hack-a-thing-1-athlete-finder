//
//  PersonTableViewController.swift
//  Octophone
//
//  Created by Jolene Bernagene/Amara Gordon on 9/20/18.
//  Copyright © 2018 Jolene/Amara. All rights reserved.
//

import UIKit

class PersonTableViewController: UITableViewController {
    
    
    //MARK: Properties
    var people = [Person]()

    override func viewDidLoad() {
        super.viewDidLoad()
        loadSamplePeople()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return people.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "PersonTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? PersonTableViewCell else {
            fatalError("The dequed cell is not an instance of PersonTableCell")
            
        }

        // Configure the cell...
        
        let person = people[indexPath.row]
        cell.nameLabel.text = person.name
        cell.photoImageView.image = person.photo

        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    private func loadSamplePeople(){
        let photo1 = UIImage(named: "fj")
        let photo2 = UIImage(named: "sf")
        let photo3 = UIImage(named:"track-1")
        
        guard let person1 = Person(name:"Florence Griffith Joyner", photo:photo1)else{fatalError("Unable to instantiate person")
        }
        
        guard let person2 = Person(name:"Shelly-Ann Fraser-Pryce", photo:photo2)else{fatalError("Unable to instantiate person")
        }
        
        guard let person3 = Person(name:"Allyson Felix", photo:photo3)else{fatalError("Unable to instantiate person")
        }
        
        people += [person1, person2, person3]
    }

}
