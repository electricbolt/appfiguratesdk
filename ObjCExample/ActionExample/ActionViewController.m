// ActionViewController.m
// ActionExample Extension Copyright© 2017; Electric Bolt Limited.

@import MobileCoreServices;
@import AppfigurateLibrary;
#import "ActionViewController.h"
#import "ExampleConfiguration.h"

@interface ActionViewController () <APLConfigurationUpdated, UITableViewDelegate, UITableViewDataSource>

@property(strong,nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ActionViewController

- (void) viewDidLoad {
    APLAddConfigurationUpdatedListener(self);
}

/**
 * Called when the application configuration is applied from the Appfigurate application.
 */
- (void) configurationUpdated:(NSNotification *)notification {
    [self.tableView reloadData];
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ExampleConfiguration *c = ((ExampleConfiguration*) [APLConfiguration sharedConfiguration]);
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"CELL"];
    if (cell == nil)
        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleSubtitle reuseIdentifier: @"CELL"];
    switch (indexPath.section) {
        case 0: cell.textLabel.text = @"boolean"; cell.detailTextLabel.text = c.boolean ? @"YES":@"NO"; break;
        case 1:
            switch (indexPath.row) {
                case 0: cell.textLabel.text = @"string_Textfield"; cell.detailTextLabel.text = c.string_Textfield; break;
                case 1: cell.textLabel.text = @"string_RegexTextfield"; cell.detailTextLabel.text = c.string_RegexTextfield; break;
                case 2: cell.textLabel.text = @"string_List"; cell.detailTextLabel.text = c.string_List; break;
                case 3: cell.textLabel.text = @"string_Textfield_List"; cell.detailTextLabel.text = c.string_Textfield_List; break;
                case 4: cell.textLabel.text = @"string_RegexTextfield_List"; cell.detailTextLabel.text = c.string_RegexTextfield_List; break;
                case 5: cell.textLabel.text = @"encrypted_string_Textfield_List"; cell.detailTextLabel.text = c.encrypted_string_Textfield_List; break;
                case 6: cell.textLabel.text = @"encrypted_string_RegexTextfield_List"; cell.detailTextLabel.text = c.encrypted_string_RegexTextfield_List; break;
            }
            break;
        case 2:
            switch (indexPath.row) {
                case 0: cell.textLabel.text = @"integer_Slider"; cell.detailTextLabel.text = [NSString stringWithFormat: @"%ld", (long) c.integer_Slider]; break;
                case 1: cell.textLabel.text = @"integer_Textfield"; cell.detailTextLabel.text = [NSString stringWithFormat: @"%ld", (long) c.integer_Textfield]; break;
                case 2: cell.textLabel.text = @"integer_RegexTextfield"; cell.detailTextLabel.text = [NSString stringWithFormat: @"%ld", (long) c.integer_RegexTextfield]; break;
                case 3: cell.textLabel.text = @"integer_List"; cell.detailTextLabel.text = [NSString stringWithFormat: @"%ld", (long) c.integer_List]; break;
                case 4: cell.textLabel.text = @"integer_Textfield_List"; cell.detailTextLabel.text = [NSString stringWithFormat: @"%ld", (long) c.integer_Textfield_List]; break;
                case 5: cell.textLabel.text = @"integer_RegexTextfield_List"; cell.detailTextLabel.text = [NSString stringWithFormat: @"%ld", (long) c.integer_RegexTextfield_List]; break;
            }
            break;
        case 3:
            switch (indexPath.row) {
                case 0: cell.textLabel.text = @"float_Slider"; cell.detailTextLabel.text = [NSString stringWithFormat: @"%0.3f", c.float_Slider]; break;
                case 1: cell.textLabel.text = @"float_Textfield"; cell.detailTextLabel.text = [NSString stringWithFormat: @"%0.3f", c.float_Textfield]; break;
                case 2: cell.textLabel.text = @"float_RegexTextfield"; cell.detailTextLabel.text = [NSString stringWithFormat: @"%0.3f", c.float_RegexTextfield]; break;
                case 3: cell.textLabel.text = @"float_List"; cell.detailTextLabel.text = [NSString stringWithFormat: @"%0.3f", c.float_List]; break;
                case 4: cell.textLabel.text = @"float_Textfield_List"; cell.detailTextLabel.text = [NSString stringWithFormat: @"%0.3f", c.float_Textfield_List]; break;
                case 5: cell.textLabel.text = @"float_RegexTextfield_List"; cell.detailTextLabel.text = [NSString stringWithFormat: @"%0.3f", c.float_RegexTextfield_List]; break;
            }
            break;
        case 4:
            switch (indexPath.row) {
                case 0: cell.textLabel.text = @"double_Slider"; cell.detailTextLabel.text = [NSString stringWithFormat: @"%0.3f", c.double_Slider]; break;
                case 1: cell.textLabel.text = @"double_Textfield"; cell.detailTextLabel.text = [NSString stringWithFormat: @"%0.3f", c.double_Textfield]; break;
                case 2: cell.textLabel.text = @"double_RegexTextfield"; cell.detailTextLabel.text = [NSString stringWithFormat: @"%0.3f", c.double_RegexTextfield]; break;
                case 3: cell.textLabel.text = @"double_List"; cell.detailTextLabel.text = [NSString stringWithFormat: @"%0.3f", c.double_List]; break;
                case 4: cell.textLabel.text = @"double_Textfield_List"; cell.detailTextLabel.text = [NSString stringWithFormat: @"%0.3f", c.double_Textfield_List]; break;
                case 5: cell.textLabel.text = @"double_RegexTextfield_List"; cell.detailTextLabel.text = [NSString stringWithFormat: @"%0.3f", c.double_RegexTextfield_List]; break;
            }
            break;
    }
    return cell;
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case 0: return 1;
        case 1: return 7;
        case 2: return 6;
        case 3: return 6;
        default: return 6;
    }
}

- (NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    switch (section) {
        case 0: return @"BOOL";
        case 1: return @"STRING";
        case 2: return @"INTEGER";
        case 3: return @"FLOAT";
        default: return @"DOUBLE";
    }
}

- (IBAction) done {
    [self.extensionContext completeRequestReturningItems:self.extensionContext.inputItems completionHandler:nil];
}

@end
