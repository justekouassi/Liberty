let text1 = "Etes-vous sûr de vouloir supprimer cet élément ?"
var elems = document.getElementsByClassName('suppression');
for (var i = 0, l = elems.length; i < l; i++) {
	elems[i].onclick = function() {
		return confirm(text1);
	};
}

let text2 = "Voulez-vous enregistrer les modifications ?"
var elems = document.getElementsByClassName('modification');
for (var i = 0, l = elems.length; i < l; i++) {
	elems[i].onclick = function() {
		return confirm(text2);
	};
}
