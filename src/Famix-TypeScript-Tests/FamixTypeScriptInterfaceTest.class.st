Class {
	#name : #FamixTypeScriptInterfaceTest,
	#superclass : #TestCase,
	#category : #'Famix-TypeScript-Tests-Entities'
}

{ #category : #tests }
FamixTypeScriptInterfaceTest >> testClassContainInterface [

	| interface class |
	interface := FamixTypeScriptInterface new.
	class := FamixTypeScriptClass new.
	class addInterface: interface. 


	self
		assertCollection: class interfaces
		hasSameElements: { interface }.

]

{ #category : #tests }
FamixTypeScriptInterfaceTest >> testImplementation [


	
	| interface class impl |
	interface := FamixJavaInterface new.
	class := FamixTypeScriptClass new.
	impl := FamixTypeScriptImplementation new.
	impl interface: interface.
	impl implementingClass: class.

	
	self assertCollection: interface implementations hasSameElements: { impl }.
	self assertCollection: class interfaceImplementations hasSameElements: { impl }.
	
]

{ #category : #tests }
FamixTypeScriptInterfaceTest >> testInterfaceContainInterface [

	| interface int2 |
	interface := FamixTypeScriptInterface new.
	int2 := FamixTypeScriptInterface new.
	int2 addInterface: interface. 


	self
		assertCollection: int2 interfaces
		hasSameElements: { interface }.
]

{ #category : #tests }
FamixTypeScriptInterfaceTest >> testMultipleInheritance [

	| interface supInt1 supInt2 inh1 inh2 |
	
	interface := FamixTypeScriptInterface new.
	supInt1 := FamixTypeScriptInterface new.
	supInt2 := FamixTypeScriptInterface new.
	inh1 := FamixTypeScriptInheritance new.
	inh1 subclass: interface.
	inh1 superclass: supInt1.
	inh2 := FamixTypeScriptInheritance new.
	inh2 subclass: interface.
	inh2 superclass: supInt2.
	
	self assertCollection: interface superInheritances hasSameElements: { inh1. inh2 }
	
]
