Class {
	#name : #FamixTypeScriptAttributeTest,
	#superclass : #TestCase,
	#category : #'Famix-TypeScript-Tests'
}

{ #category : #tests }
FamixTypeScriptAttributeTest >> testClassWithComment [
	| attribute |
	attribute := FamixTypeScriptAttribute new.
	self assert: attribute visibility isNil.
	attribute bePackageVisibility.
	self assert: attribute isPackageVisibility.
	attribute bePrivate.
	self assert: attribute isPrivate.
	self deny: attribute isPackageVisibility.
	attribute bePublic.
	self assert: attribute isPublic.
	self deny: attribute isPackageVisibility.
	self deny: attribute isPrivate.
	attribute beProtected.
	self assert: attribute isProtected.
	self deny: attribute isPackageVisibility.
	self deny: attribute isPrivate.
	self deny: attribute isPublic.
	
	
	
]
