//
//  main.m
//  Nov17Demo
//
//  Created by kangkang on 2016/11/17.
//  Copyright © 2016年 kangkang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSMutableArray * mulArray = [[NSMutableArray alloc] initWithCapacity:26];
        
        // NSString
        NSMutableString * myString = [[NSMutableString alloc] initWithCapacity:26];
        [myString setString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZ"];
        [myString appendString:@", 0123456789"];
        [myString insertString:@"abcdffuio" atIndex:0];
         NSLog(@"$$$$%@",myString);
        
        
        NSRange rang = NSMakeRange(9, 3);
        [myString deleteCharactersInRange:rang];
        NSLog(@"^^^^%@",myString);
        
        NSRange rangeOfString = [myString rangeOfString:myString];
        [myString replaceOccurrencesOfString:@"," withString:@"|" options:NSCaseInsensitiveSearch range:rangeOfString];
        NSLog(@"%@",myString);
        
        NSRange replaceRang = NSMakeRange(0, 4);
        [myString replaceCharactersInRange:replaceRang withString:@"TodayMore"];
        NSLog(@"%@",myString);
        
        NSString * stringToSearch = @"This string is something that you can search ";
        NSRange rangeToSearch = [stringToSearch rangeOfString:stringToSearch];
        NSRange resultRange = [stringToSearch rangeOfString:stringToSearch options:NSCaseInsensitiveSearch range:rangeToSearch];
        
        if (resultRange.location != NSNotFound){
            NSLog(@"String found starting at location %lu with a length of %lu", resultRange.location, resultRange.length);
            NSLog(@"%@", [stringToSearch substringWithRange:resultRange]);
        }else{
            NSLog(@"The search didn't turn up any result.");
        }
        
        // change number to string
        
        float fNumber = 12;
        NSString *floatToString = [NSString stringWithFormat:@"%f", fNumber];
        NSLog(@"fNumber is %f",fNumber);
        NSLog(@"floatToString is %@",floatToString);
        
        NSNumber *number = [NSNumber numberWithFloat:30];
        NSString *numberToString = [number stringValue];
        NSLog(@"number is %@",number);
        NSLog(@"numberToString is %@",numberToString);
        
        // change string to number
        NSString *aFloatValue = @"12.50";
        float f = [aFloatValue floatValue];
        NSLog(@"f is %f", f);
//        NSNumber *aFloatNumber = [NSNumber numberWithFloat:[aFloatValue floatValue]];
        float res = f * 2 + 45;
        NSLog(@"f = %f and result = %f", f, res);
        NSNumber *aFloatNumber = [NSNumber numberWithFloat:[aFloatValue floatValue]];
        NSLog(@"aFloatNmber = %@", aFloatNumber);
        
        //
        NSNumber *numberToFormat = [NSNumber numberWithFloat:9.99];
        NSLog(@" numberToFormat is %@",numberToFormat);
        NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
        numberFormatter.numberStyle = NSNumberFormatterCurrencyStyle;
        NSLog(@"Formatter for currency : %@",[numberFormatter stringFromNumber:numberToFormat]);
        
        
    }
    return 0;
}
