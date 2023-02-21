Extension { #name : #FamixTypeScriptClass }

{ #category : #'*Famix-TypeScript-Extensions' }
FamixTypeScriptClass >> accessedAttributes [
	
	"Returns my attributes accessed by my methods. If the same attribute is accessed 
	by two different methods it is counted twice.
	Used to support the calculation of LCOM"
	
	^ self methodsWithoutSutbsAndConstructors asOrderedCollection flatCollect: [ :method | method accessedAttributes ]
]

{ #category : #'*Famix-TypeScript-Extensions' }
FamixTypeScriptClass >> isInterface [

	<FMProperty: #isInterface type: #Boolean>
	<FMComment: 'This is a boolean flag used to distinguish between classes with implementation and interfaces'>

	^ self attributeAt: #isInterface ifAbsent: [ false ]
]

{ #category : #'*Famix-TypeScript-Extensions' }
FamixTypeScriptClass >> isInterface: aBoolean [
	self halt. "Code copied from FamixJavaClass - but not clear to me."
	"Why is the following line not using aBoolean?"
	^ self attributeAt: #isInterface put: true
]

{ #category : #'*Famix-TypeScript-Extensions' }
FamixTypeScriptClass >> methodsWithoutSutbsAndConstructors [

	"Removing stub and contructor methods. Used to support the calculation of LCOM."
	
	^ (self methods select: [ :each | 
		each isStub not and: [each isConstructor not]]) asSet
]
