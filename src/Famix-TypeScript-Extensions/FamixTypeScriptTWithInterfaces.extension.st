Extension { #name : 'FamixTypeScriptTWithInterfaces' }

{ #category : '*Famix-TypeScript-Extensions' }
FamixTypeScriptTWithInterfaces >> interfaces [

	"Classes are usually seen as types from the point of view of a Container. However, there may other types (e.g. aspects) which we dont want to see as classes and are rejected by this method."

	<navigation: 'Interfaces'>
	^ self types select: #isInterface
		  "cacheAt: #interfaces
		  ifAbsentPut: [ self types select: #isInterface ]"
]
