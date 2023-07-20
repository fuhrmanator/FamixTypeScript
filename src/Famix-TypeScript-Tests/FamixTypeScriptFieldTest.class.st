Class {
	#name : #FamixTypeScriptFieldTest,
	#superclass : #TestCase,
	#category : #'Famix-TypeScript-Tests-Entities'
}

{ #category : #tests }
FamixTypeScriptFieldTest >> testFieldVisibility [
	| field |
	field := FamixTypeScriptField new.
	self assert: field visibility isNil.
	"Note: package and protected are not applicable to TypeScript (they're from Java)"
	field bePackageVisibility.
	self assert: field isPackageVisibility.
	field bePrivate.
	self assert: field isPrivate.
	self deny: field isPackageVisibility.
	field bePublic.
	self assert: field isPublic.
	self deny: field isPackageVisibility.
	self deny: field isPrivate.
	field beProtected.
	self assert: field isProtected.
	self deny: field isPackageVisibility.
	self deny: field isPrivate.
	self deny: field isPublic.
]
