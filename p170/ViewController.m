//
//  ViewController.m
//  p170
//
//  Created by SDT-1 on 2014. 1. 6..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"
#define CELL_1 @"CELL_1"
#define CELL_2 @"CELL_2"

@interface ViewController ()<UITableViewDataSource>{
    NSArray *data1, *data2;
}

@end

@implementation ViewController
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if(0==section)
        return [data1 count];
    else
        return [data2 count];
    }

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell;
    if(0==indexPath.section){
        cell = [tableView dequeueReusableCellWithIdentifier:CELL_1];
        cell.textLabel.text = data1[indexPath.row];
    }
    else{
        cell = [tableView dequeueReusableCellWithIdentifier:CELL_2];
        cell.textLabel.text = data2[indexPath.row];
    }
    return cell;
}

-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return [NSString stringWithFormat:@"Section Header %ld",section];
}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    return @"End of Section";
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    data1=@[@"a",@"b",@"c",@"d",@"e"];
    data2=@[@"1",@"2",@"3",@"4",@"5"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
