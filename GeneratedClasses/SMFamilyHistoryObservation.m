/*
 SMFamilyHistoryObservation.m
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

#import "SMFamilyHistoryObservation.h"
#import "SMARTObjects.h"

#import <Redland-ObjC.h>


@implementation SMFamilyHistoryObservation


#pragma mark - Synthesized Lazy Getter
@synthesize aboutRelative = _aboutRelative;

- (SMCodedValue *)aboutRelative
{
	if (!_aboutRelative) {
		
		// get the "aboutRelative" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#aboutRelative"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMCodedValue *obj = [SMCodedValue newWithSubject:rslt.object inModel:self.inModel];
		_aboutRelative = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _aboutRelative) {
		return nil;
	}
	
	return _aboutRelative;
}

- (void)setAboutRelative:(SMCodedValue *)aboutRelative
{
	if (aboutRelative != _aboutRelative) {
		RedlandNode *predicate = (aboutRelative || _aboutRelative) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#aboutRelative"] : nil;
		if (_aboutRelative) {
			[self.inModel removeSubmodel:_aboutRelative.model];
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_aboutRelative = aboutRelative;
		
		if (_aboutRelative) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:_aboutRelative.subject]];
			[self.inModel addSubmodel:_aboutRelative.model];
		}
	}
}

@synthesize bday = _bday;

- (NSString *)bday
{
	if (!_bday) {
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://www.w3.org/2006/vcard/ns#bday"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		
		RedlandStatement *rslt = [query nextObject];
		_bday = [rslt.object literalValue];
	}
	return _bday;
}

- (void)setBday:(NSString *)bday
{
	if (bday != _bday) {
		RedlandNode *predicate = (bday || _bday) ? [RedlandNode nodeWithURIString:@"http://www.w3.org/2006/vcard/ns#bday"] : nil;
		if (_bday) {
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_bday = [bday copy];
		
		if (_bday) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:[_bday nodeValue]]];
		}
	}
}

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

@synthesize deathdate = _deathdate;

- (NSString *)deathdate
{
	if (!_deathdate) {
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://www.w3.org/2006/vcard/ns#deathdate"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		
		RedlandStatement *rslt = [query nextObject];
		_deathdate = [rslt.object literalValue];
	}
	return _deathdate;
}

- (void)setDeathdate:(NSString *)deathdate
{
	if (deathdate != _deathdate) {
		RedlandNode *predicate = (deathdate || _deathdate) ? [RedlandNode nodeWithURIString:@"http://www.w3.org/2006/vcard/ns#deathdate"] : nil;
		if (_deathdate) {
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_deathdate = [deathdate copy];
		
		if (_deathdate) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:[_deathdate nodeValue]]];
		}
	}
}

@synthesize hasProblem = _hasProblem;

- (NSArray *)hasProblem
{
	if (!_hasProblem) {
		
		// get the "hasProblem" elements
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#hasProblem"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		
		// loop through the results
		NSMutableArray *arr = [NSMutableArray array];
		RedlandStatement *rslt = nil;
		while ((rslt = [query nextObject])) {
			
			// instantiate an item for each object
			SMCodedValue *newItem = [SMCodedValue newWithSubject:rslt.object inModel:self.inModel];
			if (newItem) {
				[arr addObject:newItem];
			}
		}
		_hasProblem = [arr copy];
	}
	return _hasProblem;
}

- (void)setHasProblem:(NSArray *)hasProblem
{
	if (hasProblem != _hasProblem) {
		RedlandNode *predicate = (hasProblem || _hasProblem) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#hasProblem"] : nil;
		if (_hasProblem) {
			for (SMCodedValue *item in _hasProblem) {
				[self.inModel removeSubmodel:item.model];
			}
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_hasProblem = [hasProblem copy];
		
		if (_hasProblem) {
			for (SMCodedValue *item in _hasProblem) {
				[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:item.subject]];
				[self.inModel addSubmodel:item.model];
			}
		}
	}
}

@synthesize height = _height;

- (SMVitalSign *)height
{
	if (!_height) {
		
		// get the "height" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#height"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMVitalSign *obj = [SMVitalSign newWithSubject:rslt.object inModel:self.inModel];
		_height = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _height) {
		return nil;
	}
	
	return _height;
}

- (void)setHeight:(SMVitalSign *)height
{
	if (height != _height) {
		RedlandNode *predicate = (height || _height) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#height"] : nil;
		if (_height) {
			[self.inModel removeSubmodel:_height.model];
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_height = height;
		
		if (_height) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:_height.subject]];
			[self.inModel addSubmodel:_height.model];
		}
	}
}



#pragma mark - Class Properties
+ (NSString *)rdfType
{
	return @"http://smartplatforms.org/terms#FamilyHistory";
}

+ (NSString *)basePath
{
	return @"/records/{record_id}/family_history/{family_history_id}";
}


@end
