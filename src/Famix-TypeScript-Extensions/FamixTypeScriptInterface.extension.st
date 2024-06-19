Extension { #name : #FamixTypeScriptInterface }

{ #category : #'*Famix-TypeScript-Extensions' }
FamixTypeScriptInterface >> addMethodOverriding: aMethod in: aCollection [

	self implementations do: [ :implementation |
		| implClass |
		implClass := implementation implementingClass.
		implClass methods
			detect: [ :method | method signature = aMethod signature ]
			ifFound: [ :overridingMethod | aCollection add: overridingMethod ].
		implClass addMethodOverriding: aMethod in: aCollection ].

	self directSubclasses do: [ :subInterface |
		subInterface methods
			detect: [ :method | method signature = aMethod signature ]
			ifFound: [ :overridingMethod | aCollection add: overridingMethod ].

		subInterface addMethodOverriding: aMethod in: aCollection ]
]
