SELECT 	
	CONF AS ConferenceID,
	SUM(G) AS TotalGamesPlayed,
	SUM(W) AS TotalWins,
	ROUND(SUM(CAST(W AS float))/SUM(CAST(G AS float)), 2) AS WinRatio,
	ROUND(AVG(ADJOE), 2) AS OffensiveEff,
	ROUND(AVG(ADJDE), 2) AS DefensiveEff,
	ROUND(AVG(BARTHAG), 2) AS PowerRtg,
	ROUND(AVG(EFG_O), 2) AS FGpct,
	ROUND(AVG(TOR), 2) AS TurnoverRatio,
	ROUND(AVG(ORB), 2) AS OffensiveRB,
	ROUND(AVG(WAB), 2) AS WinsAboveBubble,
	SUM(POSTSEASONordinal) AS PostseasonStdg,
	SUM(SEED) AS SEED,
	ROUND(sum(ADJOE) / sum(ADJDE), 2) as EffRatio
FROM [NCAA-Basketball].[dbo].[cbb_merged]
GROUP BY CONF
ORDER BY TotalGamesPlayed DESC, PostseasonStdg ASC;

