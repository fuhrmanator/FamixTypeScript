Class {
	#name : #FamixTypeScriptParameterizableClassTest,
	#superclass : #TestCase,
	#category : #'Famix-TypeScript-Tests'
}

{ #category : #tests }
FamixTypeScriptParameterizableClassTest >> testParameterTypes [
	| model aParameterizableClass package class1 class2 class3 type1 type2 type3 |
	model := FamixTypeScriptModel new.
	"model"
	"On doit remplacer ça avec du JSON au lieu de MSE"
		"importFromMSEStream:
			'(
		(Famix-TypeScript-Entities.Package (id: 1) (name ''PackageA''))
		(Famix-TypeScript-Entities.ParameterizableClass (id: 2) (name ''ParameterizableClassA'') )
		(Famix-TypeScript-Entities.ParameterizableClass (id: 3) (name ''ParameterizableClassB'') )
		(Famix-TypeScript-Entities.ParameterizableClass (id: 4) (name ''ParameterizableClassC'') )
		(Famix-TypeScript-Entities.ParameterType (id: 5) (name ''A'') (typeContainer (ref: 2)))
		(Famix-TypeScript-Entities.ParameterType (id: 6) (name ''B'') (typeContainer (ref: 2)))
		(Famix-TypeScript-Entities.ParameterType (id: 7) (name ''C'') (typeContainer (ref: 3)))
	)' readStream."
	
	package:= FamixTypeScriptPackage named: 'PackageA' model: model.
	class1:= FamixTypeScriptParameterizableClass  named: 'ParameterizableClassA' model: model.
	class2:= FamixTypeScriptParameterizableClass named: 'ParameterizableClassB' model: model.
	class3:= FamixTypeScriptParameterizableClass named: 'ParameterizableClassC' model: model.
	type1:= FamixTypeScriptParameterType named:  'A' model: model.
	type2:= FamixTypeScriptParameterType named:  'B' model: model.
	type3:= FamixTypeScriptParameterType named:  'C' model: model.
	type1 typeContainer: class1.
	type2 typeContainer: class2.
	type3 typeContainer: class3.
	self assert: model entities size equals: 7.
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
