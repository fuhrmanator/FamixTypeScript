Class {
	#name : #FamixTypeScriptPropertyTest,
	#superclass : #TestCase,
	#category : #'Famix-TypeScript-Tests-Entities'
}

{ #category : #tests }
FamixTypeScriptPropertyTest >> testPropertyReadonly [
	| property |
	property := FamixTypeScriptProperty new.
	self deny: property readOnly.
	property readOnly: true.
	self assert: property readOnly.

]

{ #category : #tests }
FamixTypeScriptPropertyTest >> testPropertyVisibility [
	| property |
	property := FamixTypeScriptProperty new.
	self assert: property visibility isNil.
	"Note: package and protected are not applicable to TypeScript (they're from Java)"
	property bePackageVisibility.
	self assert: property isPackageVisibility.
	property bePrivate.
	self assert: property isPrivate.
	self deny: property isPackageVisibility.
	property bePublic.
	self assert: property isPublic.
	self deny: property isPackageVisibility.
	self deny: property isPrivate.
	property beProtected.
	self assert: property isProtected.
	self deny: property isPackageVisibility.
	self deny: property isPrivate.
	self deny: property isPublic.
]
