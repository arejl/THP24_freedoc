# README

Faire `bundle-install` et `rails db:seed` pour remplir la BDD.

<h3>2.1. FreeDoc - Réserve ton docteur </h3>
<h4>2.1.1. Le pitch</h4>
<p>Allez, on va implémenter pour de vrai ce concurrent de Doctolib dont on te parle à longueur de ressource ! À toi d'être chirurgical 👩‍⚕️</p>

<h4>2.1.2. Les models</h4>
<p>Pour ce premier exercice, nous allons t'aider et te donner les models à créer :</p>

<ul>
  <li>un model <code>Doctor</code>, qui a comme attributs :
  <ul>
    <li>un <code>first_name</code>, qui est un string</li>
    <li>un <code>last_name</code>, qui est un string</li>
    <li>un <code>specialty</code>, qui est un string</li>
    <li>un <code>zip_code</code>, qui est un string</li>
  </ul></li>
  <li>un model <code>Patient</code>, qui a comme attributs :
  <ul>
    <li>un <code>first_name</code>, qui est un string</li>
    <li>un <code>last_name</code>, qui est un string</li>
  </ul></li>
  <li>un model <code>Appointment</code>, qui a comme attributs :
  <ul>
    <li>un <code>date</code>, qui est un datetime</li>
  </ul></li>
</ul>

<p>Une fois les attributs fixés, on s'attaque aux relations :</p>
<ul>
  <li>Un <code>appointment</code> ne peut avoir qu'un seul <code>doctor</code>, mais un <code>doctor</code> peut avoir plusieurs <code>appointment</code>.</li>
  <li>Un <code>appointment</code> ne peut avoir qu'un seul <code>patient</code>, mais un <code>patient</code> peut avoir plusieurs <code>appointment</code>.</li>
  <li>Un <code>doctor</code> peut avoir plusieurs <code>patient</code>, au travers des <code>appointments</code>, et vice versa.</li>
</ul>

<p>Je t'invite à créer les models et les migrations puis à les passer.</p>

<h4>2.1.3. Tester</h4>
<p>Pour tester, tu peux aller dans la console, créer des <code>doctor</code>, <code>patient</code>, et <code>appointment</code> à la volée, puis les lier.</p>

<div class="card box-shadow-0 border-danger">
  <div class="card-content collapse show">
    <div class="card-body">
      <h4 class="card-title">⚠️ ALERTE ERREUR COMMUNE</h4>
      <p class="card-text">Comme les <code>doctor</code> et les <code>patient</code> sont liés en N-N, rappelle-toi qu'un <code>patients_list = doctor_instance.patients</code> va te retourner <b>un array</b> d'objets de class <code>Patient</code>. <br>
      Si tu fais <code>patients_list.last_name</code> dessus, ça va te renverra une erreur car un array n'a pas de <code>last_name</code>. <br>
      Par contre tu peux faire dessus un <code>patients_list.first.last_name</code> ou <code>patients_list[0].last_name</code> 😉.</p>
    </div>
  </div>
</div>

<p>Une fois que c'est bon, n'oublie pas le seeds.rb qui va bien.</p>

<h4>2.1.4. Petit coup de boost</h4>
<p>Ta startup de docteurs marche à merveille, tellement que tu aimerais ajouter plusieurs tables :</p>

<ul>
  <li><code>city</code>. Chaque docteur, patient, et rendez-vous est lié à une <code>city</code>. Une city peut avoir plusieurs docteurs, patients, et rendez-vous.</li>
  <li>tu voudrais virer la ligne <code>specialty</code> de ta table <code>doctor</code> et la remplacer par un model à part entière : tu vas donc créer un model <code>specialty</code>. Un docteur aurait plusieurs <code>specialty</code> (DEAL_WITH_IT), et une <code>specialty</code> pourrait concerner plusieurs <code>doctor</code>.</li>
</ul>
<p>Comme d'hab tu vas tester et tu compléteras le seeds.rb pour prendre en compte ces changements.</p> 
<p>Et voilà pour FreeDoc ! Doctolib est en PLS.</p>

