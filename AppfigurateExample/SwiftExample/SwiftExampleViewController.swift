/*******************************************************************************
 * SwiftExampleViewController.swift                                            *
 * SwiftExample Copyright© 2017; Electric Bolt Limited.                        *
 ******************************************************************************/

import UIKit

class SwiftExampleViewController: UITableViewController, APLConfigurationUpdated {

    override func viewDidLoad() {
        self.navigationItem.title = "Example " + APLVersion();
        APLAddConfigurationUpdatedListener(self)

        let label = APLConfigurationLabel(frame: .zero)
        label.center = CGPoint(x: 7, y: self.navigationController!.view.bounds.size.height / 2)
        self.navigationController!.view.addSubview(label)
    }

    func configurationUpdated(_ notification: Notification?) {
        self.tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let c = APLConfiguration.shared() as! ExampleConfiguration
        let cell = super.tableView(tableView, cellForRowAt: indexPath)
        switch indexPath.section {
            case 0: cell.detailTextLabel?.text = c.boolean ? "true":"false"
            case 1:
                switch indexPath.row {
                    case 0: cell.detailTextLabel?.text = c.string_Textfield
                    case 1: cell.detailTextLabel?.text = c.string_RegexTextfield
                    case 2: cell.detailTextLabel?.text = c.string_List
                    case 3: cell.detailTextLabel?.text = c.string_Textfield_List
                    default: cell.detailTextLabel?.text = c.string_RegexTextfield_List
                }
            case 2:
                switch indexPath.row {
                    case 0: cell.detailTextLabel?.text = "\(c.integer_Slider)"
                    case 1: cell.detailTextLabel?.text = "\(c.integer_Textfield)"
                    case 2: cell.detailTextLabel?.text = "\(c.integer_RegexTextfield)"
                    case 3: cell.detailTextLabel?.text = "\(c.integer_List)"
                    case 4: cell.detailTextLabel?.text = "\(c.integer_Textfield_List)"
                    default: cell.detailTextLabel?.text = "\(c.integer_RegexTextfield_List)"
                }
            case 3:
                switch indexPath.row {
                    case 0: cell.detailTextLabel?.text = "\(c.float_Slider)"
                    case 1: cell.detailTextLabel?.text = "\(c.float_Textfield)"
                    case 2: cell.detailTextLabel?.text = "\(c.float_RegexTextfield)"
                    case 3: cell.detailTextLabel?.text = "\(c.float_List)"
                    case 4: cell.detailTextLabel?.text = "\(c.float_Textfield_List)"
                    default: cell.detailTextLabel?.text = "\(c.float_RegexTextfield_List)"
                }
            default:
                switch indexPath.row {
                    case 0: cell.detailTextLabel?.text = "\(c.double_Slider)"
                    case 1: cell.detailTextLabel?.text = "\(c.double_Textfield)"
                    case 2: cell.detailTextLabel?.text = "\(c.double_RegexTextfield)"
                    case 3: cell.detailTextLabel?.text = "\(c.double_List)"
                    case 4: cell.detailTextLabel?.text = "\(c.double_Textfield_List)"
                    default: cell.detailTextLabel?.text = "\(c.double_RegexTextfield_List)"
                }
        }
        return cell
    }
}

