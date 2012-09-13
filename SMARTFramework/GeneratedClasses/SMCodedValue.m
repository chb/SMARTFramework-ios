/*
 SMCodedValue.m
 SMARTFramework
 
 Generated by build-obj-c-classes.py on 2012-09-13.
 Copyright (c) 2012 CHIP, Boston Children's Hospital
 
 This library is free software; you can redistribute it and/or
 modify it under the terms of the GNU Lesser General Public
 License as published by the Free Software Foundation; either
 version 2.1 of the License, or (at your option) any later version.
 
 This library is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 Lesser General Public License for more details.
 
 You should have received a copy of the GNU Lesser General Public
 License along with this library; if not, write to the Free Software
 Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 */

#import "SMCodedValue.h"
#import "SMARTObjects.h"

#import <RedlandModel-Convenience.h>
#import <RedlandNode-Convenience.h>
#import <RedlandStatement.h>
#import <RedlandStreamEnumerator.h>


@implementation SMCodedValue


#pragma mark - Synthesized Lazy Getter
- (SMCode *)code
{
	if (!_code) {
		
		// get the "code" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#code"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		self.code = [SMCode newWithSubject:rslt.object inModel:self.model];
	}
	return _code;
}

- (NSArray *)provenance
{
	if (!_provenance) {
		
		// get the "provenance" elements
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#provenance"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		
		// loop through the results
		NSMutableArray *arr = [NSMutableArray array];
		RedlandStatement *rslt = nil;
		while ((rslt = [query nextObject])) {
			
			// instantiate an item for each object
			SMCodeProvenance *newItem = [SMCodeProvenance newWithSubject:rslt.object inModel:self.model];
			if (newItem) {
				[arr addObject:newItem];
			}
		}
		self.provenance = arr;
	}
	return _provenance;
}

- (NSString *)title
{
	if (!_title) {
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://purl.org/dc/terms/title"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		
		RedlandStatement *rslt = [query nextObject];
		self.title = [rslt.object literalValue];
	}
	return _title;
}



#pragma mark - Class Properties
+ (NSString *)rdfType
{
	return @"http://smartplatforms.org/terms#CodedValue";
}




@end