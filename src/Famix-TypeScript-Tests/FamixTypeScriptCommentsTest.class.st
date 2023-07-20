Class {
	#name : #FamixTypeScriptCommentsTest,
	#superclass : #TestCase,
	#category : #'Famix-TypeScript-Tests'
}

{ #category : #tests }
FamixTypeScriptCommentsTest >> testClassWithComment [

	| typeScriptClass |
	typeScriptClass := FamixTypeScriptClass new.
	FamixTypeScriptComment new commentedEntity: typeScriptClass.
	self assert: typeScriptClass numberOfComments equals: 1
]

{ #category : #tests }
FamixTypeScriptCommentsTest >> testClassWithCommentAndMethodsWithComments [ 

	| typeScriptClass |
	typeScriptClass := FamixTypeScriptClass new.
	FamixTypeScriptComment new commentedEntity: typeScriptClass.
	FamixTypeScriptComment new commentedEntity: (FamixTypeScriptMethod new
			 parentType: typeScriptClass;
			 yourself).
	FamixTypeScriptComment new commentedEntity: (FamixTypeScriptMethod new
			 parentType: typeScriptClass;
			 yourself).

	self assert: typeScriptClass numberOfComments equals: 1.
	self assert: typeScriptClass methods size equals: 2.
	typeScriptClass methods do: [ :m |
		self assert: m numberOfComments equals: 1
	]
]
