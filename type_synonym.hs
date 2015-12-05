type Questions a = [(a, a)]
type Answers = [Bool]

type Results a = [(Bool, (a, a))]

questions1 :: Questions String
questions1 = [
        ("Elephant", "Giraffe"),
        ("Apple", "Banana"),
        ("TV", "Radio"),
        ("Plane", "Ship"),
        ("Tennis", "Ski") ]
answers1 :: Answers
answers1 = [True, False, True, True, False]

result :: Questions a -> Answers -> Results a
result = flip zip

likes, hates :: Results a -> [a]
likes = map $ \(a, s) -> (if a then fst else snd) s
hates = map $ \(a, s) -> (if a then snd else fst) s
