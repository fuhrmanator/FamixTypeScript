Class {
	#name : #FamixTypeScriptParameterizableClassTest,
	#superclass : #TestCase,
	#category : #'Famix-TypeScript-Tests'
}

{ #category : #tests }
FamixTypeScriptParameterizableClassTest >> testParameterTypes [
	| model aParameterizableClass |
	model := FamixTypeScriptModel new.
	model	
		importFromMSEStream:
			'(		
		(FamixTypeScript.ParameterizableClass (id: 2) (name ''ParameterizableClassA'') )
		(FamixTypeScript.ParameterizableClass (id: 3) (name ''ParameterizableClassB'') )
		(FamixTypeScript.ParameterizableClass (id: 4) (name ''ParameterizableClassC'') )
		(FamixTypeScript.ParameterType (id: 5) (name ''A'') (typeContainer (ref: 2)))
		(FamixTypeScript.ParameterType (id: 6) (name ''B'') (typeContainer (ref: 2)))
		(FamixTypeScript.ParameterType (id: 7) (name ''C'') (typeContainer (ref: 3)))
	)' readStream.

	self assert: model entities size equals: 6.
	self assert: model allParameterizableClasses size equals: 3.
	aParameterizableClass := model allParameterizableClasses entityNamed: #ParameterizableClassA.
	self assert: aParameterizableClass parameters size equals: 2.
	self assert: aParameterizableClass parameters first equals: (model allParameterTypes entityNamed: #'ParameterizableClassA::A').
	self assert: aParameterizableClass parameters last equals: (model allParameterTypes entityNamed: #'ParameterizableClassA::B').
	aParameterizableClass := model allParameterizableClasses entityNamed: #ParameterizableClassB.
	self assert: aParameterizableClass parameters size equals: 1.
	self assert: aParameterizableClass parameters first equals: (model allParameterTypes entityNamed: #'ParameterizableClassB::C').
	aParameterizableClass := model allParameterizableClasses entityNamed: #ParameterizableClassC.
	self assertEmpty: aParameterizableClass parameters
]
