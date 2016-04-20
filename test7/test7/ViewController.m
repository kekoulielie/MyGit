//
//  ViewController.m
//  test7
//
//  Created by xian on 16-4-12.
//  Copyright (c) 2016年 TMR_fan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *array = [[NSArray alloc]initWithObjects:@"第3关   1024分",@"第7关   1643分",@"第1关   1030分",@"第5关   1109分",@"第2关   1004分",@"第5关   1245分",@"第3关   1180分",@"第6关   1050分",@"第6关   1090分", nil];
    NSComparator sort = ^(id string1,id string2){
        NSRange range = NSMakeRange(6,4);
        NSString *s1 = [string1 substringWithRange:range];
        NSString *s2 = [string2 substringWithRange:range];
        if ([s1 integerValue] > [s2 integerValue]) {
            return (NSComparisonResult)NSOrderedDescending;
        }else if ([s1 integerValue] < [s2 integerValue]){
            return (NSComparisonResult)NSOrderedAscending;
        }
        else
            return (NSComparisonResult)NSOrderedSame;
    };
    NSArray *arr = [array sortedArrayUsingComparator:sort];
    NSLog(@"%@",arr);
}


- (IBAction)click:(id)sender {
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
