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
	^ self
]
