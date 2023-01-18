Class {
	#name : #FamixTypeScriptEntity,
	#superclass : #MooseEntity,
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]

{ #category : #meta }
FamixTypeScriptEntity class >> metamodel [

	<generated>
	^ FamixTypeScriptModel metamodel
]

{ #category : #testing }
FamixTypeScriptEntity >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixTypeScriptEntity >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixTypeScriptEntity >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixTypeScriptEntity >> isBehavioural [

	<generated>
	^ false
]

{ #category : #testing }
FamixTypeScriptEntity >> isClass [

	<generated>
	^ false
]

{ #category : #testing }
FamixTypeScriptEntity >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixTypeScriptEntity >> isInheritance [

	<generated>
	^ false
]

{ #category : #testing }
FamixTypeScriptEntity >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixTypeScriptEntity >> isLocalVariable [

	<generated>
	^ false
]

{ #category : #testing }
FamixTypeScriptEntity >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixTypeScriptEntity >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FamixTypeScriptEntity >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixTypeScriptEntity >> isType [

	<generated>
	^ false
]
