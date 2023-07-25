Extension { #name : #FamixTWithSourceLanguages }

{ #category : #'*Famix-TypeScript-Generator' }
FamixTWithSourceLanguages >> formattedSourceText [
    ^ self sourceLanguage 
        ifNotNil: [ :language | language format: self sourceText from: self ]
        ifNil: [ self sourceText ]
]
