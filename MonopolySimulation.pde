String gameID ="" + year() + "/" + month() + "/" + second() + "," + minute() + "," + hour();

int on = 1;
float die1;
float die2;
int rolled;
StringList names;
IntList lands;
PrintWriter output;

void setup() {
  output = createWriter("Games/" + gameID + ".txt");
  names = new StringList();
  lands = new IntList();

//Tile Names ------------------------------
names.append("GO");
names.append("Mediterranean Avenue");
names.append("Community Chest 1");
names.append("Baltic Avenue");
names.append("Income Tax");
names.append("Reading Railroad");
names.append("Oriental Avenue");
names.append("Chance 1");
names.append("Vermont Avenue");
names.append("Connecticut Avenue");
names.append("Just Visiting JAIL");
names.append("St. Charles Place");
names.append("Electric Company");
names.append("States Avenue");
names.append("Virginia Avenue");
names.append("Pennsylvania Railroad");
names.append("St. James Place");
names.append("Community Chest 2");
names.append("Tennessee Avenue");
names.append("New York Avenue");
names.append("Free Parking");
names.append("Kentucky Avenue");
names.append("Chance 2");
names.append("Indiana Avenue");
names.append("Illinois Avenue");
names.append("B&Q Railroad");
names.append("Atlantic Avenue");
names.append("Ventnor Avenue");
names.append("Water Works");
names.append("Marvin Gardens");
names.append("Go To JAIL");
names.append("Pacific Avenue");
names.append("North Carolina Avenue");
names.append("Community Chest 3");
names.append("Pennsylvania Avenue");
names.append("Shorter Line");
names.append("Chance 3");
names.append("Park Place");
names.append("Luxury Tax");
names.append("Boardwalk");
//Tile Names ------------------------------
for (int l = 1; l < 41; l = l + 1) {
  lands.append(0);
  };
  println(lands.size());
//Tile Lands Set --------------------------



//Tile Lands Set --------------------------
  size(100,100);
  for (int i = 1; i < 101; i = i + 1) {
    die1 = random(1,6);
    die2 = random(1,6);
    rolled = int(die1 + die2);
    on += rolled;
    if (on > 39) {
      on -= 40;
    };
    println(i + ": Landed on " + names.get(on));
    lands.set(on, lands.get(on) + 1);
  };
  output.println("Based off data from 100 rounds");
  output.println("-------------------------------");
  for (int d = 1; d < 40; d = d + 1) {
  output.println(names.get(d) + " - " + lands.get(d));
  };
  output.flush();
  output.close();
  open("/Users/gilbert/Documents/Processing/Monopoly_Simulation/application.macosx/Games/"+gameID+".txt");
  exit();
};
