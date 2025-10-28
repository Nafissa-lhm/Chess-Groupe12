Class {
	#name : 'MyChessWhiteSquare',
	#superclass : 'MyChessSquare',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'rendering' }
MyChessWhiteSquare >> renderBlackBishop [ [ 
	
	^ 'V'
]
]

{ #category : 'rendering' }
MyChessWhiteSquare >> renderBlackKing [ [ 
	
	^ 'L'
]
]

{ #category : 'rendering' }
MyChessWhiteSquare >> renderBlackQueen [ [ 
	
	^ 'W'
]
]

{ #category : 'rendering' }
MyChessWhiteSquare >> renderWhiteBishop [ [ 
	
	^ 'B'
]
]

{ #category : 'rendering' }
MyChessWhiteSquare >> renderWhiteKing [ [ 
	
	^ 'K'
]
]

{ #category : 'rendering' }
MyChessWhiteSquare >> renderWhiteQueen [ [ 
	
	^ 'Q'
]
]
