"
I represent a TypeScript class property.

## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `parentType` | `FamixTAttribute` | `attributes` | `FamixTWithAttributes` | Type declaring the attribute. belongsTo implementation|

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `incomingAccesses` | `FamixTAccessible` | `variable` | `FamixTAccess` | All Famix accesses pointing to this structural entity|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `declaredType` | `FamixTTypedEntity` | `typedEntities` | `FamixTType` | Type of the entity, if any|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isClassSide` | `Boolean` | false | Entity can be declared class side i.e. static|
| `isDefinitelyAssigned` | `Boolean` | false | Properties may be postfixed with a definitely assigned modifier.|
| `isJavaScriptPrivate` | `Boolean` | false | Properties may be postfixed with a private modifier that makes the property private even in JavaScript.|
| `isOptional` | `Boolean` | false | Properties may be postfixed with an optional modifier.|
| `isStub` | `Boolean` | false | Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.|
| `name` | `String` | nil | Basic name of the entity, not full reference.|
| `readOnly` | `Boolean` | false | Properties may be prefixed with the readonly modifier. This prevents assignments to the field outside of the constructor.|
| `visibility` | `String` | nil | Visibility of the entity|

"
Class {
	#name : 'FamixTypeScriptProperty',
	#superclass : 'FamixTypeScriptStructuralEntity',
	#traits : 'FamixTAttribute + FamixTCanBeClassSide + FamixTHasVisibility',
	#classTraits : 'FamixTAttribute classTrait + FamixTCanBeClassSide classTrait + FamixTHasVisibility classTrait',
	#instVars : [
		'#readOnly => FMProperty defaultValue: false',
		'#isDefinitelyAssigned => FMProperty defaultValue: false',
		'#isOptional => FMProperty defaultValue: false',
		'#isJavaScriptPrivate => FMProperty defaultValue: false'
	],
	#category : 'Famix-TypeScript-Entities-Entities',
	#package : 'Famix-TypeScript-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixTypeScriptProperty class >> annotation [

	<FMClass: #Property super: #FamixTypeScriptStructuralEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]

{ #category : 'accessing' }
FamixTypeScriptProperty >> isDefinitelyAssigned [

	<FMProperty: #isDefinitelyAssigned type: #Boolean defaultValue: false>
	<generated>
	<FMComment: 'Properties may be postfixed with a definitely assigned modifier.'>
	^ isDefinitelyAssigned ifNil: [ isDefinitelyAssigned := false ]
]

{ #category : 'accessing' }
FamixTypeScriptProperty >> isDefinitelyAssigned: anObject [
	<generated>
	isDefinitelyAssigned := anObject
]

{ #category : 'accessing' }
FamixTypeScriptProperty >> isJavaScriptPrivate [

	<FMProperty: #isJavaScriptPrivate type: #Boolean defaultValue: false>
	<generated>
	<FMComment: 'Properties may be postfixed with a private modifier that makes the property private even in JavaScript.'>
	^ isJavaScriptPrivate ifNil: [ isJavaScriptPrivate := false ]
]

{ #category : 'accessing' }
FamixTypeScriptProperty >> isJavaScriptPrivate: anObject [
	<generated>
	isJavaScriptPrivate := anObject
]

{ #category : 'accessing' }
FamixTypeScriptProperty >> isOptional [

	<FMProperty: #isOptional type: #Boolean defaultValue: false>
	<generated>
	<FMComment: 'Properties may be postfixed with an optional modifier.'>
	^ isOptional ifNil: [ isOptional := false ]
]

{ #category : 'accessing' }
FamixTypeScriptProperty >> isOptional: anObject [
	<generated>
	isOptional := anObject
]

{ #category : 'accessing' }
FamixTypeScriptProperty >> readOnly [

	<FMProperty: #readOnly type: #Boolean defaultValue: false>
	<generated>
	<FMComment: 'Properties may be prefixed with the readonly modifier. This prevents assignments to the field outside of the constructor.'>
	^ readOnly ifNil: [ readOnly := false ]
]

{ #category : 'accessing' }
FamixTypeScriptProperty >> readOnly: anObject [
	<generated>
	readOnly := anObject
]
