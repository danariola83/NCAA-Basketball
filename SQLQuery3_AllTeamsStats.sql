SELECT 
	TEAM,
	school AS FullSchoolName,
	CONF AS ConferenceID,
	G AS GamesPlayed,
	W AS Wins,
	ROUND(CAST(W as float) / CAST(G as float), 2) AS WinRatio,
	state_abbr,
	YEAR,
	ADJOE AS OffensiveEff,
	ADJDE AS DefensiveEff,
	BARTHAG AS PowerRtg,
	EFG_O AS FGpct,
	TOR AS TurnoverRatio,
	ORB AS OffensiveRB,
	WAB AS WinsAboveBubble,
	POSTSEASON,
	SEED,
	POSTSEASONordinal AS PostseasonStdg
FROM [NCAA-Basketball].[dbo].[cbb_merged]
ORDER BY BARTHAG DESC;

