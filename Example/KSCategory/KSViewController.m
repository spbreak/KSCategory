//
//  KSViewController.m
//  KSCategory
//
//  Created by spbreak on 11/16/2015.
//  Copyright (c) 2015 spbreak. All rights reserved.
//

#import "KSViewController.h"
#import "UIImage+KS.h"

@interface KSViewController ()

@end

@implementation KSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [UIImage createImageWithColor:[UIColor whiteColor]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
