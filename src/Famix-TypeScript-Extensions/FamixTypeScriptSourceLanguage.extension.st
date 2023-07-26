Extension { #name : #FamixTypeScriptSourceLanguage }

{ #category : #'*Famix-TypeScript-Extensions' }
FamixTypeScriptSourceLanguage >> isTypeScript [
	^ true
]

{ #category : #'*Famix-TypeScript-Extensions' }
FamixTypeScriptSourceLanguage >> name [
	
	<FMProperty: #name type: #String> 
	<derived>
	<FMComment: 'The name of the language'>
	
	^ 'TypeScript'
]
