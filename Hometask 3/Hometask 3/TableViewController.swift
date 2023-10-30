//
//  TableViewController.swift
//  Hometask 3
//
//  Created by Assel Akmakanova on 30.10.2023.
//

import UIKit

class TableViewController: UITableViewController {
    
    //let array = [1, 2, 3, 4, 5]
    //var arrayCountry = ["Austria", "Czech", "Germany", "France", "Korean"]
    //var arrayCity = ["Vienna", "Prague", "Berlin", "Paris", "Seoul"]
    //var arrayImage = ["Vienna", "Prague", "Berlin", "Paris", "Seoul"]
    
    var arrayCountryAndCitys = [CountryAndCity(country: "Austria", city: "Vienna", imagename: "Vienna"),
    CountryAndCity(country: "Czech", city: "Prague", imagename: "Prague"),
    CountryAndCity(country: "Germany", city: "Berlin", imagename: "Berlin"),
    CountryAndCity(country: "France", city: "Paris", imagename: "Seoul"),
    CountryAndCity(country: "Korean", city: "Paris", imagename: "Seoul")]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    @IBAction func addnew(_ sender: Any) {
        //arrayCountry.append("New Country")
       // arrayCity.append("New City")
       // arrayImage.append("icon city")
        
        arrayCountryAndCitys.append(CountryAndCity(country: "New Country", city: "New City", imagename: "icon city"))
        tableView.reloadData()
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayCountryAndCitys.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = arrayCountryAndCitys[indexPath.row].country
        
        let labelCity = cell.viewWithTag(1001) as! UILabel
        labelCity.text = arrayCountryAndCitys[indexPath.row].city
        
        let imageview = cell.viewWithTag(1002) as! UIImageView
        imageview.image = UIImage(named: arrayCountryAndCitys[indexPath.row].imagename)
                                  
        return cell
        
       }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVc = storyboard?.instantiateViewController(identifier: "detailViewController") as! ViewController
        
        //detailVc.country = arrayCountryAndCity[indexPath.row].country
        //detailVc.city = arrayCountryAndCity[indexPath.row].city
        //detailVc.imagename = arrayCountryAndCity[indexPath.row].imagename
        
        detailVc.CountryAndCitys = arrayCountryAndCitys[indexPath.row]
        
        navigationController?.show(detailVc, sender: self)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            
           // arrayCountry.remove(at: indexPath.row)
           // arrayCity.remove(at: indexPath.row)
           // arrayImage.remove(at: indexPath.row)
            
            arrayCountryAndCitys.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

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

}
