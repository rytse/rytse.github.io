// Site content is a bunch of tiles of HTML text with a background image
var CONTENT = [
	{
		id: 'about',
		title: 'About',
		content: 'I\'m a junior at <a href="https://mbhs.edu/departments/magnet/">Montgomery Blair High School</a>. I like working on \
			control systems and modeling things. I\'m also a Life Scout in <a href="https://rockville1449.mytroop.us/">Troop 1449\
			</a>. Check out my <a href="https://github.com/rytse">GitHub</a> and my <a href="res/Resume.pdf">résumé</a>.'
	},

	{
		id: 'blair3sat',
		title: 'Blair Cubesat',
		content: 'My cubesat tile information'
	}
]

function add_tile(title, body) {
	var container = document.createElement('div');
	container.className = 'fl w-100';

	var head = document.createElement('div');
	head.className = 'section-title'

	var h = document.createElement('h1');
	h.innerHTML = title;

	var content = document.createElement('div');
	content.className = 'cbody';
	content.innerHTML = body

	head.appendChild(h);
	container.appendChild(head);
	container.appendChild(content);

	return container;
}

// Reference to <body>
var container = document.getElementById('page-top');

// Create navbar
var nav = document.createElement('div');
nav.className = 'topnav';
for (var i = 0; i < CONTENT.length; i++) {
	var link = document.createElement('a');
	link.href = '#' + CONTENT[i].id;
	link.innerHTML = CONTENT[i].title;
	nav.appendChild(link);
}
container.appendChild(nav);

// Add tiles to <body>
for (var i = 0; i < CONTENT.length; i++) {
	var c = add_tile(CONTENT[i].title, CONTENT[i].content);
	container.appendChild(c);
}
