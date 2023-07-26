Class {
	#name : #FamixTypeScriptParameterizableClass,
	#superclass : #FamixTypeScriptClass,
	#traits : 'FamixTWithParameterizedTypes',
	#classTraits : 'FamixTWithParameterizedTypes classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptParameterizableClass class >> annotation [

	<FMClass: #ParameterizableClass super: #FamixTypeScriptClass>
	<package: #FamixTypeScript>
	<generated>
	^ self
]

{ #category : #accessing }
FamixTypeScriptParameterizableClass >> parameters [
	<FMProperty: #parameters type: #FamixTypeScriptParameterType> <multivalued> <derived>
	<FMComment: 'Parameter types of this class.'>
	
	^self types select: [:each | each isParameterType]
]

{ #category : #accessing }
FamixTypeScriptParameterizableClass >> parameters: aCollection [

	self attributeAt: #parameters put: aCollection
]
