SELECT
    station_id,
	COUNT (session_id) AS total_sessions
FROM charging_sessions
GROUP BY station_id;
SELECT
    s.station_name,
	s.city,
	COUNT (c.session_id)AS total_sessions
FROM charging_sessions c
JOIN stations s
ON c.station_id= s.station_id
GROUP BY s.station_id
ORDER BY total_sessions DESC;
SELECT
    s.city,
	COUNT(c.session_id) AS total_sessions,
	SUM (c.energy_kwh) AS total_energy
FROM charging_sessions c
JOIN stations s
ON c.station_id=s.station_id
GROUP BY s.city
ORDER BY total_sessions DESC;
SELECT name FROM sqlite_master WHERE type='table';

	