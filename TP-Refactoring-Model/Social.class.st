Class {
	#name : #Social,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
Social >> retrieveQuestions: anUser [
	^ self getQuestions: anUser.
]
