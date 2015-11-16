//
//  ViewController.m
//  hiswift
//
//  Created by liweijian on 15/11/16.
//  Copyright © 2015年 liweijian. All rights reserved.
//

#import "ViewController.h"
#import "hiswift-swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    helloer *hello = [[helloer alloc] init];
    hello.con = self;
    NSString *s = [hello say];
    NSLog(@"objc: i got \"%@\" ",s);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSString*) sayfromobjc {
    NSString *s = @"say hi from objectC";
    NSLog(@"objc: %@",s);
    return s;
}

@end
