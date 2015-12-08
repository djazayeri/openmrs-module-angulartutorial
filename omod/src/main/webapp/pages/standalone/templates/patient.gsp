<h1>
    Name: {{ patient.person.preferredName.display }}
</h1>

<h2>
    {{ patient.identifiers[0].display }}
</h2>
<h2>
    Birthdate: {{ patient.person.birthdate | date }}
    Gender: {{ patient.person.gender }}
</h2>

