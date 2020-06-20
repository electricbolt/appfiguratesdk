// ActionViewController.swift
// ActionExample Extension Copyright© 2020; Electric Bolt Limited.

import UIKit
import AppfigurateLibrary

class ActionViewController: UIViewController {

    @IBOutlet var tableView: UITableView!

    public override func viewDidLoad() {
        APLAddConfigurationUpdatedListener(self)
    }
    
    @IBAction func done() {
        extensionContext?.completeRequest(returningItems: extensionContext?.inputItems, completionHandler: nil)
    }
    
}

extension ActionViewController: APLConfigurationUpdated {

    func configurationUpdated(_ notification: Notification?) {
        tableView.reloadData()
    }

}

extension ActionViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let c = APLConfiguration.shared() as! ExampleConfiguration
        var cell = tableView.dequeueReusableCell(withIdentifier: "CELL")
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "CELL")
        }
        switch indexPath.section {
            case 0:
                cell!.textLabel!.text = "boolean"
                cell!.detailTextLabel!.text = c.boolean ? "true":"false"
            case 1:
                switch indexPath.row {
                    case 0:
                        cell!.textLabel!.text = "string_Textfield"
                        cell!.detailTextLabel?.text = c.string_Textfield
                    case 1:
                        cell!.textLabel!.text = "string_RegexTextfield"
                        cell!.detailTextLabel?.text = c.string_RegexTextfield
                    case 2:
                        cell!.textLabel!.text = "string_List"
                        cell!.detailTextLabel?.text = c.string_List
                    case 3:
                        cell!.textLabel!.text = "string_Textfield_List"
                        cell!.detailTextLabel?.text = c.string_Textfield_List
                    case 4:
                        cell!.textLabel!.text = "string_RegexTextfield_List"
                        cell!.detailTextLabel?.text = c.string_RegexTextfield_List
                    case 5:
                        cell!.textLabel!.text = "encrypted_string_Textfield_List"
                        cell!.detailTextLabel?.text = c.encrypted_string_Textfield_List
                    default:
                        cell!.textLabel!.text = "encrypted_string_RegexTextfield_List"
                        cell!.detailTextLabel?.text = c.encrypted_string_RegexTextfield_List
                }
            case 2:
                switch indexPath.row {
                    case 0:
                        cell!.textLabel!.text = "integer_Slider"
                        cell!.detailTextLabel?.text = "\(c.integer_Slider)"
                    case 1:
                        cell!.textLabel!.text = "integer_Textfield"
                        cell!.detailTextLabel?.text = "\(c.integer_Textfield)"
                    case 2:
                        cell!.textLabel!.text = "integer_RegexTextfield"
                        cell!.detailTextLabel?.text = "\(c.integer_RegexTextfield)"
                    case 3:
                        cell!.textLabel!.text = "integer_List"
                        cell!.detailTextLabel?.text = "\(c.integer_List)"
                    case 4:
                        cell!.textLabel!.text = "integer_Textfield_List"
                        cell!.detailTextLabel?.text = "\(c.integer_Textfield_List)"
                    default:
                        cell!.textLabel!.text = "integer_RegexTextfield_List"
                        cell!.detailTextLabel?.text = "\(c.integer_RegexTextfield_List)"
                }
            case 3:
                switch indexPath.row {
                    case 0:
                        cell!.textLabel!.text = "integer_Textfield_List"
                        cell!.detailTextLabel?.text = "\(c.float_Slider)"
                    case 1:
                        cell!.textLabel!.text = "integer_Textfield_List"
                        cell!.detailTextLabel?.text = "\(c.float_Textfield)"
                    case 2:
                        cell!.textLabel!.text = "integer_Textfield_List"
                        cell!.detailTextLabel?.text = "\(c.float_RegexTextfield)"
                    case 3:
                        cell!.textLabel!.text = "integer_Textfield_List"
                        cell!.detailTextLabel?.text = "\(c.float_List)"
                    case 4:
                        cell!.textLabel!.text = "integer_Textfield_List"
                        cell!.detailTextLabel?.text = "\(c.float_Textfield_List)"
                    default:
                        cell!.textLabel!.text = "integer_Textfield_List"
                        cell!.detailTextLabel?.text = "\(c.float_RegexTextfield_List)"
                }
            default:
                switch indexPath.row {
                    case 0:
                        cell!.textLabel!.text = "double_Slider"
                        cell!.detailTextLabel?.text = "\(c.double_Slider)"
                    case 1:
                        cell!.textLabel!.text = "double_Textfield"
                        cell!.detailTextLabel?.text = "\(c.double_Textfield)"
                    case 2:
                        cell!.textLabel!.text = "double_RegexTextfield"
                        cell!.detailTextLabel?.text = "\(c.double_RegexTextfield)"
                    case 3:
                        cell!.textLabel!.text = "double_List"
                        cell!.detailTextLabel?.text = "\(c.double_List)"
                    case 4:
                        cell!.textLabel!.text = "double_Textfield_List"
                        cell!.detailTextLabel?.text = "\(c.double_Textfield_List)"
                    default:
                        cell!.textLabel!.text = "double_RegexTextfield_List"
                        cell!.detailTextLabel?.text = "\(c.double_RegexTextfield_List)"
                }
        }
        return cell!
    }

    public func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return 1
        case 1: return 7
        case 2: return 6
        case 3: return 6
        default: return 6
        }
    }
    
}
