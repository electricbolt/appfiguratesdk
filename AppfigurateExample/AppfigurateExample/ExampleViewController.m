/*******************************************************************************
 * ExampleViewController.m                                                     *
 * AppfigurateExample Copyright© 2013; Electric Bolt Limited.                  *
 ******************************************************************************/

#import "ExampleViewController.h"
#import "ExampleConfiguration.h"

@interface ExampleViewController()<APLConfigurationUpdated>

@end

@implementation ExampleViewController

- (void) viewDidLoad {
    self.navigationItem.title = [NSString stringWithFormat: @"Example %@", APLVersion()];
    APLAddConfigurationUpdatedListener(self);

    APLConfigurationLabel* label = [[APLConfigurationLabel alloc] initWithFrame: CGRectZero];
    label.center = CGPointMake(7, self.navigationController.view.bounds.size.height / 2);
    [self.navigationController.view addSubview: label];
}

/**
 * Called when the application configuration is applied from the Appfigurate application.
 */
- (void) configurationUpdated:(NSNotification *)notification {
    [self.tableView reloadData];
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ExampleConfiguration *c = ((ExampleConfiguration*) [APLConfiguration sharedConfiguration]);
    UITableViewCell *cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];
    switch (indexPath.section) {
        case 0: cell.detailTextLabel.text = c.boolean ? @"YES":@"NO"; break;
        case 1:
            switch (indexPath.row) {
                case 0: cell.detailTextLabel.text = c.string_Textfield; break;
                case 1: cell.detailTextLabel.text = c.string_RegexTextfield; break;
                case 2: cell.detailTextLabel.text = c.string_List; break;
                case 3: cell.detailTextLabel.text = c.string_Textfield_List; break;
                case 4: cell.detailTextLabel.text = c.string_RegexTextfield_List; break;
            }
            break;
        case 2:
            switch (indexPath.row) {
                case 0: cell.detailTextLabel.text = [NSString stringWithFormat: @"%ld", (long) c.integer_Slider]; break;
                case 1: cell.detailTextLabel.text = [NSString stringWithFormat: @"%ld", (long) c.integer_Textfield]; break;
                case 2: cell.detailTextLabel.text = [NSString stringWithFormat: @"%ld", (long) c.integer_RegexTextfield]; break;
                case 3: cell.detailTextLabel.text = [NSString stringWithFormat: @"%ld", (long) c.integer_List]; break;
                case 4: cell.detailTextLabel.text = [NSString stringWithFormat: @"%ld", (long) c.integer_Textfield_List]; break;
                case 5: cell.detailTextLabel.text = [NSString stringWithFormat: @"%ld", (long) c.integer_RegexTextfield_List]; break;
            }
            break;
        case 3:
            switch (indexPath.row) {
                case 0: cell.detailTextLabel.text = [NSString stringWithFormat: @"%0.3f", c.float_Slider]; break;
                case 1: cell.detailTextLabel.text = [NSString stringWithFormat: @"%0.3f", c.float_Textfield]; break;
                case 2: cell.detailTextLabel.text = [NSString stringWithFormat: @"%0.3f", c.float_RegexTextfield]; break;
                case 3: cell.detailTextLabel.text = [NSString stringWithFormat: @"%0.3f", c.float_List]; break;
                case 4: cell.detailTextLabel.text = [NSString stringWithFormat: @"%0.3f", c.float_Textfield_List]; break;
                case 5: cell.detailTextLabel.text = [NSString stringWithFormat: @"%0.3f", c.float_RegexTextfield_List]; break;
            }
            break;
        case 4:
            switch (indexPath.row) {
                case 0: cell.detailTextLabel.text = [NSString stringWithFormat: @"%0.3f", c.double_Slider]; break;
                case 1: cell.detailTextLabel.text = [NSString stringWithFormat: @"%0.3f", c.double_Textfield]; break;
                case 2: cell.detailTextLabel.text = [NSString stringWithFormat: @"%0.3f", c.double_RegexTextfield]; break;
                case 3: cell.detailTextLabel.text = [NSString stringWithFormat: @"%0.3f", c.double_List]; break;
                case 4: cell.detailTextLabel.text = [NSString stringWithFormat: @"%0.3f", c.double_Textfield_List]; break;
                case 5: cell.detailTextLabel.text = [NSString stringWithFormat: @"%0.3f", c.double_RegexTextfield_List]; break;
            }
            break;
    }
    return cell;
}

@end
