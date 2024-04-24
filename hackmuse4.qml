/* Plugin Hacking MuseScore
* Ce plugin affiche les liens vers les ressources du projet Hacking MuseScore
* Pour la version 4 du logiciel
* Plus d'informations : https://hackingmusescore.org
* © 2024 Sylvain Kuntzmann
* Publié sous licence GNU GPLv3 (General Public License, version 3)
*/

import MuseScore 3.0
import QtQuick 2.0
import QtQuick.Dialogs 1.2

MuseScore {
    description: "Ce plugin affiche les liens vers les ressources du projet Hacking MuseScore.";
    requiresScore: false;
    version: "1.1";
//    pluginType: "dialog"
    thumbnailName: "hackmuse.png"
    categoryCode: ""
    menuPath: "Plugins.Hacking MuseScore";

    id: hackMuse
	Component.onCompleted: {
		// runs once before console.log is ready
		if (mscoreMajorVersion >= 4) {
            hackMuse.title = "Hacking MuseScore";
		}
	}

	MessageDialog {
		id: alert;
        title: "Hacking MuseScore";
        icon: StandardIcon.Information;
	}

	onRun: {
        alert.text = "<b>INDÉPENDANCE, CRÉATIVITÉ & PARTAGE APPLIQUÉS À MUSESCORE</b> <br>
                        ◯ <i>Pour l'émancipation artistique et culturelle de chaque individu</i> ◯ <br>
                        <br>
                        Tutoriels, décryptages, dossiers, articles, reportages, interviews, trucs et astuces, vidéos, formations, coaching... <br>
                        <br>
                        ➜ Visitez <a href=\"https://hackingmusescore.org\">hackingmusescore.org</a> <br>
                        <br>
                        <b>Ressources</b> <br>
                        • <a href=\"https://hackingmusescore.org/guides\">Guides & publications</a> <br>
                        • <a href=\"https://hackingmusescore.org/formations\">Formations</a> <br>
                        • <a href=\"https://www.podcastics.com/podcast/hacking-musescore-le-decryptage\">Podcast</a> <br>
                        • <a href=\"https://hackingmusescore.org/ressources\">Ressources (modèles, plugins...)</a> <br>
                        • <a href=\"https://hackingmusescore.org/blog\">Blog</a> <br>
                        <br>
                        <b>Réseaux sociaux</b> <br>
                        • <a href=\"https://www.youtube.com/channel/UC_lDBb-0GYWQL1OAuWWmUkg\">YouTube</a> <br>
                        • <a href=\"https://www.instagram.com/hackingmusescore\">Instagram</a> <br>
                        • Facebook : <a href=\"https://www.facebook.com/groups/162448603550425\">Groupe</a> | <a href=\"https://www.facebook.com/people/Hacking-MuseScore/61550536843081/\">Page</a> <br>
                        • <a href=\"https://twitter.com/hack_musescore\">X (Twitter)</a> <br>
                        <br>
                        <b>Pas encore abonné(e) à la liste de diffusion ?</b> <br>
                        Inscrivez-vous <a href=\"https://subscribepage.io/hackingmusescore\">en cliquant ici</a> !<br>
                        <br>";
        alert.open();
	}
}


