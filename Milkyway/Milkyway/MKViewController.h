//
//  MKViewController.h
//  Milkyway
//
//  Created by epimobile on 05/02/13.
//  Copyright (c) 2013 epimobile. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MKViewController : UIViewController<UICollectionViewDataSource, UICollectionViewDelegate>

@property(nonatomic, retain) IBOutlet UICollectionView *MKUICollectionView;

@end
