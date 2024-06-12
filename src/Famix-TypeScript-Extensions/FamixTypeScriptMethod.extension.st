Extension { #name : #FamixTypeScriptMethod }

{ #category : #'*Famix-TypeScript-Extensions' }
FamixTypeScriptMethod >> accessedAttributes [
	
	"Returns the set of attributes of my class accessed by me (method). 
	Used to support the calculation of LCOM"
	
	^ (self queryOutgoingAccesses opposites withinParentUsing: FamixTClass) asSet select: #isAttribute
]

{ #category : #'*Famix-TypeScript-Extensions' }
FamixTypeScriptMethod >> isGetter [
	"No parameter AND
		Has a declared type (not void) AND
			Has no outgoing invocation AND
				Name starts with get OR
					Name starts with is AND returns a boolean"

	^ self kind = #getter or: [
		  self parameters isEmpty and: [
			  self declaredType isNotNil and: [
				  self declaredType name ~= 'void' and: [
					  self outgoingInvocations isEmpty and: [
						  self name isNotNil and: [
							  (self name beginsWith: 'get') or: [
								  (self name beginsWith: 'is') and: [
									  self declaredType name caseInsensitiveLessOrEqual:
										  'boolean' ] ] ] ] ] ] ] ]
]

{ #category : #'*Famix-TypeScript-Extensions' }
FamixTypeScriptMethod >> isOverridden [
	"If we have a stub and we don't have the container, we can't have the information"

	<FMProperty: #isOverridden type: #Boolean>
	<derived>
	<FMComment: 'The method is overrided in a sub class'>
	(self parentType isNil and: [ self isStub ])
		ifTrue: [ ^ false ].
	^ self parentType subclassHierarchyGroup
		anySatisfy: [ :each | each hasMethodWithSignature: self signature ]
]

{ #category : #'*Famix-TypeScript-Extensions' }
FamixTypeScriptMethod >> isOverriding [
	<FMProperty: #isOverriding type: #Boolean>
	<derived>
	<FMComment: 'The method is overrinding a method defined in a super class'>
	^ self parentType directSuperclasses
		anySatisfy:
			[ :each | each isInterface not and: [ each understands: self signature ] ]
]

{ #category : #'*Famix-TypeScript-Extensions' }
FamixTypeScriptMethod >> isSetter [
	"Name begins with set AND
		Has 1 parameter AND
			Declared type is void AND
				Has no outgoing invocation"

	^ self kind = #setter or: [
		  self name isNotNil and: [
			  (self name beginsWith: 'set') and: [
				  self parameters size = 1 and: [
					  self declaredType isNotNil and: [
						  self declaredType name = 'void' and: [
							  self outgoingInvocations isEmpty ] ] ] ] ] ]
]

{ #category : #'*Famix-TypeScript-Extensions' }
FamixTypeScriptMethod >> isStub [
	^ super isStub or: [ self parentType isNotNil and: [ self parentType isStub ] ]
]

{ #category : #'*Famix-TypeScript-Extensions' }
FamixTypeScriptMethod >> overriddenMethod [

	^ (self parentType superclass ifNotNil: [ :superclass |
		   superclass lookUp: self signature ]) ifNil: [
		  self parentType lookUpInInterfaces: self signature ]
]
