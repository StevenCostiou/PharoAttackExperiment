Class {
	#name : #SAAttackCode,
	#superclass : #Object,
	#category : #SecurityAttack
}

{ #category : #'as yet unclassified' }
SAAttackCode >> attack [

	SADomainObject compile: 'printOn: aStream 
	aStream << name'.
	'ha ha ha' crTrace
]

{ #category : #'as yet unclassified' }
SAAttackCode >> attackCode [
	^'printOn: aStream
		SADomainObject compile: ''printOn: aStream 
	aStream << name''.
	''ha ha ha'' crTrace'

]

{ #category : #'as yet unclassified' }
SAAttackCode >> attackObject [

	STON toString: (SAIntermediaryObject new
			 domainMethod: #readFrom:;
			 domainArgument: '	''ha ha ha read from'' crTrace.
				SADomainObject new name: ''titi''; yourself 
				
				' ;
			 yourself)
]

{ #category : #'as yet unclassified' }
SAAttackCode >> attackObject2 [

	STON toString: (SAIntermediaryObject new
			 domainMethod: #become:;
			 domainArgument: Object ;
			 yourself)
]
