SELECT CInfo.FullName , CInfo.Address , MInfo.MovieName AS [Movies Rented] , SInfo.Salutation
FROM CustomerInfo AS CInfo
JOIN SalutationInfo SInfo ON SInfo.SalutationId=CInfo.SalutationId
JOIN MoviesInfo MInfo ON MInfo.MovieId=CInfo.CustomerId
JOIN MoviesRented MR ON MR.MovieId=CInfo.CustomerId;
