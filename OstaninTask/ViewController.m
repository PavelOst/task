

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
 
    Array = [[NSMutableArray alloc] init];
    [Array addObject:@"Останин Павел"];
    [Array addObject:@"Препелица Денис"];
    [Array addObject:@"Петрук Егор"];
    [tableview setDelegate:self];
    [tableview setDataSource:self];
   
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger) tableView: (UITableView*) tableView numberOfRowsInSection: (NSInteger) section
{

    return [Array count];
}

- (UITableViewCell*) tableView: (UITableView*) tableView cellForRowAtIndexPath: (NSIndexPath*) index_path
{

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell = [[UITableViewCell alloc] init];
    cell.textLabel.text = [Array objectAtIndex: index_path.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView
commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
forRowAtIndexPath:(NSIndexPath *)indexPath

{
        [Array removeObjectAtIndex:indexPath.row];
        [tableView reloadData];
}

-(IBAction)click
{
    
    if([tableview isEditing]==0 )[tableview setEditing:1];
    else [tableview setEditing:0];
}

- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath
      toIndexPath:(NSIndexPath *)toIndexPath
{
    [Array insertObject:[Array objectAtIndex:fromIndexPath.row] atIndex:toIndexPath.row];
}


@end
