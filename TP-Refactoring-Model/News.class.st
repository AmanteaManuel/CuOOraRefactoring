Class {
	#name : #News,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #private }
News >> retrieveQuestions: anUser [
|newsCol temp|
			newsCol := cuoora questions select:[:q | (q timestamp asDate = Date today)].
			temp :=  self getCollectionSortedByVotes: newsCol.
			^ self getLast100: temp byUser: anUser
]
