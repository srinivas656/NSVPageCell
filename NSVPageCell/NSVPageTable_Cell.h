//
//  NSVPageTable_Cell.h
//  NSVPageCell
//
//  Created by srinivas on 4/26/16.
//  Copyright © 2016 Microexcel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSVPageTable_Cell : UITableViewCell <UIScrollViewDelegate>
@property (nonatomic,retain) IBOutlet UIScrollView *scView ;
@property (nonatomic,retain) IBOutlet UIPageControl *pageController ;
@property (nonatomic,retain) IBOutlet NSMutableArray *recipeImages ;
@end
