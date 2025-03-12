Design Document

Problem Statement

  There are 368 teams competing in NCAA Basketball within 34 athletic conferences, and stats that lead to team standing need to be defined.

Proposed Solution

  1. Identify and visualize key stats that contribute to a team’s success in the postseason by correlating stats with WAB metric (Wins Above Bubble) and postseason standings.
  2. Identify top teams by comparing their stats with league-wide average for each respective stat.

Conclusion

  Analysis of the dataset confirms what is already generally believed to be key contributors to a team’s success (i.e. offensive and defensive efficiency, rebounds, and turnover ratios). Furthermore, WAB shows noticeably stronger correlation across stats compared to a team’s postseason standings. “Intangibles” are probably a factor as to why this might be the case, especially in playoff and championship scenarios where a team’s success goes beyond hard statistics.

Recommendation

  1. Look into strength of schedule
  2. Key in on stats that seem to contribute the most to WAB:
    a. Power Rating (BARTHAG; 0.93)
    b. Adjusted Offensive/Defensive Efficiency (ADJOE/ADJDE; .82/-.8)
    c. Effective Field Goal Percentage Shot (EFG_O; 0.54)
    d. Turnover Rate (TOR)
  3. Consider an ordinal regression with postseason standing as the response variable

Dashboard Features

  1. Filter by team/school and year
  2. Summary of stats that correlate the most with playoff success
  3. Charts showing the team’s postseason standings and wins per year
  4. Map chart showing which states have the most wins, and the top schools per state according to number of wins.
