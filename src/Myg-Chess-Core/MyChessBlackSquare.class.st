Class {
	#name : 'MyChessBlackSquare',
	#superclass : 'MyChessSquare',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'rendering' }
MyChessBlackSquare >> renderBlackBishop [ [ 
	
	^ 'v' 
	
]
]

{ #category : 'rendering' }
MyChessBlackSquare >> renderBlackKing [ [ 
	
	^ 'l' 
	
]
]

{ #category : 'rendering' }
MyChessBlackSquare >> renderBlackQueen [ [ 
	
	^ 'w' 
	
]
]

{ #category : 'rendering' }
MyChessBlackSquare >> renderWhiteBishop [ [ 
	
	^ 'b' 
	
]
]

{ #category : 'rendering' }
MyChessBlackSquare >> renderWhiteKing [ [ 
	
	^ 'k' 
	
]
]

{ #category : 'rendering' }
MyChessBlackSquare >> renderWhiteQueen [ [ 
	
	^ 'q' 
	
]
]
