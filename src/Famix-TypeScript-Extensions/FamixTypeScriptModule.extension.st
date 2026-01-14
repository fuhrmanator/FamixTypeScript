Extension { #name : 'FamixTypeScriptModule' }

{ #category : '*Famix-TypeScript-Extensions' }
FamixTypeScriptModule >> isAmbient [

	<FMProperty: #isAmbient type: #Boolean defaultValue: false>
	<FMComment: 'Entity can be declared as an Ambient'>
	^ isAmbient ifNil: [ isAmbient := false ]
]

{ #category : '*Famix-TypeScript-Extensions' }
FamixTypeScriptModule >> isAmbient: anObject [

	isAmbient := anObject
]

{ #category : '*Famix-TypeScript-Extensions' }
FamixTypeScriptModule >> isModule [

	<FMProperty: #isModule type: #Boolean defaultValue: false>
	<FMComment: 'Entity can be declared as a Module'>
	^ isModule ifNil: [ isModule := false ]
]

{ #category : '*Famix-TypeScript-Extensions' }
FamixTypeScriptModule >> isModule: anObject [

	isModule := anObject
]

{ #category : '*Famix-TypeScript-Extensions' }
FamixTypeScriptModule >> isNamespace [

	<FMProperty: #isNamespace type: #Boolean defaultValue: false>
	<FMComment: 'Entity can be declared as a Namespace'>
	^ isNamespace ifNil: [ isNamespace := false ]
]

{ #category : '*Famix-TypeScript-Extensions' }
FamixTypeScriptModule >> isNamespace: anObject [

	isNamespace := anObject
]
