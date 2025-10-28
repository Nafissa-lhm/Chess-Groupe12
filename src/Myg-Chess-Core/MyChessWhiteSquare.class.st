Class {
	#name : 'MyChessWhiteSquare',
	#superclass : 'MyChessSquare',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'rendering' }
MyChessWhiteSquare >> renderBlackKing [ [ 
	
	^ 'L'
]
]

{ #category : 'rendering' }
MyChessWhiteSquare >> renderWhiteKing [ [ 
	
	^ 'K'
]
]
