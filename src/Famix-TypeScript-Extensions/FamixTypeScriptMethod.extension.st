Extension { #name : #FamixTypeScriptMethod }

{ #category : #'*Famix-TypeScript-Extensions' }
FamixTypeScriptMethod >> accessedAttributes [
	
	"Returns the set of attributes of my class accessed by me (method). 
	Used to support the calculation of LCOM"
	
	^ (self queryOutgoingAccesses opposites withinParentUsing: FamixTClass) asSet select: #isAttribute
]

{ #category : #'*Famix-TypeScript-Extensions' }
FamixTypeScriptMethod >> isStub [
	^ super isStub or: [ self parentType isNotNil and: [ self parentType isStub ] ]
]
