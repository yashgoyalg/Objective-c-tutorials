//
//  ViewController.m
//  TableView-obj-c
//
//  Created by SwordMac32 on 03/05/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize arrname, arrsurname;
- (void)viewDidLoad {
    [super viewDidLoad];
    arrname = [[NSMutableArray alloc]initWithObjects:@"Yash", @"Keerti", @"Naman", nil];
    arrsurname = [[NSMutableArray alloc]initWithObjects:@"Goyal", @"Pathrol", @"Tiwari", nil];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return arrname.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell==nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    cell.textLabel.text= [arrname objectAtIndex:indexPath.row];
    cell.detailTextLabel.text= [arrsurname objectAtIndex:indexPath.row];
    return cell;
}


@end
