Class {
	#name : #FamixTypeScriptParametricTest,
	#superclass : #TestCase,
	#instVars : [
		'parametricClass'
	],
	#category : #'Famix-TypeScript-Tests'
}

{ #category : #running }
FamixTypeScriptParametricTest >> setUp [

	super setUp.

	parametricClass := FamixJavaParametricClass new name: 'ParametricClass'
]

{ #category : #tests }
FamixTypeScriptParametricTest >> test1 [
	"testMethod(list: Array<any>): Array<any>{}"
	"testFunction(list: Array<any>): Array<any>{}"

	| method parameter list function parameterConcretisation |
	method := FamixTypeScriptParametricMethod new name: 'testMethod'.
	function := FamixTypeScriptParametricFunction new name: 'testFunction'.
	parameter := FamixTypeScriptParameter new name: 'list'.
	list := FamixTypeScriptParametricClass new name: 'Array'.
	parameterConcretisation := FamixTypeScriptType new name: 'any'.
	list addConcreteParameter: parameterConcretisation.
	parameter declaredType: list.
	method addParameter: parameter.
	method declaredType: list.
	function addParameter: parameter.
	function declaredType: list.	
	
]

{ #category : #tests }
FamixTypeScriptParametricTest >> test2 [
	"genericMethod<T extends Building>(t: T): T"
	"function genericFunction<T extends Building>(t: T): T"

	| m p return f parameterType |
	m := FamixTypeScriptParametricMethod new name: 'genericMethod'.
	f := FamixTypeScriptParametricFunction new name: 'genericFunction'.
	p := FamixTypeScriptParameter new name: 't'.
	parameterType := FamixTypeScriptParameterType named: 'T'.
	p declaredType: parameterType.
	m addParameter: p.
	f addParameter: p.
	return := parameterType.
	FamixTypeScriptInheritance new
		subclass: return;
		superclass: (FamixTypeScriptClass new name: 'Building').
	m declaredType: return.
	f declaredType: return.
]

{ #category : #tests }
FamixTypeScriptParametricTest >> test3 [
	"class ClassA<K, V> {}

	 class ClassB<V> extends ClassA<string, V> {
   		private method(num: number, s: string, v: V): void {
   		}
	 }
	"

	| classA k v string |
	(classA := FamixTypeScriptParametricClass new name: 'ClassA')
		genericParameters: {
				(k := FamixTypeScriptParameterType new name: 'K').
				(v := FamixTypeScriptParameterType new name: 'V') }.

	FamixTypeScriptConcretization new
		concreteEntity: (FamixTypeScriptParametricClass new name: 'ClassA');
		genericEntity: classA.

	FamixTypeScriptParameterConcretization new
		concreteParameter: (string := FamixTypeScriptClass new name: 'string');
		genericParameter: k.
		
	(FamixTypeScriptParametricMethod named: 'method')
		parameters: {
				((FamixTypeScriptParameter named: 'num') declaredType:
						 (FamixTypeScriptClass named: 'Integer')).
				((FamixTypeScriptParameter named: 's') declaredType: string).
				((FamixTypeScriptParameter named: 'v') declaredType: v) };
		addGenericParameter: v.
		
	(FamixTypeScriptParametricFunction named: 'function')
		parameters: {
				((FamixTypeScriptParameter named: 'num') declaredType:
						 (FamixTypeScriptClass named: 'Integer')).
				((FamixTypeScriptParameter named: 's') declaredType: string).
				((FamixTypeScriptParameter named: 'v') declaredType: v) };
		addGenericParameter: v
]

{ #category : #tests }
FamixTypeScriptParametricTest >> testConcreteAndGenericParameter [
	"class ClassA<V> {}

	class ClassB extends ClassA<string>"

	| parameter1 parameter2 |
	parameter1 := FamixTypeScriptType new name: 'String'.
	parameter2 := FamixTypeScriptParameterType new name: 'V'.

	parametricClass concreteParameters: { parameter1 }.
	parametricClass genericParameters: { parameter2 }.
	self
		assertCollection: parametricClass concreteParameters
		hasSameElements: { parameter1 }.
	self
		assertCollection: parametricClass genericParameters
		hasSameElements: { parameter2 }
]

{ #category : #tests }
FamixTypeScriptParametricTest >> testConcretizationEntity [
	"class List<T>
	class ClassB extends List<string>"

	| listT listString |
	listT := FamixTypeScriptParametricClass new name: 'ListT'.
	listString := FamixTypeScriptParametricClass new name: 'ListString'.
	FamixTypeScriptConcretization new
		concreteEntity: listString;
		genericEntity: listT.
	self
		assertCollection: (listT concretizations collect: #concreteEntity)
		hasSameElements: { listString }
]

{ #category : #tests }
FamixTypeScriptParametricTest >> testConcretizationParameter [
	"class ClassA<T>
	
	class ClassB extends ClassA<Generic>"

	| parameterConcrete parameterGeneric |
	parameterConcrete := FamixTypeScriptType new name: 'parametric'.
	parameterGeneric := FamixTypeScriptParameterType new name: 'Generic'.
	FamixTypeScriptParameterConcretization new
		concreteParameter: parameterConcrete;
		genericParameter: parameterGeneric.
	self
		assertCollection:
		(parameterGeneric concretizations collect: #concreteParameter)
		hasSameElements: { parameterConcrete }
]

{ #category : #tests }
FamixTypeScriptParametricTest >> testInheritanceClass [

	| class1 class2 |
	class1 := FamixTypeScriptClass new name: 'Class1'.
	class2 := FamixTypeScriptClass new name: 'Class2'.

	parametricClass addSubInheritance: (FamixTypeScriptInheritance new
			 subclass: class1;
			 superclass: parametricClass).

	class1 addSubInheritance: (FamixTypeScriptInheritance new
			 subclass: class2;
			 superclass: class1).

	self
		assertCollection: parametricClass subclassHierarchy
		hasSameElements: {
				class1.
				class2 }
]

{ #category : #tests }
FamixTypeScriptParametricTest >> testInheritanceParameter [
	"class ClassA<subGeneric extends supGeneric> {
	}
	"

	| supGeneric subGeneric subConcrete |
	supGeneric := FamixTypeScriptParameterType new name: 'supGeneric'.
	subGeneric := FamixTypeScriptParameterType new name: 'subGeneric'.
	subConcrete := FamixTypeScriptClass new name: 'String'.

	FamixTypeScriptInheritance new
		subclass: subGeneric;
		superclass: supGeneric.
	self
		assertCollection: (supGeneric subInheritances collect: #subclass)
		hasSameElements: { subGeneric }.
	subConcrete addSuperInheritance: (FamixTypeScriptInheritance new
			 subclass: subConcrete;
			 superclass: supGeneric).
	self
		assertCollection: (supGeneric subInheritances collect: #subclass)
		hasSameElements: {
				subGeneric.
				subConcrete }
]

{ #category : #tests }
FamixTypeScriptParametricTest >> testIsConcreteEntity [

	self assert: parametricClass isGenericEntity.

	FamixTypeScriptConcretization new
		genericEntity: FamixTypeScriptParametricClass new;
		concreteEntity: parametricClass.
	self deny: parametricClass isGenericEntity
]

{ #category : #tests }
FamixTypeScriptParametricTest >> testUsesGenerics [

	| parameter1 parameter2 |
	parameter1 := FamixTypeScriptType named: 'String'.
	parameter2 := FamixTypeScriptParameterType named: 'V'.
	self deny: parametricClass usesGenerics.

	parametricClass addConcreteParameter: parameter1.
	self deny: parametricClass usesGenerics.

	parametricClass addGenericParameter: parameter2.
	self assert: parametricClass usesGenerics.

	"a concrete parameter can still be generic"
	parametricClass genericParameters: {  }.
	parametricClass addConcreteParameter: parameter2.
	self assert: parametricClass usesGenerics
]
