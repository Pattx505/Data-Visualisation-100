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
| `date` | Date of the observation (DD-MM) |
| `time` | Time of the observation (HH:MM, 24h) |
| `room` | Generic room label (e.g. kitchen, hallway, bedroom, bathroom, van) |
| `daylight_outside` | 1 (dark) to 5 (bright daylight) |
| `necessity` | 1 (not needed at all) to 5 (could not do without it) |

Ratings are subjective.

## How I collect the data

I log each observation at the time it happens, in my phone's Notes app, then transcribe the rows into `data.csv` and commit.

## Anonymity

Rooms use generic labels only to keep anonymity.

## Progress

- 03-11-2026: Topic chosen, data collection started
- 04-11-2026: Repository created

## Planned

- A class to represent a single light switch observation.
- At least 100 observations by the Week 10 sketch check-in.

## Code

The Processing sketch (`light_sketch/`) loads `data.csv` and draws one circle per observation. Circle size shows how necessary the light was, and colour shows the daylight outside (dark blue to yellow).

### Methods

A method is a named, reusable block of code that takes inputs (parameters) and can return a value, so the logic is written once and called wherever it's needed.

```java
// returns a circle diameter for a necessity rating (1-5)
float necessityToSize(int necessity) {
  return map(necessity, 1, 5, 10, 60);
}
```

- `float` is the return type, the value the method gives back.
- `necessity` is the parameter, the input.
- `return` sends the result back to the caller.
