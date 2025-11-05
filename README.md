## Thème du projet



Pour ce travail, j’ai choisi le kata “Remove nil checks” du projet MyChess.
L’objectif principal était de supprimer toutes les vérifications nil présentes dans le code source et de les remplacer par une approche orientée objet à l’aide du Null Object Pattern.


Au début du projet, tout paraissait flou : je devais intervenir sur un code déjà existant, comprendre son fonctionnement, identifier où et pourquoi des vérifications nil étaient utilisées, puis trouver comment les remplacer sans casser la logique du jeu. C’était la première fois que je travaillais sur un code complet que je n’avais pas écrit moi-même, et cela m’a poussée à bien analyser chaque classe et ses interactions.

## Mise en place de l’environnement



J’ai utilisé Pharo 13 et importé le projet MygChess via GitHub.
Chaque membre du groupe possédait une branche distincte pour son kata, ce qui m’a permis de travailler sur ma partie sans interférer avec les autres.
J’ai rencontré quelques difficultés au moment du push depuis Pharo vers GitHub, mais j’ai fait de mon mieux pour que tout soit en ordre dans le dépôt.

## Étapes du travail réalisé
### 1. Création de la classe MyChessEmptyPiece
J’ai commencé par concevoir la classe MyChessEmptyPiece afin qu’elle remplace les valeurs nil dans l’échiquier.
J’y ai ajouté les méthodes essentielles :
isEmpty → renvoie true pour indiquer qu’il s’agit d’une case vide.
isOccupied → renvoie false.
renderPieceOn: → gère l’affichage graphique d’une case vide.
Cela a permis de représenter les cases vides comme de véritables objets, éliminant le besoin de tests ifNil.
### 2. Modification des classes de pièces
J’ai ajouté la méthode isOccupied dans la classe MyPiece (et héritée par les autres pièces comme le roi, la tour, le fou, etc.), pour renvoyer true.
Cela a permis d’utiliser le polymorphisme au lieu de vérifier explicitement si une case contenait nil.
### 3. Refactorisation de MyChessSquare
La méthode initializeSquares a été modifiée :
Avant, les cases étaient initialisées avec contents: nil.
Après modification, elles sont initialisées avec contents: MyChessEmptyPiece new.
J’ai aussi adapté la méthode contents: pour qu’elle appelle renderPieceOn: au lieu de dépendre de tests ifNil.
### 4. Adaptation de la logique du jeu
Dans MyPiece >> opponentPieces, j’ai remplacé la vérification e notNil par e isOccupied.
Dans MyChessSquare >> hasPiece, j’ai supprimé isNil not et utilisé isOccupied à la place.
Ces modifications ont permis d’uniformiser la logique entre les pièces et les cases vides.
### 5. Vérifications et ajustements
J’ai relu le code complet pour m’assurer que partout où l’on utilisait MyChessEmptyPiece, on créait bien une instance (new) et non pas la classe elle-même.
Enfin, j’ai exécuté les tests de chaque module pour vérifier la cohérence générale du jeu.
## Compétences développées
Lecture et compréhension d’un code existant en Smalltalk.
Application concrète du Null Object Pattern.
Refactorisation orientée objet pour améliorer la maintenabilité du code.
Utilisation de Git et GitHub pour gérer mon travail sur une branche personnelle.
Collaboration dans un projet partagé avec d’autres étudiants.
## Conclusion


Ce travail m’a beaucoup appris sur la compréhension de code existant, le raisonnement objet et la rigueur nécessaire lorsqu’on modifie une base de code partagée.
J’ai compris l’importance du polymorphisme dans la simplification du code et la suppression des conditions inutiles.
