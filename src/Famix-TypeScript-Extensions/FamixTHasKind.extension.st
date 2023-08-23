Extension { #name : #FamixTHasKind }

{ #category : #'*Famix-TypeScript-Extensions' }
FamixTHasKind >> isGetter: aBoolean [

	aBoolean
		ifTrue: [ self beGetter ]
		ifFalse: [ self isGetter ifTrue: [ self kind: nil ] ]
]

{ #category : #'*Famix-TypeScript-Extensions' }
FamixTHasKind >> isSetter: aBoolean [

	aBoolean
		ifTrue: [ self beSetter ]
		ifFalse: [ self isSetter ifTrue: [ self kind: nil ] ]
]
