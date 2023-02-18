"
I can contain interfaces (Packages, Methods, Classes...)
"
Trait {
	#name : #FamixTypeScriptTWithInterfaces,
	#traits : 'FamixTWithTypes',
	#classTraits : 'FamixTWithTypes classTrait',
	#category : #'Famix-TypeScript-Entities-Traits'
}

{ #category : #meta }
FamixTypeScriptTWithInterfaces classSide >> annotation [

	<FMClass: #TWithInterfaces super: #Object>
	<package: #FamixTypeScript>
	<generated>
	^self
]

{ #category : #'as yet unclassified' }
FamixTypeScriptTWithInterfaces >> interfaces [
	"Classes are usually seen as types from the point of view of a Container. However, there may other types (e.g. aspects) which we dont want to see as classes and are rejected by this method."

	<navigation: 'Interfaces'>
	^ self cacheAt: #interfaces ifAbsentPut: [ self types select: #isInterface ]
]
