//
//  PracticandoTVC.swift
//  Tarea 3
//
//  Created by Rocío Córdova on 26/02/17.
//  Copyright © 2017 Rocío Córdova. All rights reserved.
//

import UIKit

class PracticandoTVC: UITableViewController {
    
    var arregloObjetos = Array<Objeto>()
    
    var cell:IndexPath!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 1...10 {
            let objeto = Objeto()
            objeto.lugar = "Lugar \(i)"
            objeto.direccion = "Av. \(objeto.lugar!) - Distrito X"
            objeto.numero = "999-000-099"
            
            arregloObjetos.append(objeto)
            
        }
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

  /*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
 */

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arregloObjetos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! ObjetoTVCell
        
        // Configure the cell...
        
        let indice = indexPath.row
        let objeto = arregloObjetos[indice]
        
        cell.lblLugar.text = objeto.lugar
        cell.lblDireccion.text = objeto.direccion
        cell.lblNumero.text = objeto.numero

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //Asignando el valor de la celda seleccionada a cell que es publico
        
        cell = indexPath
        
        self.performSegue(withIdentifier: "siguiente", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let direccion = arregloObjetos[cell.row]
        
        let viewCont = segue.destination as! ViewController
        
        viewCont.direc = direccion.direccion
        
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
