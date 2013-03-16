//
//  MKMenuViewController.h
//  Milkyway
//
//  Created by epimobile on 06/03/13.
//  Copyright (c) 2013 epimobile. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MKMenuViewController : UICollectionViewController

@property(nonatomic, assign) id <UICollectionViewDataSource> dataSource;
@property(nonatomic, retain) NSMutableArray *categories;

@end
