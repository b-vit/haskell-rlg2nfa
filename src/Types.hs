module Types where

-- Representation of the right linear grammar RLG G = (N,Sigma,P,S), where rules are list of tupples where one tupple represents one rule for example A -> aC
data RLG = RLG {nonterminals :: [Char], terminals :: [Char], rules :: [(Char,[Char])], startingSymbol :: Char}
    deriving (Show)

-- Representation of nondeterministic finite automaton NFA M = (Q, Sigma, Delta, q0, F), delta is d: Q x Sigma -> 2^Q (implemented as (1,x,2))
data NFA = NFA {states :: [Char], alphabet :: [Char], delta :: (Char,Char,Char), finalStates :: [Char]}
    deriving (Show)
