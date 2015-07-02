//
//  ListTableViewDataSource.m
//  DayX
//
//  Created by James Carlson on 7/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ListTableViewDataSource.h"
#import <UIKit/UIKit.h>

@interface ListTableViewDataSource () <UITableViewDataSource>

@end

@implementation ListTableViewDataSource

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat:@"Entry %ld", (long)indexPath.row];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 5;
}

@end
