# Data-Visualisation-100

Dear Data 100 project for IN1007 Java Programming (#CreativeCoding)

## Topic

Data on every light switch I operate. 
The main question is: **when do I switch lights on that I don't actually need?**

Additional questions:
- Which rooms do I switch lights on in most often?
- What time of day do I do it?
- How does the daylight outside affect whether I need the light?

## Data collected

One row per light switch operation, recorded in `data.csv`.

| Column | Meaning |
|---|---|
| `date` | Date of the observation (DD-MM-) |
| `time` | Time of the observation (HH:MM, 24h) |
| `room` | Generic room label (e.g. kitchen, hallway, bedroom, bathroom, van) |
| `on_or_off` | Whether I switched the light `on` or `off` |
| `daylight_outside` | 1 (dark) to 5 (bright daylight) |
| `necessity` | 1 (not needed at all) to 5 (could not do without it) |

Ratings are subjective.

## How I collect the data

I log each observation at the time it happens, in my phone's Notes app, then transcribe the rows into `data.csv` and commit.

## Anonymity

Rooms use generic labels only to keep anonymity.

## Progress

- 04-11-2026: Topic chosen
- 04-11-2026: Repository created, data collection started.

## Planned

- A class to represent a single light switch observation.
- At least 100 observations by the Week 10 sketch check-in.
