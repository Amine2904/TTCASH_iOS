//
//  ViewController.swift
//  TT Cash
//  Created by Amine Kammoun
//
//


import UIKit

class ViewController: UIViewController {
/*
    var database: Connection!
    
    let usersTable = Table("ScoreBoard")
    let id = Expression<Int>("id")
    let name = Expression<String>("name")
    let score = Expression<Int>("score")
  */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /*
        
        do {
            let documentDirectory = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            let fileUrl = documentDirectory.appendingPathComponent("ScoreBoard").appendingPathExtension("sqlite3")
            let database = try Connection(fileUrl.path)
            print("connecteeeed")
            self.database = database
        } catch {
            print(error)
        }
        
        createTable()
        insertRow(name: "Amine KAMMOUN", score: 3000)
        listScores()
        */
        
    }
/*
    func createTable() {
        
        let createTable = self.usersTable.create {
            (table) in
            table.column(self.id, primaryKey: true)
            table.column(self.name)
            table.column(self.score)
        }
        
        do {
            try self.database.run(createTable)
            print("Created Table")
        } catch {
            print(error)
        }

    }
    
    func insertRow( name : String, score: Int) {
        
        let insertScore = self.usersTable.insert(self.name <- name, self.score <- score)
        
        do {
            try self.database.run(insertScore)
            print("Inserteed Score")
        } catch {
            print(error)
        }
        
    }
    
    func updateRow(name : String, score: Int, id: Int){
        let row = self.usersTable.filter(self.id == id)
        let updateName = row.update(self.name <- name)
        let updateScore = row.update(self.score <- score)
        
        do {
            try self.database.run(updateName);
            try self.database.run(updateScore)
        } catch {
            print(error)
        }
    }
    
    func listScores() {
        print("List tapped")
        
        do {
            let rows = try self.database.prepare(self.usersTable)
            for row in rows {
                print("id: \(row[self.id]), Name: \(row[self.name]), Score: \(row[self.score])")
            }
        } catch {
            print(error)
        }
    }
   */
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

