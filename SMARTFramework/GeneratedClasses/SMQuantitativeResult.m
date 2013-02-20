/*
 SMQuantitativeResult.m
 SMARTFramework
 
 Generated by build-obj-c-classes.py on 2013-02-20.
 Copyright (c) 2013 CHIP, Boston Children's Hospital
 
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

#import "SMQuantitativeResult.h"
#import "SMARTObjects.h"

#import <Redland-ObjC.h>


@implementation SMQuantitativeResult


#pragma mark - Synthesized Lazy Getter
- (SMValueRange *)nonCriticalRange
{
	if (!_nonCriticalRange) {
		
		// get the "nonCriticalRange" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#nonCriticalRange"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMValueRange *obj = [SMValueRange newWithSubject:rslt.object inModel:self.model];
		self.nonCriticalRange = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	else if ((id)[NSNull null] == _nonCriticalRange) {
		return nil;
	}
	
	return _nonCriticalRange;
}

- (SMValueRange *)normalRange
{
	if (!_normalRange) {
		
		// get the "normalRange" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#normalRange"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMValueRange *obj = [SMValueRange newWithSubject:rslt.object inModel:self.model];
		self.normalRange = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	else if ((id)[NSNull null] == _normalRange) {
		return nil;
	}
	
	return _normalRange;
}

- (SMValueAndUnit *)valueAndUnit
{
	if (!_valueAndUnit) {
		
		// get the "valueAndUnit" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#valueAndUnit"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMValueAndUnit *obj = [SMValueAndUnit newWithSubject:rslt.object inModel:self.model];
		self.valueAndUnit = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	else if ((id)[NSNull null] == _valueAndUnit) {
		return nil;
	}
	
	return _valueAndUnit;
}



#pragma mark - Class Properties
+ (NSString *)rdfType
{
	return @"http://smartplatforms.org/terms#QuantitativeResult";
}




@end
