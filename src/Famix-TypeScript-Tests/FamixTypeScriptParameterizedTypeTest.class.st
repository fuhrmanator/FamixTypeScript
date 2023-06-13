Class {
	#name : #FamixTypeScriptParameterizedTypeTest,
	#superclass : #TestCase,
	#instVars : [
		'model'
	],
	#category : #'Famix-TypeScript-Tests'
}

{ #category : #tests }
FamixTypeScriptParameterizedTypeTest >> setUp [
	| package class1 class2 type1 type2 type3 paramType1 paramType2 paramType3 parameterizedType1 |
	super setUp.
	model := FamixTypeScriptModel new.
	
	package:= FamixTypeScriptPackage named: 'PackageA' model: model.
	class1:= FamixTypeScriptClass  named: 'ClassA' model: model.
	class2:= FamixTypeScriptParameterizableClass named: 'ParameterizableClassA' model: model.

	paramType1:= FamixTypeScriptParameterType named:  'A' model: model.
	paramType2:= FamixTypeScriptParameterType named:  'B' model: model.
	paramType3:= FamixTypeScriptParameterType named:  'C' model: model.
	paramType1 typeContainer: class2.
	paramType2 typeContainer: class2.
	paramType3 typeContainer: class2.
	type1:= FamixTypeScriptType named: 'TypeB' model: model.
	type2:= FamixTypeScriptType named: 'TypeC' model: model.
	parameterizedType1:= FamixTypeScriptParameterizedType new.
	parameterizedType1 addArgument: type1.
	class2 typeContainer: paramType1.
	
	"model"
		"importFromMSEStream:
			'(
		(Famix-TypeScript-Entities.Package (id: 1) (name ''PackageA''))
		(Famix-TypeScript-Entities.Class (id: 2) (name ''ClassA''))
		
		(Famix-TypeScript-Entities.ParameterizableClass (id: 3) (name ''ParameterizableClassA''))
		(Famix-TypeScript-Entities.ParameterType (id: 5) (name ''A'') (typeContainer (ref: 3)))
		(Famix-TypeScript-Entities.ParameterType (id: 6) (name ''B'') (typeContainer (ref: 3)))
		(Famix-TypeScript-Entities.ParameterType (id: 7) (name ''C'') (typeContainer (ref: 3)))
		
		(Famix-TypeScript-Entities.Type (id: 4) (name ''TypeB''))
		(Famix-TypeScript-Entities.Type (id: 5) (name ''TypeC''))		
				
		(Famix-TypeScript-Entities.ParameterizedType (id: 6) (parameterizableClass (ref: 3)) (arguments (ref: 4)))
		(Famix-TypeScript-Entities.ParameterizedType (id: 7) (parameterizableClass (ref: 3)) (arguments (ref: 4) (ref: 5)))
		
		(Famix-TypeScript-Entities.Attribute (id: 8) (name ''attributeA1'') (parentType (ref: 2)) (declaredType (ref: 6)))
		(Famix-TypeScript-Entities.Attribute (id: 9) (name ''attributeA2'') (parentType (ref: 2)) (declaredType (ref: 7)))

		(Famix-TypeScript-Entities.Method (id: 10) (name ''methodA1'') (parentType (ref: 2)) (declaredType (ref: 6)))
		(Famix-TypeScript-Entities.Method (id: 11) (name ''methodA2'') (parentType (ref: 2)) (declaredType (ref: 7)))
		
		(Famix-TypeScript-Entities.Parameter (id: 12) (name ''parameterMtdA1'') (parentBehaviouralEntity (ref: 10)) (declaredType (ref: 6)))
		(Famix-TypeScript-Entities.Parameter (id: 13) (name ''parameterMtdA2'') (parentBehaviouralEntity (ref: 11)) (declaredType (ref: 7)))
		
		(Famix-TypeScript-Entities.LocalVariable (id: 14) (name ''localVariableMtdA1'') (parentBehaviouralEntity (ref: 10)) (declaredType (ref: 6)))
		(Famix-TypeScript-Entities.LocalVariable (id: 15) (name ''localVariableMtdA2'') (parentBehaviouralEntity (ref: 11)) (declaredType (ref: 7)))
	)' readStream"
]

