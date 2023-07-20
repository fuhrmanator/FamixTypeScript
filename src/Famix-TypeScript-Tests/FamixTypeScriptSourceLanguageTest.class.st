Class {
	#name : #FamixTypeScriptSourceLanguageTest,
	#superclass : #TestCase,
	#category : #'Famix-TypeScript-Tests'
}

{ #category : #tests }
FamixTypeScriptSourceLanguageTest >> testIsTypeScript [
	| model |
	model := FamixTypeScriptModel new.

	model
		importFromMSEStream:
			'((FamixTypeScript.SourceLanguage))' readStream.
	
	self assert: model sourceLanguage isTypeScript 
]

{ #category : #tests }
FamixTypeScriptSourceLanguageTest >> testIsUnknown [
	self deny: FamixTypeScriptSourceLanguage new isUnknown
]

{ #category : #tests }
FamixTypeScriptSourceLanguageTest >> testName [
	self assert: FamixTypeScriptSourceLanguage new name equals: 'TypeScript'
]
