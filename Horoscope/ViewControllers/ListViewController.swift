//
//  ViewController.swift
//  Horoscope
//
//  Created by Mañanas on 12/5/25.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource, UISearchBarDelegate {

    //MARK: Outlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: Properties
    var horoscopeList = Horoscope.getAll()
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.delegate = self
        self.navigationItem.searchController = searchController
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    //MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as! DetailViewController
        let indexPath = tableView.indexPathForSelectedRow!
        let horoscope = horoscopeList[indexPath.row]
        detailVC.horoscope = horoscope
    }
    
    
    //MARK: SearchBar functionality
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String){
        if (searchText.isEmpty){
            horoscopeList = Horoscope.getAll()
        } else {
            horoscopeList = Horoscope.getAll().filter({ horsocope in
                horsocope.name.range(of: searchText, options: .caseInsensitive) != nil
            })
        }
        tableView.reloadData()
    
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        horoscopeList = Horoscope.getAll()
        tableView.reloadData()
    }
    
    //MARK: tableView DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return horoscopeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HoroscopeViewCell
        let horoscope = horoscopeList[indexPath.row]
        cell.render(horoscope: horoscope)
        return cell
    }
    

}

