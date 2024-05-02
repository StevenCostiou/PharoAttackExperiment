"
Object materializer that transforms intermediary objects to domain objects
"
Class {
	#name : #SADomainMaterializer,
	#superclass : #Object,
	#category : #SecurityAttack
}

{ #category : #'serialize/materialize' }
SADomainMaterializer >> materializeObjects [

	| domainObjects |
	domainObjects := (STON fromString: self serializedObjects) collect: [
		                 :inter |
		                 SADomainObject
			                 perform: inter domainMethod
			                 with: inter domainArgument ].
	^domainObjects
]

{ #category : #'serialize/materialize' }
SADomainMaterializer >> serializeTestObjects [

	| intermediateObjects |
	intermediateObjects := #( 'toto' 'titi' 'tata' ) collect: [ :n |
		                       SAIntermediaryObject new
			                       domainMethod: #instantiate:;
			                       domainArgument: n;
			                       yourself ].
	STON toString: intermediateObjects.
		 
]

{ #category : #'serialize/materialize' }
SADomainMaterializer >> serializedObjects [
	^'[SAIntermediaryObject{#domainMethod:#''readFrom:'',#domainArgument:''\t\''ha ha ha read from\'' crTrace.\r\t\t\t\tSADomainObject new name: \''titi\''; yourself \r\t\t\t\t\r\t\t\t\t''},SAIntermediaryObject{#domainMethod:#''instantiate:'',#domainArgument:''titi''},SAIntermediaryObject{#domainMethod:#''instantiate:'',#domainArgument:''tata''}]'
]
