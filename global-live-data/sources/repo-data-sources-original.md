---
tipo: "fonte"
projeto: "global-live-data"
resumo: "Copia da fonte docs/DATA-SOURCES.md."
tags: ["global-live-data", "fonte"]
atualizado: "2026-10-15"
origem: "docs/DATA-SOURCES.md"
capturado_em: "2026-10-15"
revisao: "458b227fc92b80a2752d601968e7ea8bb33fee58"
---

# Data sources and interpretation

Official provider pages linked below were reviewed on **15 October 2026**. Recheck terms, endpoint behavior, and licensing before launch and after provider changes. This document describes the MVP's source contract; it is not a guarantee of coverage, safety, availability, or legal compliance.

## USGS earthquake feed

- Endpoint: [`all_day.geojson`](https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_day.geojson)
- Format: [USGS GeoJSON Summary](https://earthquake.usgs.gov/earthquakes/feed/v1.0/geojson.php)
- Window: rolling past day, not a historical archive or forecast

USGS documents the past-day feeds as updated every minute. The portal can lag the source because of publication, network, and cache timing. Its feed-publication timestamp is `metadata.generated`; individual event times come from `properties.time`. Coordinates are longitude, latitude, and depth in kilometers. Magnitude can be missing. Source event links allow checking current USGS details. These fields and cadence are described in the [official feed specification](https://earthquake.usgs.gov/earthquakes/feed/v1.0/geojson.php).

The application validates and normalizes provider records, keeps only those explicitly classified as earthquakes, and filters/sorts them for display. Other or unclassified event types are tracked in `excludedEventCount`; invalid or duplicate records can also be omitted with a warning. A valid empty feed and a provider error are different states. An earthquake's magnitude is not the local shaking intensity or damage prediction. A USGS tsunami-related flag, if present in the data contract, must not be presented as an official tsunami warning.

### Credit and reuse

Credit: **U.S. Geological Survey (USGS)**. USGS-produced information is generally in the U.S. public domain; third-party copyrighted materials and trademarks have separate restrictions. This MVP consumes feed data and links to USGS rather than implying USGS endorsement. See [USGS Copyrights and Credits](https://www.usgs.gov/information-policies-and-instructions/copyrights-and-credits).

## MET Norway Locationforecast

- Endpoint: `https://api.met.no/weatherapi/locationforecast/2.0/compact`
- Inputs: a supported city's latitude and longitude
- Reference: [Locationforecast 2.0 documentation](https://api.met.no/weatherapi/locationforecast/2.0/documentation)

The compact endpoint provides forecast values for geographic coordinates. The app uses the selected curated city center, not a visitor's device location. The source publication timestamp is `properties.meta.updated_at`, while each `timeseries[].time` identifies a forecast timestep. These are distinct from when the portal retrieved the response.

Temperature is Celsius, wind speed is meters/second in the normalized data contract, relative humidity is percent, and precipitation is millimeters. Validate the declared provider units before displaying values. A timestep's instantaneous conditions and its next-hour precipitation refer to different kinds of values. Preserve any six-/twelve-hour totals as separate intervals; never relabel them as hourly rain. Later timesteps may be spaced farther apart. The [Locationforecast data model](https://docs.api.met.no/doc/locationforecast/datamodel.html) explains temporal resolution and forecast variables.

### Enablement and request requirements

Weather stays disabled without a genuine, owner-supplied `MET_USER_AGENT`. The operator must approve sending that public identifying contact to MET Norway. Never invent an address, scrape private contact details to fill it, or use a placeholder as a working identity.

MET Norway requires identifiable requests and responsible traffic: use server-side caching, honor `Expires`, reuse `Last-Modified` in `If-Modified-Since`, and keep coordinates to at most four decimal places. Reduce traffic on throttling. The published threshold above which an application needs special agreement is 20 requests/second across all clients and servers. Their terms also recommend a proxy to avoid sending visitors' IP addresses directly. Read the [MET Norway Terms of Service](https://api.met.no/doc/TermsOfService) before enablement.

The application sends city coordinates and the configured operator identifier from its server. Do not forward visitors' cookies, IP-related headers, or private profile data to providers. Hosting and infrastructure providers may still process routine request metadata; do not equate a server proxy with total anonymity.

### Attribution and licensing

Credit: **Data from MET Norway**. Its general data policy offers NLOD 2.0 and Creative Commons Attribution 4.0 International unless otherwise stated. Retain attribution, a source link, the [license link](https://creativecommons.org/licenses/by/4.0/), and an indication of presentation changes. This app normalizes, filters, formats, and presents forecast values; MET Norway does not endorse this app. See the [MET Norway Licensing and Data Policy](https://api.met.no/doc/License). Any later addition of provider icons or imagery requires checking their separate licenses.

## Freshness and failure semantics

The provider response contract distinguishes:

- `providerUpdatedAt`: source publication timestamp; never replaced with the page-render time
- `fetchedAt`: retrieval timestamp represented by the provider layer; shared-cache responses may retain the original upstream HTTP date
- `expiresAt`: the freshness boundary; not a promise that new source data exists then
- `ready`: a usable source result within the app's freshness rules
- `stale`: a retained source result accompanied by a stale/error notice
- `error`: no usable source result available
- `not_configured`: weather intentionally disabled because its operator identity is missing or invalid

A snapshot's `generatedAt` means the portal assembled that response, not that every provider updated then. Keep provenance and warnings visible when showing cached values. Do not substitute invented data during outages, replace missing numbers with zero, or silently show yesterday's forecast as current.

The shared server cache reduces duplicate provider requests. The in-memory cache and single-flight deduplication belong to one running process; cold starts, multiple instances/regions, deployments, and cache eviction can increase upstream calls. Deployment-platform cache behavior must be verified. This is not a globally coordinated rate limiter. Keep the supported location set bounded and review traffic before increasing it.

## Curated geography

`lib/geography.ts` contains 42 representative city centers and IANA time-zone identifiers. The directory supports localized country labels and selected aliases; it is intentionally incomplete. Coordinates are limited to four decimal places. Region labels are navigation aids, not a legal definition of jurisdiction.

There is no geocoding API, arbitrary address lookup, live device-location collection, or comprehensive boundary dataset. Distance is an approximate great-circle calculation from the selected city center. Map rendering and filtering do not establish the exact areas affected by a hazard.

## Safety and completeness

This portal is not an emergency-alert service. It does not provide earthquake prediction, authoritative tsunami warnings, evacuation instructions, or guaranteed hazard detection. A small event count, an empty filtered list, or unavailable weather must not be interpreted as an all-clear. Provider updates may be delayed or revised; city-center forecasts can miss local conditions. Use the appropriate official local warning service for safety decisions.

## Map geometry and generation

The committed `lib/world-paths.json` contains simplified land paths generated from Natural Earth through `world-atlas`'s `land-110m.json`. The underlying map data are public domain under [Natural Earth's terms](https://www.naturalearthdata.com/about/terms-of-use/). This is a geographic overview, not a legal boundary determination or a position on territorial disputes.

To regenerate locally after installing development dependencies:

```sh
node scripts/generate-world-map.mjs
```

The script converts TopoJSON with `topojson-client`, uses `d3-geo`'s equirectangular projection and antimeridian clipping, and writes the generated JSON. Clipping prevents rings crossing ±180° from filling horizontal strips across the map. Projection scale and translation match earthquake/city markers in the 1000 × 500 SVG viewbox. Unit tests check exact regeneration, bounded segments, seam-crossing fixtures, and marker alignment. Review the resulting map before committing changes. No external tiles or geography API are called at runtime.

- `world-atlas` 2.0.2: [source](https://github.com/topojson/world-atlas), [ISC license](https://github.com/topojson/world-atlas/blob/master/LICENSE), copyright 2013–2019 Michael Bostock.
- `topojson-client` 3.1.0: [source](https://github.com/topojson/topojson-client), [ISC license](https://github.com/topojson/topojson-client/blob/master/LICENSE), copyright 2012–2019 Michael Bostock.

- `d3-geo` 3.1.1: [source](https://github.com/d3/d3-geo), [ISC license with GeographicLib MIT notice](https://github.com/d3/d3-geo/blob/main/LICENSE), copyright 2010–2024 Mike Bostock; GeographicLib notice copyright 2008–2012 Charles Karney.

These are development dependencies used for generation. Retain their applicable copyright and permission notices when redistributing their software; the Natural Earth data's public-domain status is separate from these package licenses.

## Conexoes
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[met-forecast]] - Previsao MET condicionada a identificacao publica autorizada.
