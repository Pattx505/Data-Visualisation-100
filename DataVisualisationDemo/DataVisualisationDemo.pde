// Dear Data 100: every time I switch a light on
// x = time of day, y = room, size = necessity, colour = daylight outside

Table table;
String[] rooms = {"bedroom", "hallway", "living room", "bathroom", "kitchen"};

void setup() {
  size(1000, 520);
  pixelDensity(displayDensity());
  textFont(createFont("Arial", 14));
  table = loadTable("data.csv", "header");
  noStroke();
}

void draw() {
  background(20);
  drawAxes();

  for (int i = 0; i < table.getRowCount(); i++) {
    TableRow row = table.getRow(i);

    float x = timeToX(row.getString("time"));
    float y = roomToY(row.getString("room"));
    float d = necessityToSize(row.getInt("necessity"));

    fill(daylightColour(row.getInt("daylight_outside")), 190);
    ellipse(x, y, d, d);
  }

  drawKey();
}

// returns a circle diameter for a necessity rating (1-5)
float necessityToSize(int necessity) {
  return map(necessity, 1, 5, 8, 40);
}

// returns a colour for a daylight rating (1 = dark blue, 5 = yellow)
color daylightColour(int daylight) {
  return lerpColor(color(30, 40, 140), color(255, 220, 60), (daylight - 1) / 4.0);
}

// returns the x position for a time written as "HH:MM"
float timeToX(String t) {
  String[] parts = split(t, ':');
  float hours = int(parts[0]) + int(parts[1]) / 60.0;
  return map(hours, 0, 24, 100, 950);
}

// returns the y position for a room
float roomToY(String room) {
  for (int i = 0; i < rooms.length; i++) {
    if (rooms[i].equals(room)) {
      return 70 + i * 80;
    }
  }
  return 0;
}

void drawAxes() {
  textAlign(CENTER, TOP);
  for (int h = 0; h <= 24; h += 3) {
    float x = round(map(h, 0, 24, 100, 950));
    stroke(60);
    line(x, 30, x, 440);
    noStroke();
    fill(150);
    text(nf(h, 2) + ":00", x, 450);
  }

  textAlign(RIGHT, CENTER);
  fill(150);
  for (int i = 0; i < rooms.length; i++) {
    text(rooms[i], 85, 70 + i * 80);
  }
}

void drawKey() {
  textAlign(LEFT, CENTER);
  fill(150);
  text("colour: dark blue = dark outside, yellow = bright outside", 100, 485);
  text("size: bigger circle = I needed the light more", 100, 505);
}
