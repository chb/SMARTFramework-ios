/*
 SMVitalSignSet.m
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

#import "SMVitalSignSet.h"
#import "SMARTObjects.h"

#import <Redland-ObjC.h>


@implementation SMVitalSignSet


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

@synthesize bloodPressure = _bloodPressure;

- (SMBloodPressure *)bloodPressure
{
	if (!_bloodPressure) {
		
		// get the "bloodPressure" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#bloodPressure"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMBloodPressure *obj = [SMBloodPressure newWithSubject:rslt.object inModel:self.inModel];
		_bloodPressure = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _bloodPressure) {
		return nil;
	}
	
	return _bloodPressure;
}

- (void)setBloodPressure:(SMBloodPressure *)bloodPressure
{
	if (bloodPressure != _bloodPressure) {
		RedlandNode *predicate = (bloodPressure || _bloodPressure) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#bloodPressure"] : nil;
		if (_bloodPressure) {
			[self.inModel removeSubmodel:_bloodPressure.model];
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_bloodPressure = bloodPressure;
		
		if (_bloodPressure) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:_bloodPressure.subject]];
			[self.inModel addSubmodel:_bloodPressure.model];
		}
	}
}

@synthesize bodyMassIndex = _bodyMassIndex;

- (SMVitalSign *)bodyMassIndex
{
	if (!_bodyMassIndex) {
		
		// get the "bodyMassIndex" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#bodyMassIndex"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMVitalSign *obj = [SMVitalSign newWithSubject:rslt.object inModel:self.inModel];
		_bodyMassIndex = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _bodyMassIndex) {
		return nil;
	}
	
	return _bodyMassIndex;
}

- (void)setBodyMassIndex:(SMVitalSign *)bodyMassIndex
{
	if (bodyMassIndex != _bodyMassIndex) {
		RedlandNode *predicate = (bodyMassIndex || _bodyMassIndex) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#bodyMassIndex"] : nil;
		if (_bodyMassIndex) {
			[self.inModel removeSubmodel:_bodyMassIndex.model];
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_bodyMassIndex = bodyMassIndex;
		
		if (_bodyMassIndex) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:_bodyMassIndex.subject]];
			[self.inModel addSubmodel:_bodyMassIndex.model];
		}
	}
}

@synthesize date = _date;

- (NSString *)date
{
	if (!_date) {
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://purl.org/dc/terms/date"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		
		RedlandStatement *rslt = [query nextObject];
		_date = [rslt.object literalValue];
	}
	return _date;
}

- (void)setDate:(NSString *)date
{
	if (date != _date) {
		RedlandNode *predicate = (date || _date) ? [RedlandNode nodeWithURIString:@"http://purl.org/dc/terms/date"] : nil;
		if (_date) {
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_date = [date copy];
		
		if (_date) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:[_date nodeValue]]];
		}
	}
}

@synthesize encounter = _encounter;

- (SMEncounter *)encounter
{
	if (!_encounter) {
		
		// get the "encounter" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#encounter"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMEncounter *obj = [SMEncounter newWithSubject:rslt.object inModel:self.inModel];
		_encounter = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _encounter) {
		return nil;
	}
	
	return _encounter;
}

- (void)setEncounter:(SMEncounter *)encounter
{
	if (encounter != _encounter) {
		RedlandNode *predicate = (encounter || _encounter) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#encounter"] : nil;
		if (_encounter) {
			[self.inModel removeSubmodel:_encounter.model];
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_encounter = encounter;
		
		if (_encounter) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:_encounter.subject]];
			[self.inModel addSubmodel:_encounter.model];
		}
	}
}

@synthesize headCircumference = _headCircumference;

- (SMVitalSign *)headCircumference
{
	if (!_headCircumference) {
		
		// get the "headCircumference" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#headCircumference"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMVitalSign *obj = [SMVitalSign newWithSubject:rslt.object inModel:self.inModel];
		_headCircumference = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _headCircumference) {
		return nil;
	}
	
	return _headCircumference;
}

- (void)setHeadCircumference:(SMVitalSign *)headCircumference
{
	if (headCircumference != _headCircumference) {
		RedlandNode *predicate = (headCircumference || _headCircumference) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#headCircumference"] : nil;
		if (_headCircumference) {
			[self.inModel removeSubmodel:_headCircumference.model];
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_headCircumference = headCircumference;
		
		if (_headCircumference) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:_headCircumference.subject]];
			[self.inModel addSubmodel:_headCircumference.model];
		}
	}
}

@synthesize heartRate = _heartRate;

- (SMVitalSign *)heartRate
{
	if (!_heartRate) {
		
		// get the "heartRate" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#heartRate"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMVitalSign *obj = [SMVitalSign newWithSubject:rslt.object inModel:self.inModel];
		_heartRate = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _heartRate) {
		return nil;
	}
	
	return _heartRate;
}

- (void)setHeartRate:(SMVitalSign *)heartRate
{
	if (heartRate != _heartRate) {
		RedlandNode *predicate = (heartRate || _heartRate) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#heartRate"] : nil;
		if (_heartRate) {
			[self.inModel removeSubmodel:_heartRate.model];
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_heartRate = heartRate;
		
		if (_heartRate) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:_heartRate.subject]];
			[self.inModel addSubmodel:_heartRate.model];
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

@synthesize oxygenSaturation = _oxygenSaturation;

- (SMVitalSign *)oxygenSaturation
{
	if (!_oxygenSaturation) {
		
		// get the "oxygenSaturation" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#oxygenSaturation"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMVitalSign *obj = [SMVitalSign newWithSubject:rslt.object inModel:self.inModel];
		_oxygenSaturation = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _oxygenSaturation) {
		return nil;
	}
	
	return _oxygenSaturation;
}

- (void)setOxygenSaturation:(SMVitalSign *)oxygenSaturation
{
	if (oxygenSaturation != _oxygenSaturation) {
		RedlandNode *predicate = (oxygenSaturation || _oxygenSaturation) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#oxygenSaturation"] : nil;
		if (_oxygenSaturation) {
			[self.inModel removeSubmodel:_oxygenSaturation.model];
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_oxygenSaturation = oxygenSaturation;
		
		if (_oxygenSaturation) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:_oxygenSaturation.subject]];
			[self.inModel addSubmodel:_oxygenSaturation.model];
		}
	}
}

@synthesize respiratoryRate = _respiratoryRate;

- (SMVitalSign *)respiratoryRate
{
	if (!_respiratoryRate) {
		
		// get the "respiratoryRate" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#respiratoryRate"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMVitalSign *obj = [SMVitalSign newWithSubject:rslt.object inModel:self.inModel];
		_respiratoryRate = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _respiratoryRate) {
		return nil;
	}
	
	return _respiratoryRate;
}

- (void)setRespiratoryRate:(SMVitalSign *)respiratoryRate
{
	if (respiratoryRate != _respiratoryRate) {
		RedlandNode *predicate = (respiratoryRate || _respiratoryRate) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#respiratoryRate"] : nil;
		if (_respiratoryRate) {
			[self.inModel removeSubmodel:_respiratoryRate.model];
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_respiratoryRate = respiratoryRate;
		
		if (_respiratoryRate) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:_respiratoryRate.subject]];
			[self.inModel addSubmodel:_respiratoryRate.model];
		}
	}
}

@synthesize temperature = _temperature;

- (SMVitalSign *)temperature
{
	if (!_temperature) {
		
		// get the "temperature" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#temperature"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMVitalSign *obj = [SMVitalSign newWithSubject:rslt.object inModel:self.inModel];
		_temperature = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _temperature) {
		return nil;
	}
	
	return _temperature;
}

- (void)setTemperature:(SMVitalSign *)temperature
{
	if (temperature != _temperature) {
		RedlandNode *predicate = (temperature || _temperature) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#temperature"] : nil;
		if (_temperature) {
			[self.inModel removeSubmodel:_temperature.model];
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_temperature = temperature;
		
		if (_temperature) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:_temperature.subject]];
			[self.inModel addSubmodel:_temperature.model];
		}
	}
}

@synthesize weight = _weight;

- (SMVitalSign *)weight
{
	if (!_weight) {
		
		// get the "weight" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#weight"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMVitalSign *obj = [SMVitalSign newWithSubject:rslt.object inModel:self.inModel];
		_weight = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _weight) {
		return nil;
	}
	
	return _weight;
}

- (void)setWeight:(SMVitalSign *)weight
{
	if (weight != _weight) {
		RedlandNode *predicate = (weight || _weight) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#weight"] : nil;
		if (_weight) {
			[self.inModel removeSubmodel:_weight.model];
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_weight = weight;
		
		if (_weight) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:_weight.subject]];
			[self.inModel addSubmodel:_weight.model];
		}
	}
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
