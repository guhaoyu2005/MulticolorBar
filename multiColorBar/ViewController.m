//
//  ViewController.m
//  multiColorBar
//
//  Created by Haoyu Gu on 2015-05-20.
//  Copyright (c) 2015 Haoyu Gu. All rights reserved.
//

#import "ViewController.h"
#import "multiColorBar.h"

@interface ViewController ()
@property (nonatomic) multiColorBar *MCBar;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.MCBar = [[multiColorBar alloc] initWithFrame:CGRectMake(10, 250, 355, 40)];
    [self.view addSubview:self.MCBar];
    //[self.MCBar initBarWithPartsCount];
    [self.MCBar setBackgroundColor:[UIColor grayColor]];
    
}

- (IBAction)drawTap:(id)sender {
    [self.MCBar clearBar];
    [self.MCBar showValueNColors:@[@24,[UIColor redColor]],
     @[@12,[UIColor greenColor]],
     @[@10,[UIColor purpleColor]],
     @[@36,[UIColor yellowColor]],
     @[@18,[UIColor blueColor]],
     nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
