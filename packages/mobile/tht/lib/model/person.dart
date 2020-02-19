class Person {
    String name;
    String lastName;

    Person({
        this.name,
        this.lastName,
    });

    String get fullName => "$name $lastName";

    factory Person.fromJson(Map<String, dynamic> json) => Person(
        name: json["name"] == null ? null : json["name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
    );

    Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "last_name": lastName == null ? null : lastName,
    };
}
