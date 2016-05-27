//
//  ViewController.m
//  NSVPageCell
//
//  Created by srinivas on 4/23/16.
//  Copyright © 2016 Microexcel. All rights reserved.
//

#import "ViewController.h"
#import "NSVPageTable_Cell.h"

@interface ViewController (){
    NSArray *recipeArray ;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    recipeArray = [NSArray arrayWithObjects:@"angry_birds_cake.jpg", @"creme_brelee.jpg", @"egg_benedict.jpg", @"full_breakfast.jpg", @"green_tea.jpg", @"ham_and_cheese_panini.jpg", @"ham_and_egg_sandwich.jpg", @"hamburger.jpg", @"instant_noodle_with_egg.jpg", @"japanese_noodle_with_pork.jpg", @"mushroom_risotto.jpg", @"noodle_with_bbq_pork.jpg", @"starbucks_coffee.jpg", @"thai_shrimp_cake.jpg", @"vegetable_curry.jpg", @"white_chocolate_donut.jpg", @"", @"", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5 ;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSVPageTable_Cell *cell = (NSVPageTable_Cell *) [tableView dequeueReusableCellWithIdentifier:@"TableCell" forIndexPath:indexPath];
    cell.recipeImages = (NSMutableArray *)recipeArray;
    return cell ;
}


@end
