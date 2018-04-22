//
//  ViewController.swift
//  coder-swag
//
//  Created by Sebastian Horatiu on 12/04/2018.
//  Copyright © 2018 Sebastian Horatiu. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        categoryTable.dataSource = self
        categoryTable.delegate = self
        
//        Testing the Singleton in service DataService
//        let dso = DataServiceOriginal() // here you can create a new instance
//        dso.saySomething()
//        DataServiceOriginal.instance.saySomething()

//      Test the good implementation here
//        DataService.instance.getCategories()
        
//      This is the 3rd approach here
//        let ds3 = DataService3()

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            
            let categories = DataService.instance.getCategories()
            let category = categories[indexPath.row]
            
            // this could be written in one line:
            // let category = DataService.instance.getCategories()[indexPath.row]
            
            cell.updateViews(category: category)
            
            return cell
        } else {
            return CategoryCell()
        }
    }


}

