#Script LB2, Modul 122, Manuel Levy, ICT-20d, TBZ

#Hier beginnt die Do-while Schleife in welcher sich das gesammte Script befindet. Das Skript wird solange ausgeführt (Do) weil $ProgrammWiederholen "y" entspricht (While). 

Do {

#Ausgabe von der Aufforderung an den Benutzer sich für einen Verein zu entscheiden. 
Write-Host "Hier finden Sie eine Liste aller Vereine der Credit Suisse Super League entscheiden Sie sich für einen Verein"

#Ausgabe der 10 Vereinen. Die Vereine wurden alphabetisch nummeriert, sodass der User nicht den Namen des Vereins eingeben muss.


Write-Host "1 = BSC Young Boys"
Write-Host "2 = FC Basel 1893"
Write-Host "3 = FC Lugano"
Write-Host "4 = FC Luzern"
Write-Host "5 = FC Sion"
Write-Host "6 = FC St.Gallen 1879"
Write-Host "7 = FC Winterthur"
Write-Host "8 = FC Zürich"
Write-Host "9 = Grasshopper Club Zürich"
Write-Host "10 = Servette FC"

#Hier wird der Loop für den Switch Case definiert, sodass beim Default Case die Benutzereingabe wiederholt werden soll. Wenn eine Zahl von 1 bis 10 eingegeben wird, ist die Variable $Eingabeaufforderungsloop auf "n" und das Skript geht weiter, wenn der Default Case eintritt wird die Variable auf "y" gesetzt und der Switch Case wird wiederholt. Ich habe die Variable $Eingabeaufforderungsloop aus dem selben Grund wie bei der $ProgrammWiederholen gewählt, sodass wenn der User eine Zahl von 1 bis 10 eingibt die $Eingabeaufforderungsloop auf "n" gesetzt wird und das Programm weitergeht und wenn es auf "y" gesetzt ist (Beim Default-Case) die Benutzeranfrage wiederholt wird, was für mich am verständlichsten war.

$Eingabeaufforderungsloop = "y"

Do { 

    #Aufforderung Benutzereingabe Verein von 1 bis 10. 

    $VereinAuswahl = Read-Host "Geben Sie die Zahl des Vereins ein von welchem Sie die prozentuale Chance haben wollen, die Credit Suisse Super League zu gewinnen."

    #In diesem Switch Case werden die Auswahl des Vereines und die Variablen Marktwert, Form, Sonstiges und Punkte definiert. Die Variablen werden anhand der Dokumenatation festgelegt. Die Variabeln sind so definiert, dass sie bei der Begründung übersichtlich dargestellt werden können. Ich habe ein Switch Case gewählt da ich eine grosse Datenmenge in für die Variablen habe und es so übersichtlicher und verständlicher ist. 

    Switch($VereinAuswahl) 
    {
       1 {
            $Verein = "BSC Young Boys"
            $Marktwert = "hoch"
            $Form = "gut"
            $Sonstiges = "nein"
            $Punkte = 35
            $Eingabeaufforderungsloop = "n"
            }
       2 {$Verein = "FC Basel 1893"
            $Marktwert = "hoch" 
            $Form = "mittel"
            $Sonstiges = "nein"
            $Punkte = 21
            $Eingabeaufforderungsloop = "n"
            }
       3 {$Verein = "FC Lugano"
            $Marktwert = "mittel" 
            $Form = "mittel"
            $Sonstiges = "nein"
            $Punkte = 23
            $Eingabeaufforderungsloop = "n"
            }
       4 {$Verein = "FC Luzern"
            $Marktwert = "mittel"
            $Form = "mittel"
            $Sonstiges = "Der Vereinspräsident Bernhard Alpstäg stellt sich gegen die Vereinsführung was für Unruhe sorgt."
            $Punkte = 20
            $Eingabeaufforderungsloop = "n"
            }
       5 {$Verein = "FC Sion"
            $Marktwert = "mittel"
            $Form = "schlecht"
            $Sonstiges = "FC Sion hat einen neuen Trainer und Mario Balotelli und Christian Constantin sorgen für Unruhe."
            $Punkte = 20
            $Eingabeaufforderungsloop = "n"
            }
       6 {$Verein = "FC St.Gallen 1879"
            $Marktwert = "mittel"
            $Form = "mittel"
            $Sonstiges = "nein"
            $Punkte = 24
            $Eingabeaufforderungsloop = "n"
            }
       7 {$Verein = "FC Winterthur"
            $Marktwert = "tief"
            $Form = "mittel"
            $Sonstiges = "nein"
            $Punkte = 16
            $Eingabeaufforderungsloop = "n"
            }
       8 {$Verein = "FC Zürich"
            $Marktwert = "mittel"
            $Form = "mittel"
            $Sonstiges = "nein"
            $Punkte = 12
            $Eingabeaufforderungsloop = "n"
            }
       9 {$Verein = "Grasshopper Club Zürich"
            $Marktwert = "mittel"
            $Form = "mittel"
            $Sonstiges = "nein"
            $Punkte = 20
            $Eingabeaufforderungsloop = "n"
            }
       10 {$Verein = "Servette FC"
            $Marktwert = "mittel"
            $Form = "mittel"
            $Sonstiges = "nein"
            $Punkte = 25
            $Eingabeaufforderungsloop = "n"
            }
       Default {Write-Host "Fehler, geben Sie eine Zahl zwischen 1 bis 10 an."
            $Eingabeaufforderungsloop = "y" 
            }

    }

#Hier ist der While Teil der Do While Schleife der Benutzeraufforderung. Ich habe die Variable $Eingabeaufforderungsloop aus dem selben Grund wie bei der $ProgrammWiederholen gewählt, sodass wenn der User eine Zahl von 1 bis 10 eingibt die $Eingabeaufforderungsloop auf "n" gesetzt wird und das Programm weitergeht und wenn es auf "y" gesetzt ist (Beim Default-Case) die Benutzeranfrage wiederholt wird und es so übersichtlicher und verständlicher ist. 

} While ($Eingabeaufforderungsloop -eq "y")

#Berrechnung Variable $Prozent, Formel: 100 / Maximale erreichbare Punkte (16 Spiele * 3 Punkte = 48 Punkte) * Erreichte Punkte des ausgewählten Vereins

$Prozent = 100 / 48 * $Punkte

#Berrechnung Variable $MWZahl, Formel: Wenn der Marktwert hoch ist (Über 30 mio. €) ist $MWZahl = 1, Wenn der Marktwert mittel ist (Zwischen 15 bis 30 mio. €) ist $MWZahl = 0.9, Wenn der Marktwert tief ist (Unter 15 mio. €) ist $MWZahl = 0.8. Ich habe eine elseif-Anweisung gewählt, da ich eine kleine Menge an Daten auswerte und es nur eine Anweisung gibt. Ich habe $MWZahl gewählt, da ich diese Zahl für die Berrechnung und $Marktwert für die Begründung brauche.

if ($Marktwert -eq "hoch") {$MWZahl = 1}
elseif ($Marktwert -eq "mittel") {$MWZahl = 0.9}
else {$MWZahl = 0.8}

#Berrechnung Variable $FormZahl, Formel: Wenn die Form gut ist (Ab 10 Punkten aus 5 Spielen) ist $FormZahl = 1, Wenn die Form mittel ist (Zwischen 7 bis 9 Punkten aus 5 Spielen) ist $FormZahl = 0.95, Wenn die Form gut ist (Unter 7 Punkten aus 5 Spielen) ist $FormZahl = 9. Ich habe eine elseif-Anweisung gewählt, da ich eine kleine Menge an Daten auswerte und es nur eine Anweisung gibt. Ich habe $Formzahl gewählt, da ich diese Zahl für die Berrechnung und $Form für die Begründung brauche.

if ($Form -eq "gut") {$FormZahl = 1}
elseif ($Form -eq "mittel") {$FormZahl = 0.95}
else {$FormZahl = 0.9}

#Berrechnung Variable $SonstigesZahl, Formel: Wenn Sonstiges Nein ist (Keine sonstigen Probleme) ist $SonstigesZahl = 1, Wenn Sonstiges nicht Neine ist (Sonstigen Probleme) ist $SonstigesZahl = 0.9. Ich habe eine else-Anweisung gewählt, da ich eine kleine Menge an Daten auswerte und es nur eine Anweisung gibt. Ich habe $SonstigesZahl gewählt, da ich diese Zahl für die Berrechnung und $Sonstiges für die Begründung brauche.

if ($Sonstiges -eq "nein") {$SonstigesZahl = 1}
else {$SonstigesZahl = 0.9}

#Berrechnung Prozent * Marktwertzahl

$Prozent = $Prozent * $MWZahl

#Berrechnung Prozent * Formzahl

$Prozent = $Prozent * $FormZahl

#Berrechnung Prozent * Sonstigeszahl

$Prozent = $Prozent * $SonstigesZahl

#Ausgabe $Prozent, Anhand der Variablen $Verein und $Prozent wird ein Satz mit Verein und Prozentsatz die CSSL zu gewinnen generiert. Der Satz ist auf die Definition der Variablen angepasst welche mit Adjektiven definiert sind und so direkt in den Satz eigefügt werden können.

Write-Host "Die Chance von $Verein die CSSL zu gewinnen, liegt bei $Prozent %."

#Begründung Prozent, Hier finde ich mit einer Elseif-Anweisung herraus ob die Chance Hoch (>66), durchschnittlich (66< / >33) oder klein (33>)) ist. Ein Satz mit angepasstem Adjektiv wird anschliessend ausgegeben, sodass bei der Begründung direkt klar ist ob die Chance gross, durchschnittlich oder klein ist. Ich habe eine elseif-Anweisung gewählt, da ich eine kleine Menge an Daten auswerte und es nur eine Anweisung gibt.

if ($Prozent -ge 66) {Write-Host "Die Chance von $Verein die CSSL zu gewinnen ist gross wegen folgenden Gründen:"}
elseif ($Prozent -ge 33) {Write-Host "Die Chance von $Verein die CSSL zu gewinnen ist durchschnittlich wegen folgenden Gründen:"}
else {Write-Host "Die Chance von $Verein die CSSL zu gewinnen ist klein wegen folgenden Gründen:"}

#Begründung Punkte, Hier werden die Punkte als Begründung für die Grosse, Durchschnittliche oder Kleine Chance angegeben. Der Satz ist auf die Definition der Variablen angepasst welche mit Adjektiven definiert sind und so direkt in den Satz eigefügt werden können.

Write-Host "Der $Verein hat $Punkte von 48 möglichen Punkten."

#Begründung Marktwert, Hier wird der Marktwert als Begründung für die Grosse, Durchschnittliche oder Kleine Chance angegeben. Der Satz ist auf die Definition der Variablen angepasst welche mit Adjektiven definiert sind und so direkt in den Satz eigefügt werden können.

Write-Host "Der Marktwert von $Verein ist $Marktwert."

#Begrünqdung Form, Hier wird die Form als Begründung für die Grosse, Durchschnittliche oder Kleine Chance angegeben. Der Satz ist auf die Definition der Variablen angepasst welche mit Adjektiven definiert sind und so direkt in den Satz eigefügt werden können.

Write-Host "Die Form von $Verein ist $Form."

#Begründung Sonstiges, Hier finde ich mit einer If-Anweisung herraus ob es bei den Vereinen sonstige Probleme gibt, Anhand dessen werden die sonstigen Probleme als Begründung für die Grosse, Durchschnittliche oder Kleine Chance angegeben. Der Satz ist auf die Definition der Variablen angepasst welche mit Adjektiven definiert sind und so direkt in den Satz eigefügt werden können.

if ($Sonstiges -eq "Nein") {Write-Host "Der $Verein hat keine sonstigen Probleme."}
else {Write-Host "Bei dem Verein gibt es folgende sonstige Probleme: $Sonstiges"}

#Programmwiederholung, Hier wird der Benutzer dazu aufgefordert das Programm mit einem "y" neu zu starten oder mit einer anderen Eingabe zu beenden. Ich habe eine Do-While Schleife gewählt, weil ich diesen Schritt mit der LP besprochen hatte und $ProgrammWiederholen so lange gemacht werden soll (Do), während sie auf "y" gesetzt wird (While), Sobald $ProgrammWiederholen nicht mehr auf "y" gesetzt ist wird das Programm beendet.

$ProgrammWiederholen = Read-Host "Wenn Sie das Programm wiederholen wollen drücken sie y, ansonsten wird das Programm beendet" 

}

While ($ProgrammWiederholen -eq "y")

#Falls das Programm nicht mit "y" wiederholt wird, gilt das Programm als beendet und die Command-Promt wird netterweise gecleart. 

clear

