//
//  MKMenuViewController.m
//  Milkyway
//
//  Created by epimobile on 06/03/13.
//  Copyright (c) 2013 epimobile. All rights reserved.
//

#import "MKMenuViewController.h"

@interface MKMenuViewController ()

@end

@implementation MKMenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSMutableArray*)setCategories
{
    _categories = [[NSMutableArray alloc] init];
    NSMutableArray *monMilky = [NSMutableArray arrayWithObjects: @"News", @"Bibliothèque", @"Jobs", nil];
    NSMutableArray *pedagogie = [NSMutableArray arrayWithObjects: @"Planning", @"Statistique", nil];
    [_categories addObject:monMilky];
    [_categories addObject:pedagogie];
    return _categories;
}

@end
