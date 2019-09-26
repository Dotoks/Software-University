SELECT *
  FROM (
SELECT [tc].[JobDuringJourney] AS [JobDuringJourney],
       [c].[FirstName] + ' ' + [c].[LastName] AS [FullName],
	   ROW_NUMBER() OVER (PARTITION BY [tc].[JobDuringJourney] ORDER BY [c].[BirthDate] ASC) AS [Rank]
  FROM [dbo].[Colonists] AS c
  JOIN [dbo].[TravelCards] AS [tc] ON [c].[Id] = [tc].[ColonistId]) AS k
 WHERE [k].[Rank] = 2;