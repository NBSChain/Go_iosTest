//
//  ViewController.m
//  Go_iosTest
//
//  Created by pro on 2018/9/6.
//  Copyright © 2018年 noSweet. All rights reserved.
//

#import "ViewController.h"
@import Hello;

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)buttonClick:(id)sender {
    NSLog(@"text == %@",HelloGreetings(@"World!(go)"));
    _label.text = HelloGreetings(@"World!(go)");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
