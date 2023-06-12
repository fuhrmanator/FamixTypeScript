Class {
	#name : #FamixTypeScriptSourceLanguageTest,
	#superclass : #TestCase,
	#category : #'Famix-TypeScript-Tests'
}

{ #category : #tests }
FamixTypeScriptSourceLanguageTest >> testIsTypeScript [
	| model sourceLang class1 class2 |
	model := FamixTypeScriptModel new.

	"model
		importFromMSEStream:
			'(
		(Famix-TypeScript-Entities.SourceLanguage)
		(Famix-TypeScript-Entities.Class (id: 2) (name ''ClassWithoutSourceA''))
		(Famix-TypeScript-Entities.Class (id: 3) (name ''ClassWithoutSourceB''))
	)' readStream."
	sourceLang:= FamixTypeScriptSourceLanguage new 	mooseModel: model.
	class1 := FamixTypeScriptClass named: 'ClassWithoutSourceA' model: model.
	class2 := FamixTypeScriptClass named: 'ClassWithoutSourceB' model: model.
	
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
