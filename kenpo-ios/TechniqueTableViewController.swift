//
//  TechniqueTableViewController.swift
//  kenpo-ios
//
//  Created by Todd Sedano on 11/22/19.
//  Copyright © 2019 Kenpo. All rights reserved.
//

import UIKit

class TechniqueTableViewController: UITableViewController {
    
    //MARK: Properties
    
    var techniques = [Technique]()

    override func viewDidLoad() {
        super.viewDidLoad()

        loadTechiques()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return techniques.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "TechniqueTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TechniqueTableViewCell  else {
            fatalError("The dequeued cell is not an instance of TechniqueTableViewCell.")
        }
        
        // Fetches the appropriate technique for the data source layout.
        let technique = techniques[indexPath.row]
        
        cell.nameLabel.text = technique.name
        
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
    //MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //MARK: Private Methods
    
    private func loadTechiques() {
        guard let technique1 = Technique(name: "Clutching Feathers", belt: "Orange", attack: "Something") else {
            fatalError("Unable to instantiate technique1")
        }
        
        guard let technique2 = Technique(name: "Dance of Death", belt: "Orange", attack: "Something") else {
            fatalError("Unable to instantiate technique2")
        }
        
        techniques += [technique1, technique2]
    }
}
