Extension { #name : #FamixTypeScriptParameterizableClass }

{ #category : #'*Famix-TypeScript-Extensions' }
FamixTypeScriptParameterizableClass >> parameters [
	<FMProperty: #parameters type: #FamixTypeScriptParameterType> <multivalued> <derived>
	<FMComment: 'Parameter types of this class.'>
	
	^self types select: [:each | each isParameterType]
]

{ #category : #'*Famix-TypeScript-Extensions' }
FamixTypeScriptParameterizableClass >> parameters: aCollection [

	self attributeAt: #parameters put: aCollection
]
