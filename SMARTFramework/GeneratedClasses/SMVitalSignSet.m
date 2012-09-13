/*
 SMVitalSignSet.m
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

#import "SMVitalSignSet.h"
#import "SMARTObjects.h"

#import <RedlandModel-Convenience.h>
#import <RedlandNode-Convenience.h>
#import <RedlandStatement.h>
#import <RedlandStreamEnumerator.h>


@implementation SMVitalSignSet


#pragma mark - Synthesized Lazy Getter
- (SMMedicalRecord *)belongsTo
{
	if (!_belongsTo) {
		
		// get the "belongsTo" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#belongsTo"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		self.belongsTo = [SMMedicalRecord newWithSubject:rslt.object inModel:self.model];
	}
	return _belongsTo;
}

- (SMBloodPressure *)bloodPressure
{
	if (!_bloodPressure) {
		
		// get the "bloodPressure" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#bloodPressure"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		self.bloodPressure = [SMBloodPressure newWithSubject:rslt.object inModel:self.model];
	}
	return _bloodPressure;
}

- (SMVitalSign *)bodyMassIndex
{
	if (!_bodyMassIndex) {
		
		// get the "bodyMassIndex" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#bodyMassIndex"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		self.bodyMassIndex = [SMVitalSign newWithSubject:rslt.object inModel:self.model];
	}
	return _bodyMassIndex;
}

- (NSString *)date
{
	if (!_date) {
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://purl.org/dc/terms/date"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		
		RedlandStatement *rslt = [query nextObject];
		self.date = [rslt.object literalValue];
	}
	return _date;
}

- (SMEncounter *)encounter
{
	if (!_encounter) {
		
		// get the "encounter" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#encounter"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		self.encounter = [SMEncounter newWithSubject:rslt.object inModel:self.model];
	}
	return _encounter;
}

- (SMVitalSign *)headCircumference
{
	if (!_headCircumference) {
		
		// get the "headCircumference" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#headCircumference"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		self.headCircumference = [SMVitalSign newWithSubject:rslt.object inModel:self.model];
	}
	return _headCircumference;
}

- (SMVitalSign *)heartRate
{
	if (!_heartRate) {
		
		// get the "heartRate" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#heartRate"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		self.heartRate = [SMVitalSign newWithSubject:rslt.object inModel:self.model];
	}
	return _heartRate;
}

- (SMVitalSign *)height
{
	if (!_height) {
		
		// get the "height" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#height"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		self.height = [SMVitalSign newWithSubject:rslt.object inModel:self.model];
	}
	return _height;
}

- (SMVitalSign *)oxygenSaturation
{
	if (!_oxygenSaturation) {
		
		// get the "oxygenSaturation" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#oxygenSaturation"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		self.oxygenSaturation = [SMVitalSign newWithSubject:rslt.object inModel:self.model];
	}
	return _oxygenSaturation;
}

- (SMVitalSign *)respiratoryRate
{
	if (!_respiratoryRate) {
		
		// get the "respiratoryRate" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#respiratoryRate"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		self.respiratoryRate = [SMVitalSign newWithSubject:rslt.object inModel:self.model];
	}
	return _respiratoryRate;
}

- (SMVitalSign *)temperature
{
	if (!_temperature) {
		
		// get the "temperature" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#temperature"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		self.temperature = [SMVitalSign newWithSubject:rslt.object inModel:self.model];
	}
	return _temperature;
}

- (SMVitalSign *)weight
{
	if (!_weight) {
		
		// get the "weight" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#weight"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		self.weight = [SMVitalSign newWithSubject:rslt.object inModel:self.model];
	}
	return _weight;
}



#pragma mark - Class Properties
+ (NSString *)rdfType
{
	return @"http://smartplatforms.org/terms#VitalSignSet";
}

+ (NSString *)basePath
{
	return @"/records/{record_id}/vital_sign_sets/{vital_sign_set_id}";
}


@end