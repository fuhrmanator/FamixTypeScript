Extension { #name : #FamixTypeScriptParametricMethod }

{ #category : #'*Famix-TypeScript-Extensions' }
FamixTypeScriptParametricMethod >> isConcreteEntity [
	"I am concrete if I concretize a generic entity."

	^ self concreteParameters isNotNil
]

{ #category : #'*Famix-TypeScript-Extensions' }
FamixTypeScriptParametricMethod >> isGenericEntity [
	"I am generic if I don't concretize a generic entity."

	^ self genericParameters isNotNil
]
