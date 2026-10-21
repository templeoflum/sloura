# Fetch notes for later reference-library runs (T-0656, 14 Oct 2026)

- These return 403 to curl, and WebFetch gets the same: Texas Monthly, UH Libraries (findingaids, exhibits, digitalcollections), DJ Mag, TIDAL, UC Press, Academia.edu, ResearchGate, Discogs.
- The Wayback availability API (archive.org/wayback/available) returned 429 almost at once.
- What worked: `curl -sL https://web.archive.org/web/2025/<url>` with about 4 s between requests. It redirects to the nearest snapshot. Some UH exhibit item pages have no snapshot.
- Internet Archive `advancedsearch.php?...&output=json` works for finding tape uploads.
- Record both the live failure and the snapshot in evidence/<task>/.
