Class {
	#name : #PopularToday,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #private }
PopularToday >> retrieveQuestions: anUser [
|popularTCol averageVotes temp|
			popularTCol := cuoora getTodayQuestions.
			averageVotes := cuoora calculateVotes: popularTCol size.
			temp := self getCollectionSortedByVotes: (popularTCol select:[:q | q positiveVotes size >= averageVotes ]).
			^ self getLast100: temp byUser: anUser
]
