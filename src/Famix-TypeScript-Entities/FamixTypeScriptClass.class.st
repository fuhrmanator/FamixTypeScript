Class {
	#name : #FamixTypeScriptClass,
	#superclass : #FamixTypeScriptType,
	#traits : 'FamixTCanBeAbstract + FamixTClass + FamixTLCOMMetrics + FamixTypeScriptTClassMetrics',
	#classTraits : 'FamixTCanBeAbstract classTrait + FamixTClass classTrait + FamixTLCOMMetrics classTrait + FamixTypeScriptTClassMetrics classTrait',
	#instVars : [
		'#isInterface => FMProperty'
	],
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptClass class >> annotation [

	<FMClass: #Class super: #FamixTypeScriptType>
	<package: #FamixTypeScript>
	<generated>
	^self
]

{ #category : #'Famix-Extensions-metrics-support' }
FamixTypeScriptClass >> accessedAttributes [
	
	"Returns my attributes accessed by my methods. If the same attribute is accessed 
	by two different methods it is counted twice.
	Used to support the calculation of LCOM"
	
	^ self methodsWithoutSutbsAndConstructors asOrderedCollection flatCollect: [ :method | method accessedAttributes ]
]

{ #category : #accessing }
FamixTypeScriptClass >> isInterface [

	<FMProperty: #isInterface type: #Boolean>
	<generated>
	<FMComment: 'Entity can be an abstraction representing an implementationless interface (language dependent)'>
	^ isInterface
]

{ #category : #accessing }
FamixTypeScriptClass >> isInterface: anObject [
	<generated>
	isInterface := anObject
]

{ #category : #'Famix-Extensions-metrics-support' }
FamixTypeScriptClass >> methodsWithoutSutbsAndConstructors [

	"Removing stub and contructor methods. Used to support the calculation of LCOM."
	
	^ (self methods select: [ :each | 
		each isStub not and: [each isConstructor not]]) asSet
]
