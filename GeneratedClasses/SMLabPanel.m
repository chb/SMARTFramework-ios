/*
 SMLabPanel.m
 SMARTFramework
 
 Generated by build-obj-c-classes.py on 2013-06-14.
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

#import "SMLabPanel.h"
#import "SMARTObjects.h"

#import <Redland-ObjC.h>


@implementation SMLabPanel


#pragma mark - Synthesized Lazy Getter
@synthesize belongsTo = _belongsTo;

- (SMMedicalRecord *)belongsTo
{
	if (!_belongsTo) {
		
		// get the "belongsTo" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#belongsTo"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMMedicalRecord *obj = [SMMedicalRecord newWithSubject:rslt.object inModel:self.inModel];
		_belongsTo = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _belongsTo) {
		return nil;
	}
	
	return _belongsTo;
}

- (void)setBelongsTo:(SMMedicalRecord *)belongsTo
{
	if (belongsTo != _belongsTo) {
		RedlandNode *predicate = (belongsTo || _belongsTo) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#belongsTo"] : nil;
		if (_belongsTo) {
			[self.inModel removeSubmodel:_belongsTo.model];
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_belongsTo = belongsTo;
		
		if (_belongsTo) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:_belongsTo.subject]];
			[self.inModel addSubmodel:_belongsTo.model];
		}
	}
}

@synthesize labName = _labName;

- (SMCodedValue *)labName
{
	if (!_labName) {
		
		// get the "labName" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#labName"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMCodedValue *obj = [SMCodedValue newWithSubject:rslt.object inModel:self.inModel];
		_labName = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _labName) {
		return nil;
	}
	
	return _labName;
}

- (void)setLabName:(SMCodedValue *)labName
{
	if (labName != _labName) {
		RedlandNode *predicate = (labName || _labName) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#labName"] : nil;
		if (_labName) {
			[self.inModel removeSubmodel:_labName.model];
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_labName = labName;
		
		if (_labName) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:_labName.subject]];
			[self.inModel addSubmodel:_labName.model];
		}
	}
}

@synthesize labResult = _labResult;

- (NSArray *)labResult
{
	if (!_labResult) {
		
		// get the "labResult" elements
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#labResult"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		
		// loop through the results
		NSMutableArray *arr = [NSMutableArray array];
		RedlandStatement *rslt = nil;
		while ((rslt = [query nextObject])) {
			
			// instantiate an item for each object
			SMLabResult *newItem = [SMLabResult newWithSubject:rslt.object inModel:self.inModel];
			if (newItem) {
				[arr addObject:newItem];
			}
		}
		_labResult = [arr copy];
	}
	return _labResult;
}

- (void)setLabResult:(NSArray *)labResult
{
	if (labResult != _labResult) {
		RedlandNode *predicate = (labResult || _labResult) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#labResult"] : nil;
		if (_labResult) {
			for (SMLabResult *item in _labResult) {
				[self.inModel removeSubmodel:item.model];
			}
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_labResult = [labResult copy];
		
		if (_labResult) {
			for (SMLabResult *item in _labResult) {
				[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:item.subject]];
				[self.inModel addSubmodel:item.model];
			}
		}
	}
}



#pragma mark - Class Properties
+ (NSString *)rdfType
{
	return @"http://smartplatforms.org/terms#LabPanel";
}

+ (NSString *)basePath
{
	return @"/records/{record_id}/lab_panels/{lab_panel_id}";
}


@end
