//
//  ViewControllerA.m
//  NavigationExample
//
//  Created by spb-VBerkuta on 25/01/16.
//  Copyright © 2016 spb-VBerkuta. All rights reserved.
//

#import "ViewControllerA.h"
#import "ViewControllerB.h"
#import "GoBackProtocol.h"

@interface ViewControllerA () <GoBackProtocol>

@end

@implementation ViewControllerA

- (IBAction)pushController:(UIButton *)sender
{
    ViewControllerB *nextControllerv = [ViewControllerB new];
    nextControllerv.delegate = self;
    [self.navigationController pushViewController:nextControllerv animated:YES];
}

#pragma mark - GoBackProtocol

- (void)controller:(UIViewController *)controller didPressBackButton:(UIButton *)button
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