{ #category : #tests }
FamixTypeScriptParameterizedTypeTest >> testArgumentTypes [
	| fmxEntity fmxMethod declaredType typeB typeC parameterizedTypeA parameterizedTypeB parameterizableClassA |
	parameterizedTypeB := model allParameterizedTypes entityNamed: #'ParameterizableClassA<TypeB,TypeC>'.
	parameterizedTypeA := model allParameterizedTypes entityNamed: #'ParameterizableClassA<TypeB>'.
	parameterizableClassA := (model entities select: [ :each | each name = 'ParameterizableClassA' ]) at: 1.
	typeB := (model entities select: [ :each | each name = 'TypeB' ]) at: 1.
	typeC := (model entities select: [ :each | each name = 'TypeC' ]) at: 1.
	fmxEntity := model allAttributes entityNamed: #'ClassA.attributeA1'.
	declaredType := fmxEntity declaredType.
	self assert: declaredType equals: parameterizedTypeA.
	self assert: declaredType parameterizableClass equals: parameterizableClassA.
	self assert: declaredType arguments size equals: 1.
	self assert: (declaredType arguments at: 1) equals: typeB.
	fmxEntity := model allAttributes entityNamed: #'ClassA.attributeA2'.
	declaredType := fmxEntity declaredType.
	self assert: declaredType equals: parameterizedTypeB.
	self assert: declaredType parameterizableClass equals: parameterizableClassA.
	self assert: declaredType arguments size equals: 2.
	self assert: (declaredType arguments at: 1) equals: typeB.
	self assert: (declaredType arguments at: 2) equals: typeC.
	fmxMethod := (model allMethods select: [ :each | each name = 'methodA1' ]) at: 1.
	declaredType := fmxMethod declaredType.
	self assert: declaredType equals: parameterizedTypeA.
	self assert: declaredType parameterizableClass equals: parameterizableClassA.
	self assert: declaredType arguments size equals: 1.
	self assert: (declaredType arguments at: 1) equals: typeB.
	fmxEntity := (fmxMethod parameters select: [ :each | each name = 'parameterMtdA1' ]) at: 1.
	declaredType := fmxEntity declaredType.
	self assert: declaredType equals: parameterizedTypeA.
	self assert: declaredType parameterizableClass equals: parameterizableClassA.
	self assert: declaredType arguments size equals: 1.
	self assert: (declaredType arguments at: 1) equals: typeB.
	fmxEntity := (fmxMethod localVariables select: [ :each | each name = 'localVariableMtdA1' ]) at: 1.
	declaredType := fmxEntity declaredType.
	self assert: declaredType equals: parameterizedTypeA.
	self assert: declaredType parameterizableClass equals: parameterizableClassA.
	self assert: declaredType arguments size equals: 1.
	self assert: (declaredType arguments at: 1) equals: typeB.
	fmxMethod := (model allMethods select: [ :each | each name = 'methodA2' ]) at: 1.
	declaredType := fmxMethod declaredType.
	self assert: declaredType equals: parameterizedTypeB.
	self assert: declaredType parameterizableClass equals: parameterizableClassA.
	self assert: declaredType arguments size equals: 2.
	self assert: (declaredType arguments at: 1) equals: typeB.
	self assert: (declaredType arguments at: 2) equals: typeC.
	fmxEntity := (fmxMethod parameters select: [ :each | each name = 'parameterMtdA2' ]) at: 1.
	declaredType := fmxEntity declaredType.
	self assert: declaredType equals: parameterizedTypeB.
	self assert: declaredType parameterizableClass equals: parameterizableClassA.
	self assert: declaredType arguments size equals: 2.
	self assert: (declaredType arguments at: 1) equals: typeB.
	self assert: (declaredType arguments at: 2) equals: typeC.
	fmxEntity := (fmxMethod localVariables select: [ :each | each name = 'localVariableMtdA2' ]) at: 1.
	declaredType := fmxEntity declaredType.
	self assert: declaredType equals: parameterizedTypeB.
	self assert: declaredType parameterizableClass equals: parameterizableClassA.
	self assert: declaredType arguments size equals: 2.
	self assert: (declaredType arguments at: 1) equals: typeB.
	self assert: (declaredType arguments at: 2) equals: typeC
]

{ #category : #tests }
FamixTypeScriptParameterizedTypeTest >> testArguments [
	| parameterizableType |
	parameterizableType := model allParameterizedTypes entityNamed: #'ParameterizableClassA<TypeB,TypeC>'.
	self denyEmpty: parameterizableType arguments.
	self assert: parameterizableType arguments size equals: 2
]

{ #category : #tests }
FamixTypeScriptParameterizedTypeTest >> testArgumentsConstruction [
	| parameterizableType argument1 argument2 |
	parameterizableType := FamixTypeScriptParameterizedType new.
	argument1 := FamixTypeScriptClass new.
	argument2 := FamixTypeScriptClass new.
	parameterizableType arguments: {argument1}.
	parameterizableType arguments add: argument2.
	self assert: parameterizableType arguments size equals: 2.
	self assert: argument1 argumentsInParameterizedTypes size equals: 1.
	self assert: argument1 argumentsInParameterizedTypes first equals: parameterizableType.
	self assert: argument2 argumentsInParameterizedTypes size equals: 1.
	self assert: argument2 argumentsInParameterizedTypes first equals: parameterizableType
]

{ #category : #tests }
FamixTypeScriptParameterizedTypeTest >> testModelSize [

	self assert: model entities size equals: 18.
	self assert: model allParameterizedTypes size equals: 2
]

{ #category : #tests }
FamixTypeScriptParameterizedTypeTest >> testMooseName [
	| parameterizableType |
	parameterizableType := model allParameterizedTypes entityNamed: #'ParameterizableClassA<TypeB,TypeC>'.
	self assert: parameterizableType isNotNil
]

{ #category : #tests }
FamixTypeScriptParameterizedTypeTest >> testParameterizableClass [
	self assert: model allParameterizableClasses anyOne parameterizedTypes size equals: 2
]
