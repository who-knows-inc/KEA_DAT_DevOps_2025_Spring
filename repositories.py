GROUP_REPOS = [
        {
            "name": "Example Group",
            "gitLinks": [""],
            "backend": "http(s)://<IP/DOMAIN>/<APIURL>",
            "frontend": "http(s)://<IP/DOMAIN>/<FrontEndURL>",
            "monitoring": "http(s)://<IP/DOMAIN>/<MonitoringURL>",
            "stack": ["Flask", "Svelte", "CouchDB", "Redis"],
            "documentation": ["link to documentation", "another link if it applies", "et cetera"],
            "sla": "link to sla",
        },
        {
           "name": "Debugger-Demons",
            "gitLinks": ["https://github.com/Debugger-Demons/whoknows.git"],
            "backend": "52.174.164.161",
            "frontend": "52.174.164.161",
            "monitoring": "",
            "stack": ["Rust, Actix"],
            "documentation": [""]
        }
]
