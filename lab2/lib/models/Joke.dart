class Joke {
  int id;
  String type;
  String setup;
  String punchline;

  Joke({required this.id, required this.type, required this.setup, required this.punchline});

  factory Joke.fromJson(Map<String, dynamic> data) => Joke(
      id: data['id'],
      type: data['type'],
      setup: data['setup'],
      punchline: data['punchline']);
}