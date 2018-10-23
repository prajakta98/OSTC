int count = 0;
int x1, x2, x3;
void setup()
{
  Serial.begin(9600);
  pinMode(A0, INPUT);
  pinMode(A1, INPUT);
  pinMode(A1, INPUT);
  pinMode(8, OUTPUT);
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(11, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(13, OUTPUT);
  digitalWrite(5, HIGH);
  digitalWrite(6, HIGH);
  digitalWrite(7, HIGH);
  digitalWrite(2, LOW);
  digitalWrite(3, LOW);
  digitalWrite(4, LOW);
}


void loop()
{
  int p1 = analogRead(A0);
  int p2 = analogRead(A1);
  int p3 = analogRead(A2);

  count = count + 1;
  if (count == 1)
  {
    int x1 = p1;
    int x2 = p2;
    int x3 = p3;
  }

  int h1 = (x1 + 5);
  int l1 = (x1 - 5);

  int h2 = (x2 + 5);
  int l2 = (x2 - 5);

  int h3 = (x3 + 5);
  int l3 = (x3 - 5);

  if (p1 > h1)
  {
    Serial.println(p1);
    x1 = p1;
    digitalWrite(8, HIGH);
    digitalWrite(9, LOW);
    delay(1500);
  }
  if (p1 < l1)
  {
    Serial.println(p1);
    x1 = p1;
    digitalWrite(9, HIGH);
    digitalWrite(8, LOW);
    delay(1500);
  }
  if (p1 < h1 || p1 > l1)
  {
    Serial.println(p1);
    x1 = p1;
    digitalWrite(8, LOW);
    digitalWrite(9, LOW);
    delay(1500);
  }
  if (p2 > h2)
  {
    Serial.println(p2);
    x2 = p2;
    digitalWrite(10, HIGH);
    digitalWrite(11, LOW);
    delay(1500);
  }
  if (p2 < l2)
  {
    Serial.println(p2);
    x2 = p2;
    digitalWrite(11, HIGH);
    digitalWrite(10, LOW);
    delay(1500);
  }
  if (p2 < h2 || p2 > l2)
  {
    Serial.println(p2);
    x2 = p2;
    digitalWrite(10, LOW);
    digitalWrite(11, LOW);
    delay(1500);
  }
  if (p3 > h3)
  {
    Serial.println(p3);
    x3 = p3;
    digitalWrite(12, HIGH);
    digitalWrite(13, LOW);
    delay(1500);
  }
  if (p3 < l3)
  {
    Serial.println(p3);
    x3 = p3;
    digitalWrite(13, HIGH);
    digitalWrite(12, LOW);
    delay(1500);
  }
  if (p3 < h3 || p3 > l3)
  {
    Serial.println(p3);
    x3 = p3;
    digitalWrite(12, LOW);
    digitalWrite(13, LOW);
    delay(1500);
  }
}

