// Site content is a bunch of tiles of HTML text with a background image
var CONTENT = [
	{
		id: 'about',
		title: 'About',
		img: 'pfp.png',
		content: 'I\'m a junior at <a href="https://mbhs.edu/departments/magnet/">Montgomery Blair High School</a>. I like working on \
			control systems and modeling things. I\'m also a Life Scout in <a href="https://rockville1449.mytroop.us/">Troop \
			1449</a>. Check out my <a href="https://github.com/rytse">GitHub</a> and my <a href="res/Resume.pdf">résumé</a>.'
	},

	{
		id: 'systems',
		title: 'MBHS Systems',
		img: 'systems.png',
		content: 'I\'m a member of MBHS Systems, a new Blair team that takes on hard real-world modeling problems. This year we are \
			working on a global pollen model, trying to predict pollen concentration based on satellite imagery of \
			regions\' ecological and geographical features. Most of my work has been on efficiently representing pollen emissions \
			and how pollen plumes move.'
	},

	{
		id: 'blair3sat',
		title: 'Blair Cubesat',
		img: 'systems.png',
		content: 'I\'m starting a cubesat team at my highschool. Details coming soon!'
	}
]

function add_tile(title, body, img_link, swap) {
	var img_tile = document.createElement('div');
	img_tile.className = 'tile is-vertical is-8';
	var img = document.createElement('figure');
	img.className = 'image is-128x128';
	var rep = document.createElement('img');
	rep.src = 'img/' + img_link;
	rep.alt = title;
	img.appendChild(rep);
	img_tile.appendChild(img);

	var content_tile = document.createElement('div');
	content_tile.className = 'tile is-parent';
	var article = document.createElement('article');
	article.className = 'tile is-child box';

	var text = document.createElement('div');
	text.className = 'media-content';
	var head = document.createElement('h1');
	head.innerHTML = title;
	var content = document.createElement('div');
	content.className = 'content';
	content.innerHTML = body;
	text.appendChild(head);
	text.appendChild(content);
	article.appendChild(text);
	content_tile.appendChild(article);

	var all = document.createElement('div');
	all.className = 'tile is-parent';
	all.appendChild(img_tile);
	all.appendChild(content_tile);

	return all;
}

// Reference to <body>
var container = document.getElementById('page-top');

// Create navbar
var nav = document.createElement('div');
nav.className = 'topnav';
var h = document.createElement('a');
h.innerHTML = 'Ryan Tse';
h.id = 'name';
nav.appendChild(h);
for (var i = 0; i < CONTENT.length; i++) {
	var link = document.createElement('a');
	link.href = '#' + CONTENT[i].id;
	link.innerHTML = CONTENT[i].title;
	nav.appendChild(link);
}
container.appendChild(nav);

// Add tiles to <body>
for (var i = 0; i < CONTENT.length; i++) {
	var c = add_tile(CONTENT[i].title, CONTENT[i].content, CONTENT[i].img, i % 2 == 0);
	container.appendChild(c);
	container.appendChild(document.createElement('hr'));
}
