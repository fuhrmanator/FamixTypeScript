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
FamixTypeScriptMethod >> isStub [
	^ super isStub or: [ self parentType isNotNil and: [ self parentType isStub ] ]
]
