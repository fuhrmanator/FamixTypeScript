Class {
	#name : #FamixTypeScriptTest,
	#superclass : #TestCase,
	#category : #'Famix-TypeScript-Tests'
}

{ #category : #tests }
FamixTypeScriptTest >> testImportNamespace [

	| model |
	model := FamixTypeScriptModel new.
	model importFromMSEStream: '(		
		(FamixTypeScript.Namespace (id: 1) (name ''ANamespace''))
		(FamixTypeScript.Namespace (id: 10) (name ''AnotherNamespace''))
		(FamixTypeScript.Class (id: 3) (name ''AClass'') (typeContainer (ref: 1)))
		(FamixTypeScript.Class (id: 5) (name ''AnotherClass'')  (typeContainer (ref: 1)))
		(FamixTypeScript.Method (id: 2) (name ''aMethod'') (parentType (ref: 3)))
	)' readStream.
	self assert: model allNamespaces size equals: 2.
	self assert: (model allNamespaces anySatisfy: [ :namespace | 
			 namespace name = 'ANamespace' ]).
	self assert: (model allNamespaces anySatisfy: [ :namespace | 
			 namespace name = 'AnotherNamespace' ]).
	self
		assert: (model allNamespaces detect: [ :namespace | 
				 namespace name = 'ANamespace' ]) classes size
		equals: 2
]

{ #category : #tests }
FamixTypeScriptTest >> testModelImportableFromFile [
	self assert: FamixTypeScriptModel canBeImportedFromFile
]
