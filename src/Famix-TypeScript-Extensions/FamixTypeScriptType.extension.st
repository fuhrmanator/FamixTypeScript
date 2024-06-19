Extension { #name : #FamixTypeScriptType }

{ #category : #'*Famix-TypeScript-Extensions' }
FamixTypeScriptType >> hasMethodWithSignature: aStringOrSymbol [
	| symbol |
	symbol := aStringOrSymbol asSymbol.
	^self methods anySatisfy: [:each | each signature asSymbol = symbol]
]

{ #category : #'*Famix-TypeScript-Extensions' }
FamixTypeScriptType >> isInterface [
	^ false
]

{ #category : #'*Famix-TypeScript-Extensions' }
FamixTypeScriptType >> isParameterType [
	^ false
]

{ #category : #'*Famix-TypeScript-Extensions' }
FamixTypeScriptType >> lookUp: aMethodSignature [
	"Returns the first method that has as signature #aMethodSignature. 
	The search starts from the receiver's methods and traveses the inherited methods from the receiver's superclasses heirarchy.
	If such a method has not been found, it returns nil"

	| c toSearchIt searchedM |
	c := self.
	searchedM := nil.
	toSearchIt := true.
	[ c isNotNil and: [ toSearchIt ] ]
		whileTrue: [ searchedM := c methods
				detect: [ :m | m signature = aMethodSignature ]
				ifNone: [ nil ].
			searchedM
				ifNil: [ c := c superclass ]
				ifNotNil: [ toSearchIt := false ] ].
	^ searchedM
]
