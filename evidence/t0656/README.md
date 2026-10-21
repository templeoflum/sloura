# Evidence for T-0656 — reference library 1

Fetched 14 Oct 2026 (UTC times per line in the logs) with curl (Safari user agent, no login, no cookies). Where the live page refused, the copy comes from the Internet Archive (`https://web.archive.org/web/2025/<url>`, which redirects to the nearest snapshot).

- `fetch-notes.md`: reusable notes on which sites block automated reads and the Wayback workaround (copied here from an out-of-scope memory write that pm-sloura is asked to settle, M-0823; see the T-0656 resubmission).
- `urls.tsv`: every URL tried (slug, URL).
- `fetch-log.tsv`: the live fetch for each: HTTP code, bytes, final URL, time.
- `wayback-log.tsv`: the Wayback retry for each live failure: snapshot URL, HTTP code. (Rows 2–15 are the first retry batch, rows 16–19 the second. A first attempt through the availability API was rate-limited (HTTP 429), so every row there read "none"; those rows were replaced by the direct-snapshot retry.)
- `<slug>.html` is the live copy; `<slug>.wayback.html` is the archived copy. A live file under 8 KB with code 403 is the site's refusal page, kept as proof of the failure.

## Entry → file

| # | Entry | Saved copy |
|---|---|---|
| 1 | Slow Revolution | book-slowrev-pw.html, book-slowrev-ubc.html |
| 2 | Houston Rap Tapes | book-raptapes-utp.html, book-raptapes-ubc.html |
| 3 | Houston Rap | book-houstonrap-artbook.html |
| 4 | Hip Hop in Houston | book-faniel-arcadia.html, book-faniel-cougar.html |
| 5 | Welcome 2 Houston | book-wilkins-afs.html, book-wilkins-uw.html |
| 6 | TM Slow Life | art-tm-slowlife.wayback.html (live: 403), art-tm-slowlife-prh.html |
| 7 | TM Poker Game | art-tm-storybehind.wayback.html (live: 403) |
| 8 | RBMA | art-rbma.html |
| 9 | Bitter Southerner | art-bittersoutherner.html |
| 10 | TIDAL | art-tidal.wayback.html (live: 403) |
| 11 | Crack | art-crack-3nthemornin.html |
| 12 | HP Still Standing | art-hp-stillstanding.html |
| 13 | HP Countdown | art-hp-screwlist.html |
| 14 | HP Swishahouse panel | art-hp-5000.html |
| 15 | Westword 2005 | art-westword-2005.html |
| 16 | Texas Standard Big Moe | art-texasstandard-bigmoe.html |
| 17 | Rolling Stone | book-slowrev-rs.html |
| 18 | Houstonia | book-slowrev-houstonia.html |
| 19 | DJ Mag | art-djmag.wayback.html (live: 403) |
| 20 | Texas Standard 5000 | art-texasstandard-5000.html |
| 21 | NPR | art-npr-drank.html |
| 22 | Soldiers United 4 Cash | doc-suc-rapreviews.html |
| 23 | Screwed in Houston | doc-vice-screwedinhouston.html, doc-tvdb-screwedinhouston.html |
| 24 | All Screwed Up | doc-allscrewedup-abc13.html |
| 25 | Mogul S3 | pod-mogul-culturemap.html |
| 26 | Phantom Power | pod-phantompower-wilkins.html |
| 27 | Peters et al. | acad-peters-ncjrs.wayback.html (live: 520); acad-peters-ojp.html (live: 404, guessed URL) |
| 28 | Sinnreich & Dols | acad-sinnreich-academia.wayback.html (live: 403); acad-sinnreich-rg.html (403, no retry) |
| 29 | JPMS review | acad-jpms-review.wayback.html (live: 403) |
| 30 | Vargas thesis | acad-vargas.html |
| 31 | UH DJ Screw Collection | arch-uh-agent.wayback.html (live: 403) |
| 32 | UH Brothers in Rhyme | arch-uh-brothers-djscrew.wayback.html (live: 403) |
| 33 | UH Digital Collections | arch-uh-digital.wayback.html (live: 403) |
| 34 | UH Beste/Walker coll. | arch-uh-beste.wayback.html (live: 403) |
| 35 | CAMH Slowed and Throwed | art-camh.html, art-txobserver-camh.html |
| 36 | 3 'N the Mornin' Pt 2 | wiki-3nthemornin2.html, arch-ia-3nthemornin.html |
| 37 | June 27th | art-rbma.html, art-djmag.wayback.html; UH page failed (arch-uh-june27.html 403, .wayback 404) |
| 38 | Chapter series | arch-ia-chapter046.html, arch-ia-djscrew-search.html |
| 39 | Bigtyme Vol II | arch-ia-bigtyme2.html |
| 40 | City of Syrup | wiki-cityofsyrup.html, rec-cityofsyrup-rapreviews.html |
| 41 | Swishahouse tapes | art-swishahouse-about.html, wiki-dhbl3.html, arch-ia-swisha-finalchapter.html, arch-ia-swisha-search*.html |
| 42 | Who Is Mike Jones? | wiki-mikejones.html |
| 43 | Wikipedia (south side) | wiki-djscrew.html, wiki-chopped.html, wiki-suc.html |
| 44 | Wikipedia (north side, lean) | wiki-swishahouse.html, wiki-5000.html, wiki-purpledrank.html |

## Opened but failed, or not used

- `art-tm-june27` (Texas Monthly, June 27 anniversary): live 403, Wayback snapshot also 403, WebFetch 403. Not used.
- `arch-uh-june27`, `arch-uh-facintime`, `arch-uh-slab` (UH exhibits): live 403, no Wayback snapshot (404). WebFetch on the June 27th page: 403. Not used.
- `arch-uh-blog` (UH Special Collections blog post ?p=2054): live connection failed (curl code 000); Wayback redirected to an unrelated news page. Not used.
- `art-chron-swishahouse` (Houston Chronicle): live 404 (the URL from search results was a preview host path), no snapshot. Not used.
- `rec-discogs-3nthemornin` (Discogs search): live 403, no snapshot. A Discogs master URL tried through WebFetch was guessed and returned 403; not used.
- `arch-ia-swisha-search`: Internet Archive full-text search returned unrelated items; replaced by the title search `arch-ia-swisha-search2`.
- WebFetch, a separate tool with no saved file, was also tried on three pages; all returned HTTP 403 (Texas Monthly June 27; UH June 27th; Discogs master 43781).
