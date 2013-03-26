//
//  MKMenuViewController.m
//  Milkyway
//
//  Created by epimobile on 06/03/13.
//  Copyright (c) 2013 epimobile. All rights reserved.
//

#import "MKMenuViewController.h"
#import "MKCollectionCell.h"

@interface MKMenuViewController ()

@end

@implementation MKMenuViewController
@synthesize categories = _categories;
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
    [self initCategories];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) initCategories
{
    _categories = [[NSMutableDictionary alloc] init];
    NSMutableArray *monMilky = [NSMutableArray arrayWithObjects: @"News", @"Bibliothèque", @"Jobs", nil];
    NSMutableArray *pedagogie = [NSMutableArray arrayWithObjects: @"Planning", @"Statistique", nil];
    [_categories setObject: monMilky forKey: @"Milky"];
    [_categories setObject: pedagogie forKey: @"Pedagogie"];
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return (([_categories count] / 3) + ([_categories count] % 3 ? 1 : 0));
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if ([_categories count] < ((section + 1) * 3))
        return [_categories count] % 3;
    else if ([_categories count] != 0)
        return  3;
    
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    MKCollectionCell   *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath: indexPath];
    
    NSArray *keys = [_categories allKeys];
    
    [cell.label setText: [keys objectAtIndex: (indexPath.section * 3) + indexPath.row]];
    cell.ImageView.image = [UIImage imageNamed: @"Milky.png"];
    return cell;
    
   /* CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    Bird *bird = [birds objectAtIndex:(indexPath.section*2 + indexPath.row)];
    cell.label.text = bird.birdName;
    cell.imageView.image = [UIImage imageNamed:bird.imageName];
    return cell;
    */
}


@end
