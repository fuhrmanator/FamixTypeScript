Extension { #name : 'FamixTypeScriptTClassMetrics' }

{ #category : '*Famix-TypeScript-Extensions' }
FamixTypeScriptTClassMetrics >> numberOfAccessorMethods [

	<FMProperty: #numberOfAccessorMethods type: #Number>
	<derived>
	<FMComment: 'The number of accessor methods in a class'>
	^ self lookUpPropertyNamed: #numberOfAccessorMethods computedAs: [ 
		  | noa |
		  noa := 0.
		  self methods do: [ :method | 
			  method isPureAccessor ifNotNil: [ 
				  (method isPureAccessor or: [ 
					   (method propertyNamed: #AccessorMethod) isNotNil ]) ifTrue: [ 
					  noa := noa + 1 ] ] ].
		  noa ]
]

{ #category : '*Famix-TypeScript-Extensions' }
FamixTypeScriptTClassMetrics >> numberOfAccessorMethods: aNumber [

	self cacheAt: #numberOfAccessorMethods put: aNumber
]

{ #category : '*Famix-TypeScript-Extensions' }
FamixTypeScriptTClassMetrics >> numberOfConstructorMethods [

	<FMProperty: #numberOfConstructorMethods type: #Number>
	<derived>
	<FMComment: 'The number of constructor methods in a class'>
	^ self
		  lookUpPropertyNamed: #numberOfConstructorMethods
		  computedAs: [ 
			  | nc |
			  nc := 0.
			  self methods do: [ :method | 
				  method isConstructor ifNotNil: [ 
					  method isConstructor ifTrue: [ nc := 1 ] ] ].
			  nc ]
]

{ #category : '*Famix-TypeScript-Extensions' }
FamixTypeScriptTClassMetrics >> numberOfConstructorMethods: aNumber [

	self cacheAt: #numberOfConstructorMethods put: aNumber
]

{ #category : '*Famix-TypeScript-Extensions' }
FamixTypeScriptTClassMetrics >> numberOfPrivateMethods [

	<FMProperty: #numberOfPrivateMethods type: #Number>
	<derived>
	<FMComment: 'The number of private methods in a class'>
	^ self
		  lookUpPropertyNamed: #numberOfPrivateMethods
		  computedAs: [ 
		  (self methods select: [ :each | each isPrivate ]) size ]
]

{ #category : '*Famix-TypeScript-Extensions' }
FamixTypeScriptTClassMetrics >> numberOfPrivateMethods: aNumber [

	self cacheAt: #numberOfPrivateMethods put: aNumber
]

{ #category : '*Famix-TypeScript-Extensions' }
FamixTypeScriptTClassMetrics >> numberOfPublicMethods [

	<FMProperty: #numberOfPublicMethods type: #Number>
	<derived>
	<FMComment: 'The number of public methods in a class'>
	^ self
		  lookUpPropertyNamed: #numberOfPublicMethods
		  computedAs: [ 
		  (self methods select: [ :each | each isPublic ]) size ]
]

{ #category : '*Famix-TypeScript-Extensions' }
FamixTypeScriptTClassMetrics >> numberOfPublicMethods: aNumber [

	self cacheAt: #numberOfPublicMethods put: aNumber
]
