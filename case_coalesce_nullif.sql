SELECT COALESCE(NULLIF("sourceAet", ''), 'Unknown source aet title') as "sourceAet" FROM pacs_server;

SELECT 
	CASE
		WHEN desktop_app.os = 'LINUX' THEN 'Linux os system'
		WHEN desktop_app.os = 'WIN32' THEN 'Windows os system'
		ELSE 'Unsupported os'
	END AS os_system
FROM desktop_app
