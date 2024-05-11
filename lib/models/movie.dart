import 'dart:math';

class Movie {
  final String title;
  final String description;
  final String country;
  final List<String> cast;
  final int releaseYear;
  final double rating;

  final int minimumAge;

  final int commentCount;
  final List<Map<String, dynamic>> comments;
  final List<String> genre;

  final String posterLink;

  Movie({
    required this.title,
    required this.description,
    required this.country,
    required this.cast,
    required this.releaseYear,
    required this.rating,
    required this.minimumAge,
    required this.commentCount,
    required this.comments,
    required this.genre,
    required this.posterLink,
  });
}

/// Movie Objects
List<Movie> movies = [
  Movie(
    genre: ["Sci-Fi", "Action", "Adventure", "Spectacle"],
    title: "Avatar: The Way of Water",
    description:
        "Over a decade after the events of the first film, Jake Sully and Neytiri live peacefully with their growing family. When a familiar threat resurfaces, they're forced to seek refuge with the Metkayina clan, a water-dwelling Na'vi tribe. As a new war unfolds, Jake must fight to protect his family and their newfound home.",
    country: "United States",
    cast: [
      "Sam Worthington", // Jake Sully
      "Zoe Saldana", // Neytiri
      "Sigourney Weaver", // (returning in a new role)
      "Kate Winslet", // New Cast Member
    ],
    releaseYear: 2022,
    rating: Random().nextDouble() * 1.0 + 8.0,
    minimumAge: 13,
    commentCount: 3,
    comments: [
      {
        "name": "Oceanic Adventure Seeker",
        "comment":
            "The underwater world of Pandora is breathtaking! The action sequences are even more stunning than the first movie.",
      },
      {
        "name": "Jake & Neytiri Shipper",
        "comment":
            "So happy to see Jake and Neytiri's family grow. Their bond is even stronger in this sequel.",
      },
      {
        "name": "Environmental Advocate",
        "comment":
            "The environmental message is still important, but the focus on war overshadows it a bit.",
      },
    ],
    posterLink: 'assets/images/movies/0.jpg',
  ),

  ///
  Movie(
    genre: ["Drama", "Crime", "Prison", "Hope"],
    title: "The Shawshank Redemption",
    description:
        "Andy Dufresne, a successful banker, is wrongly convicted of murdering his wife and her lover. Sentenced to life in Shawshank prison, he befriends a fellow inmate, Ellis 'Red' Redding, and adapts to the harsh realities of prison life while plotting a daring escape.",
    country: "United States",
    cast: [
      "Tim Robbins", // Andy Dufresne
      "Morgan Freeman", // Ellis Boyd "Red" Redding
      "Bob Gunton", // Warden Samuel Norton
      "William Sadler", // Heywood
      "Clancy Brown", // Captain Byron Hadley
      "James Whitmore", // Brooks Hatlen
    ],
    releaseYear: 1994,
    rating: Random().nextDouble() * 1.0 + 7.5,
    minimumAge: 16,
    commentCount: 8,
    comments: [
      {
        "name": "Hopeful Redemption Seeker",
        "comment":
            "A powerful story about hope, friendship, and perseverance in the face of adversity."
      },
      {
        "name": "Compelling Characters Enthusiast",
        "comment":
            "Unforgettable performances by Tim Robbins and Morgan Freeman make this a classic."
      },
      {
        "name": "Prison Drama Buff",
        "comment":
            "A gritty and realistic portrayal of prison life with moments of humanity and humor."
      },
      {
        "name": "Twist Ending Spoiler Avoider",
        "comment":
            "This movie has one of the most satisfying endings in cinema history, avoid spoilers!"
      },
      {
        "name": ":  Justice Seeker",
        "comment":
            "The film explores themes of injustice and the corrupting influence of power."
      },
      {
        "name": "Slow Burn Advocate",
        "comment":
            "The movie takes its time to develop the characters and story, but the payoff is worth it."
      },
      {
        "name": "Stephen King Fan",
        "comment":
            "A brilliant adaptation of a Stephen King novella that surpasses the source material."
      },
      {
        "name": "Repeat Watcher",
        "comment":
            "A movie you can watch multiple times and discover new details each time."
      },
    ],
    posterLink: 'assets/images/movies/1.jpg', // Update with actual poster path
  ),

  ///
  Movie(
    genre: ["Crime", "Drama", "Family", "Gangster"],
    title: "The Godfather",
    description:
        "Don Vito Corleone, the head of the Corleone mafia family in New York, refuses to become involved in the drug trade. When a rival family attacks his interests, he reluctantly draws his family deeper into the criminal underworld.",
    country: "United States",
    cast: [
      "Marlon Brando", // Don Vito Corleone
          "Al Pacino", // Michael Corleone
          "James Caan", // Sonny Corleone
          "Richard Castellano", // Clemenza
          "Robert Duvall", // Tom Hagen
          "Sterling Hayden", // Captain McClusky
          "John Marley" ,// Jack Woltz
    ],
    releaseYear: 1972,
    rating: Random().nextDouble() * 1.0 + 7.5,
    // Random rating between 4.5 and 5.0 (considering critical acclaim)
    minimumAge: 18,
    // Assuming violence and mature themes
    commentCount: 9,
    comments: [
      {
        "name": "Mafia Saga Fan",
        "comment":
            "A gripping and complex story about the rise and fall of a powerful mafia family."
      },
      {
        "name": "Performance Admirer",
        "comment":
            "Unforgettable performances by Marlon Brando and Al Pacino set the standard for gangster films."
      },
      {
        "name": "Family Dynamics Explorer",
        "comment":
            "The film explores the themes of loyalty, family, and the corrupting influence of power."
      },
      {
        "name": "Moral Ambiguity Ponderer",
        "comment":
            "Blurs the lines between good and evil, forcing you to question who the real villains are."
      },
      {
        "name": "Operatic Drama Enthusiast",
        "comment":
            "A cinematic masterpiece with a operatic feel, filled with iconic scenes and dialogue."
      },
      {
        "name": "Violence Cautioned",
        "comment": "Be prepared for violence and mature themes."
      },
      {
        "name": "Classic Film Buff",
        "comment":
            "An essential film for any cinephile's watchlist, considered one of the greatest films ever made."
      },
      {
        "name": "Sequel Comparer",
        "comment":
            "While the sequel is excellent, the original Godfather remains a landmark achievement."
      },
      {
        "name": "Legacy Appreciator",
        "comment":
            "A film that continues to be referenced and analyzed, leaving a lasting impact on cinema."
      },
    ],
    posterLink: 'assets/images/movies/2.jpg', // Update with actual poster path
  ),

  ///
  Movie(
    genre: ["Action", "Thriller", "Superhero", "Psychological"],
    title: "The Dark Knight",
    description:
        "When the sadistic criminal mastermind known as The Joker emerges in Gotham, Batman must face his greatest physical and psychological challenge to save the city from chaos.",
    country: "United States",
    cast: [
      "Christian Bale" ,// Bruce Wayne / Batman
          "Heath Ledger", // The Joker
          "Aaron Eckhart", // Harvey Dent
          "Gary Oldman", // James Gordon
          "Maggie Gyllenhaal", // Rachel Dawes
          "Michael Caine", // Alfred Pennyworth
          "Morgan Freeman" ,// Lucius Fox
    ],
    releaseYear: 2008,
    rating: Random().nextDouble() * 1.0 + 7.5,
    // Random rating between 4.5 and 5.0 (considering critical acclaim)
    minimumAge: 14,
    // Assuming some violence and mature themes
    commentCount: 7,
    comments: [
      {
        "name": "Superhero Fan",
        "comment":
            "A dark and thrilling superhero film that pushes the boundaries of the genre."
      },
      {
        "name": "Heath Ledger's Legacy Aficionado",
        "comment":
            "Heath Ledger's iconic performance as The Joker is unforgettable and chilling."
      },
      {
        "name": "Moral Complexity Explorer",
        "comment":
            "The film explores themes of good versus evil, sacrifice, and the cost of heroism."
      },
      {
        "name": "Action Aficionado",
        "comment":
            "Gripping action sequences and a thrilling plot keep you on the edge of your seat."
      },
      {
        "name": "Batman Evolution Supporter",
        "comment":
            "A defining chapter in the Batman mythos, showcasing the character's complexity and darkness."
      },
      {
        "name": "Sequel Debater",
        "comment":
            "Some consider it superior to the first film, sparking debates among fans."
      },
      {
        "name": "Psychological Impact Warner",
        "comment":
            "Be prepared for some intense and potentially disturbing scenes."
      },
    ],
    posterLink: 'assets/images/movies/3.jpg', // Update with actual poster path
  ),

  ///
  Movie(
    genre: ["Historical Drama", "War", "Holocaust", "Biography"],
    title: "Schindler's List",
    description:
        "Oskar Schindler, a German businessman, saves the lives of more than a thoUnited Statesnd Jews by employing them in his factories during World War II. This powerful film depicts the horrors of the Holocaust and the strength of Schindler's compassion.",
    country: "United States",
    cast: [
      "Liam Neeson" ,// Oskar Schindler
          "Ralph Fiennes", // Amon Göth
          "Ben Kingsley", // Itzhak Stern
    ],
    releaseYear: 1993,
    rating: Random().nextDouble() * 1.0 + 8.0,
    // Random rating between 4.0 and 5.0 (considering historical importance)
    minimumAge: 15,
    // Assuming mature themes and violence
    commentCount: 6,
    comments: [
      {
        "name": "History Buff",
        "comment":
            "A harrowing and important portrayal of the Holocaust that honors the victims and Schindler's courage."
      },
      {
        "name": "Humanity in Darkness Discoverer",
        "comment":
            "A story that reminds us of the power of human compassion even in the darkest of times."
      },
      {
        "name": "Emotional Impact Warner",
        "comment":
            "Prepare for a powerful and emotionally challenging film experience."
      },
      {
        "name": "Black and White Advocate",
        "comment":
            "The use of black and white cinematography adds to the film's starkness and emotional impact."
      },
      {
        "name": "Moral Complexity Explorer",
        "comment":
            "The film explores the complexities of human behavior during war and the choices we make."
      },
      {
        "name": "Historical Accuracy Emphasizer",
        "comment":
            "While taking some creative liberties, the film strives for historical accuracy and depicts the horrors of the Holocaust with respect."
      },
    ],
    posterLink: 'assets/images/movies/4.jpg', // Update with actual poster path
  ),

  ///
  Movie(
    genre: ["Fantasy", "Adventure", "Epic", "Coming-of-Age"],
    title: "The Lord of the Rings: The Fellowship of the Ring",
    description:
        "A hobbit named Frodo inherits the One Ring, a powerful and evil artifact. He embarks on a perilous journey to destroy it in the fires of Mount Doom, with the help of a fellowship of hobbits, men, elves, dwarves, and a wizard.",
    country: "New Zealand",
    // Filmed in New Zealand
    cast: [
      "Elijah Wood", // Frodo Baggins
          "Ian McKellen", // Gandalf the Grey
          "Sean Astin", // Samwise Gamgee
          "Orlando Bloom", // Legolas
          "Viggo Mortensen", // Aragorn
          "Cate Blanchett", // Galadriel
          "Liv Tyler", // Arwen
          "Ian Holm", // Bilbo Baggins
          "Sean Bean" ,// Boromir
    ],
    releaseYear: 2001,
    rating: Random().nextDouble() * 1.0 + 7.7,
    // Random rating between 4.0 and 5.0 (considering critical acclaim)
    minimumAge: 12,
    // Assuming some violence and fantasy elements
    commentCount: 8,
    comments: [
      {
        "name": "Epic Fantasy Enthusiast",
        "comment":
            "A visually stunning and epic adventure that brings Tolkien's world to life."
      },
      {
        "name": "Fellowship Supporter",
        "comment":
            "The camaraderie and loyalty of the Fellowship is a heartwarming aspect of the story."
      },
      {
        "name": "World-Building Admirer",
        "comment":
            "The rich and detailed world of Middle-earth is captivating and immersive."
      },
      {
        "name": "J.R.R. Tolkien Fan",
        "comment":
            "A faithful adaptation of the first book in Tolkien's beloved trilogy."
      },
      {
        "name": "Good vs. Evil Champion",
        "comment":
            "A classic tale of good versus evil with high stakes and memorable characters."
      },
      {
        "name": "Score Enthusiast",
        "comment": "Howard Shore's iconic score adds to the film's epic feel."
      },
      {
        "name": "Series Starter",
        "comment":
            "The perfect introduction to Tolkien's world and sets the stage for the rest of the trilogy."
      },
      {
        "name": "Long Movie Warning",
        "comment": "Be prepared for a long film, but the adventure is worth it."
      },
    ],
    posterLink: 'assets/images/movies/5.jpg', // Update with actual poster path
  ),

  ///
  Movie(
    genre: ["Western", "Spaghetti Western", "Gunfighter", "Bounty Hunter"],
    title: "The Good, the Bad and the Ugly",
    description:
        "A bounty hunting trio delve into a race to find a hidden Confederate gold stash during the American Civil War.",
    country: "Italy",
    cast: [
      "Clint Eastwood",
      "Eli Wallach",
      "Lee Van Cleef",
    ],
    releaseYear: 1966,
    rating: Random().nextDouble() * 1.0 + 7.5,
    // Random rating between 7.5 and 8.5
    minimumAge: 16,
    commentCount: 2,
    comments: [
      {
        "name": "John Doe",
        "comment":
            "A truly epic spaghetti western with unforgettable characters."
      },
      {
        "name": "Jane Smith",
        "comment": "The soundtrack is iconic and the final scene is a classic."
      },
    ],
    posterLink: 'assets/images/movies/6.jpg',
  ),

  ///
  Movie(
    genre: ["Comedy", "Drama", "Historical Fiction", "Romance"],
    title: "Forrest Gump",
    description:
        "The life of Forrest Gump, a slow-witted but kind-hearted man from Alabama, who witnesses and influences some of the most significant events in American history.",
    country: "United States",
    cast: [
      "Tom Hanks",
      "Robin Wright",
      "Gary Sinise",
      "Sally Field",
    ],
    releaseYear: 1994,
    rating: Random().nextDouble() * 1.0 + 4.0,
    // Random rating between 4.0 and 5.0
    minimumAge: 13,
    commentCount: 3,
    comments: [
      {
        "name": "Movie Buff",
        "comment": "A heartwarming and inspiring story with a touch of magic."
      },
      {
        "name": "History Fan",
        "comment":
            "A unique perspective on American history through Forrest's eyes."
      },
      {
        "name": "Classic Fan",
        "comment": "Tom Hanks delivers an unforgettable performance."
      },
    ],
    posterLink: 'assets/images/movies/7.jpg',
  ),

  ///
  Movie(
    genre: ["Psychological Thriller", "Drama", "Satire", "Masculinity"],
    title: "Fight Club",
    description:
        "An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into something much, much more.",
    country: "United States",
    cast: [
      "Brad Pitt",
      "Edward Norton",
      "Helena Bonham Carter",
      "Meat Loaf",
    ],
    releaseYear: 1999,
    rating: Random().nextDouble() * 1.0 + 7.0,
    // Random rating between 7.0 and 8.0
    minimumAge: 18,
    commentCount: 4,
    comments: [
      {
        "name": "Cult Classic Fan",
        "comment": "A thought-provoking film that challenges societal norms."
      },
      {
        "name": "Action Fan",
        "comment": "The fight scenes are brutal and realistic."
      },
      {
        "name": "Plot Twister Enthusiast",
        "comment": "The ending will blow your mind (but don't talk about it!)."
      },
      {
        "name": "Symbolism Seeker",
        "comment":
            "The film is full of hidden meanings and symbolism waiting to be discovered."
      },
    ],
    posterLink: 'assets/images/movies/8.jpg',
  ),

  ///
  Movie(
    genre: ["Crime", "Drama", "Gangster", "Mob"],
    title: "Goodfellas",
    description:
        "The rise and fall of Henry Hill, a half-Irish, half-Italian hoodlum who becomes involved in the violent world of organized crime.",
    country: "United States",
    cast: [
      "Ray Liotta",
      "Robert De Niro",
      "Joe Pesci",
      "Lorraine Bracco",
    ],
    releaseYear: 1990,
    rating: Random().nextDouble() * 1.0 + 8.0,
    // Random rating between 8.0 and 9.0
    minimumAge: 18,
    commentCount: 5,
    comments: [
      {
        "name": "Mob Movie Enthusiast",
        "comment": "A gritty and realistic portrayal of the mafia lifestyle."
      },
      {
        "name": "Editing Fan",
        "comment":
            "The editing style is innovative and keeps you on the edge of your seat."
      },
      {
        "name": "Performance Admirer",
        "comment": "De Niro and Pesci deliver incredible performances."
      },
      {
        "name": "Violence Cautious",
        "comment": "Be prepared for graphic violence and strong language."
      },
      {
        "name": "Classic Film Buff",
        "comment": "A modern classic that continues to be influential."
      },
    ],
    posterLink: 'assets/images/movies/9.jpg',
  ),

  ///
  Movie(
    genre: ["Sci-Fi", "Drama", "Space Exploration", "Time Travel"],
    title: "Interstellar",
    description:
        "A team of astronauts travel through a wormhole in search of a new home for humanity.",
    country: "United States, UK",
    // Co-production between United States and UK
    cast: [
      "Matthew McConaughey",
      "Anne Hathaway",
      "Jessica Chastain",
      "Michael Caine",
    ],
    releaseYear: 2014,
    rating: Random().nextDouble() * 1.0 + 7.5,
    // Random rating between 7.5 and 8.5
    minimumAge: 13,
    commentCount: 6,
    comments: [
      {
        "name": "Sci-Fi Fanatic",
        "comment":
            "A visually stunning and thought-provoking exploration of space travel and time."
      },
      {
        "name": "Science Enthusiast",
        "comment":
            "The science behind the wormhole theory is fascinating, even if a bit fictionalized."
      },
      {
        "name": "Emotional Impact Lover",
        "comment":
            "The emotional journey of the characters is just as gripping as the sci-fi aspects."
      },
      {
        "name": "Pacing Critic",
        "comment":
            "The pacing can be slow at times, but it allows for a deeper exploration of the themes."
      },
      {
        "name": "Music Admirer",
        "comment":
            "Hans Zimmer's score is incredible and perfectly complements the film's atmosphere."
      },
      {
        "name": "Open Ending Ponderer",
        "comment":
            "The ending leaves you with a lot to think about, sparking discussions and interpretations."
      },
    ],
    posterLink: 'assets/images/movies/10.jpg',
  ),

  ///
  Movie(
    genre: ["Fantasy", "Drama", "Supernatural", "Death Row"],
    title: "The Green Mile",
    description:
        "A death row corrections officer discovers his humanity when he encounters a gentle giant convicted of a brutal crime.",
    country: "United States",
    cast: [
      "Tom Hanks",
      "Michael Clarke Duncan",
      "David Morse",
      "Bonnie Hunt",
    ],
    releaseYear: 1999,
    rating: Random().nextDouble() * 1.0 + 8.0,
    // Random rating between 8.0 and 9.0
    minimumAge: 18,
    commentCount: 7,
    comments: [
      {
        "name": "Emotional Rollercoaster Rider",
        "comment":
            "Prepare to laugh, cry, and be amazed by this powerful story."
      },
      {
        "name": "Supernatural Skeptic",
        "comment":
            "Even if you're not a fan of the supernatural, the characters and themes are still moving."
      },
      {
        "name": "Performance Admirer",
        "comment": "Hanks and Duncan deliver Oscar-worthy performances."
      },
      {
        "name": "Death Penalty Contemplator",
        "comment":
            "Raises important questions about justice and the death penalty."
      },
      {
        "name": "Redemption Believer",
        "comment": "A story about hope, even in the darkest of places."
      },
      {
        "name": "Slow Burn Advocate",
        "comment":
            "Take your time with this one. The slow pace allows the characters and story to develop deeply."
      },
      {
        "name": "Tearjerker Enthusiast",
        "comment":
            "Get your tissues ready, this movie will definitely pull at your heartstrings."
      },
    ],
    posterLink: 'assets/images/movies/11.jpg',
  ),

  ///
  Movie(
    genre: ["Superhero", "Animation", "Action", "Alternate Reality"],
    title: "Spider-Man: Across the Spider-Verse",
    description:
        "Miles Morales reunites with his fellow Spider-People to face a new threat across the multiverse.",
    country: "United States",
    cast: [
      "Shameik Moore",
      "Hailee Steinfeld",
      "Oscar Isaac",
      "Jake Johnson",
      "Brian Tyree Henry",
    ],
    releaseYear: 2023,
    // Assuming a 2023 release date
    rating: Random().nextDouble() * 1.0 + 8.5,
    // Random rating between 8.5 and 9.5 (considering early positive reviews)
    minimumAge: 9,
    commentCount: 2,
    // Limited comments since the movie might be relatively new
    comments: [
      {
        "name": "Animation Fan",
        "comment":
            "A visually stunning sequel that expands the Spider-Verse in exciting ways."
      },
      {
        "name": "Miles Morales Fan",
        "comment":
            "Miles continues to be a fantastic protagonist, and the new characters are intriguing."
      },
    ],
    posterLink: 'assets/images/movies/12.jpg',
  ),

  ///
  Movie(
    genre: ["Animated Musical", "Drama", "Coming-of-Age", "Family"],
    title: "The Lion King",
    description:
        "Simba, a young lion prince, is destined to be king. But his scheming uncle, Scar, has other plans. Simba must find his courage and take back his rightful place.",
    country: "United States",
    cast: [
      "Matthew Broderick" ,// Voice of Simba (adult)
          "Jonathan Taylor Thomas", // Voice of Simba (young)
          "James Earl Jones" ,// Voice of Mufasa
          "Jeremy Irons" ,// Voice of Scar
          "Whoopi Goldberg", // Voice of Nala
          "Cheech Marin", // Voice of Timon
          "Rowan Atkinson", // Voice of Zazu
    ],
    releaseYear: 1994,
    rating: Random().nextDouble() * 1.0 + 4.0,
    // Random rating between 4.0 and 5.0 (considering its classic status)
    minimumAge: 3,
    // Assuming suitable for all ages
    commentCount: 8,
    comments: [
      {
        "name": "Disney Classic Fan",
        "comment": "A timeless story with unforgettable characters and music."
      },
      {
        "name": "Animation Enthusiast",
        "comment": "Groundbreaking animation that still holds up today."
      },
      {
        "name": "Life Lesson Learner",
        "comment":
            "Teaches valuable lessons about friendship, responsibility, and overcoming challenges."
      },
      {
        "name": "Hakuna Matata Believer",
        "comment": "The music is iconic, especially 'Hakuna Matata'!"
      },
      {
        "name": "Tearjerker Warner",
        "comment":
            "Be prepared for some emotional moments (looking at you, Mufasa)."
      },
      {
        "name": "Live-Action Skeptic",
        "comment":
            "The original will always be better than the live-action remake."
      },
      {
        "name": "Scar Fan (controversial)",
        "comment": "Scar is a complex and fascinating villain."
      },
      {
        "name": "Nostalgia Buff",
        "comment": "This movie brings back so many childhood memories."
      },
    ],
    posterLink: 'assets/images/movies/13.jpg',
  ),

  ///
  Movie(
    genre: ["Crime", "Thriller", "Undercover", "Betrayal"],
    title: "The Departed",
    description:
        "An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.",
    country: "United States",
    cast: [
      "Leonardo DiCaprio",
      "Matt Damon",
      "Jack Nicholson",
      "Mark Wahlberg",
      "Martin Sheen",
      "Alec Baldwin",
    ],
    releaseYear: 2006,
    rating: Random().nextDouble() * 1.0 + 8.0,
    // Random rating between 8.0 and 9.0
    minimumAge: 18,
    commentCount: 9,
    comments: [
      {
        "name": "Thrilling Ride Fan",
        "comment":
            "A suspenseful and action-packed crime thriller with a shocking twist."
      },
      {
        "name": "Performance Admirer",
        "comment":
            "DiCaprio, Damon, Nicholson, and Wahlberg deliver powerhouse performances."
      },
      {
        "name": "Undercover Story Fan",
        "comment":
            "A unique take on the classic undercover cop story with high stakes."
      },
      {
        "name": "Moral Ambiguity Ponderer",
        "comment": "The film explores the blurred lines between good and evil."
      },
      {
        "name": "Scorsese Enthusiast",
        "comment": "A classic Martin Scorsese film with his signature style."
      },
      {
        "name": "Violence Cautious",
        "comment": "Be prepared for violence and strong language."
      },
      {
        "name": "Replay Value Believer",
        "comment":
            "A movie you can watch multiple times and still discover new details."
      },
      {
        "name": "Original vs. Remake Debater",
        "comment": "A great remake of the Hong Kong film Infernal Affairs."
      },
      {
        "name": "Ending SpoilerAvoider",
        "comment": "I can't say much, but the ending will stay with you."
      },
    ],
    posterLink: 'assets/images/movies/14.jpg',
  ),

  ///
  Movie(
    genre: ["Comedy", "Drama", "Friendship", "Disability"],
    title: "The Intouchables (also known as 'Untouchable' in UK and Ireland)",
    description:
        "A wealthy quadriplegic hires a young man from the projects to be his caregiver. An unlikely friendship blossoms between the two.",
    country: "France",
    cast: [
      "François Cluzet",
      "Omar Sy",
      "Anne Le Ny",
      "Clotilde Mollet",
    ],
    releaseYear: 2011,
    rating: Random().nextDouble() * 1.0 + 7.5,
    // Random rating between 7.5 and 8.5
    minimumAge: 16,
    commentCount: 10,
    comments: [
      {
        "name": "Feel-Good Fan",
        "comment":
            "A heartwarming and funny story about friendship and overcoming challenges."
      },
      {
        "name": "Buddy Comedy Enthusiast",
        "comment": "The chemistry between the lead actors is fantastic."
      },
      {
        "name": "Social Divide Explorer",
        "comment": "Highlights the complexities of social class and disability."
      },
      {
        "name": "Music Lover",
        "comment":
            "The soundtrack is uplifting and perfectly complements the film's mood."
      },
      {
        "name": "Original vs. Remake Discourager",
        "comment": "This is the original film, skip the American remake!"
      },
      {
        "name": "Emotional Rollercoaster Rider",
        "comment": "Prepare to laugh and cry in equal measure."
      },
      {
        "name": "Life Inspiration Seeker",
        "comment": "A reminder to find joy and connection in unexpected places."
      },
      {
        "name": "Cultural Experience Appreciator",
        "comment": "Offers a glimpse into French culture and humor."
      },
      {
        "name": "Subtitles Supporter",
        "comment": "Don't be discouraged by subtitles, the story is worth it."
      },
      {
        "name": "Second Chance Believer",
        "comment": "It's never too late to find friendship and purpose."
      },
    ],
    posterLink: 'assets/images/movies/15.jpg',
  ),

  ///
  Movie(
    genre: ["Comedy", "Slapstick", "Soviet", "Mishap"],
    title:
        "Operation 'Y' & Other Shurik's Adventures (Russian: Операция «Ы» и другие приключения Шурика)",
    description:
        "A trilogy of comedic adventures featuring Shurik, a nerdy but resourceful student, as he encounters bumbling criminals, struggles with exams, and navigates the complexities of life.",
    country: "Soviet Union",
    cast: [
      "Aleksandr Demyanenko", // Shurik
          "Yuri Nikulin" ,// Coward (in "Operation Y")
          "Georgy Vitsin" ,// Fool (in "Operation Y")
          "Evgeny Morgunov", // Pro (in "Operation Y")
          "Natalya Seleznyova", // Lida (in "Déjà vu")
    ],
    releaseYear: 1965,
    rating: Random().nextDouble() * 1.0 + 7.8,
    // Random rating between 8.0 and 9.0 (considering cult classic status)
    minimumAge: 13,
    commentCount: 11,
    comments: [
      {
        "name": "Soviet Comedy Fan",
        "comment":
            "A hilarious classic of Soviet cinema with slapstick humor and memorable characters."
      },
      {
        "name": "Shurik Supporter",
        "comment":
            "Shurik is a relatable protagonist you can't help but root for."
      },
      {
        "name": "Triple Threat Enjoyer",
        "comment":
            "Three stories in one film, offering variety and keeping the entertainment going."
      },
      {
        "name": "Language Barrier Overcomer",
        "comment":
            "The humor transcends language barriers, even if you watch with subtitles."
      },
      {
        "name": "Cult Classic Believer",
        "comment":
            "A beloved film in Russia and beyond, with a dedicated fan following."
      },
      {
        "name": "Social Commentary Noticer",
        "comment": "Subtle social commentary adds another layer to the humor."
      },
      {
        "name": "Physical Comedy Enthusiast",
        "comment":
            "Get ready for slapstick, pratfalls, and hilarious physical humor."
      },
      {
        "name": "Multiple Genre Mixer",
        "comment":
            "Blends comedy, crime, and romance elements for a unique experience."
      },
      {
        "name": "Hidden Gem Discoverer",
        "comment":
            "A hidden gem for those looking for something different and entertaining."
      },
      {
        "name": "Sequel Seeker",
        "comment":
            "This is the first film in a trilogy, so be prepared to explore Shurik's further adventures!"
      },
      {
        "name": "Nostalgia Triggerer (optional)",
        "comment":
            "For viewers familiar with Soviet culture, this movie brings back a wave of nostalgia."
      },
    ],
    posterLink: 'assets/images/movies/16.jpg',
  ),

  ///
  Movie(
    genre: ["Sci-Fi", "Romance", "Environmentalism", "Robot"],
    title: "WALL·E",
    description:
        "In a distant future where Earth is overrun with trash, a lonely robot named WALL·E encounters a sleek probe named EVE and embarks on a journey that could decide the fate of humanity.",
    country: "United States",
    cast: [
      "Ben Burtt" ,// Voice of WALL·E
          "Elissa Knight", // Voice of EVE
          "Jeff Garlin", // Voice of Captain McCrea
          "Sigourney Weaver" ,// Voice of Ship's Computer
    ],
    releaseYear: 2008,
    rating: Random().nextDouble() * 1.0 + 7.0,
    // Random rating between 4.0 and 5.0 (considering critical acclaim)
    minimumAge: 3,
    // Assuming suitable for all ages
    commentCount: 5,
    comments: [
      {
        "name": "Sci-Fi Adventure Enthusiast",
        "comment":
            "A visually stunning and heartwarming story about a robot who cleans up the Earth."
      },
      {
        "name": "Environmental Protector",
        "comment":
            "A powerful message about environmental responsibility and the importance of taking care of our planet."
      },
      {
        "name": "Silent Movie Buff",
        "comment":
            "The first part of the film is a charming silent movie experience."
      },
      {
        "name": "Robot Romance Shipper",
        "comment": "WALL·E and EVE's love story is both adorable and touching."
      },
      {
        "name": "Hidden Depths Discoverer",
        "comment":
            "A seemingly simple story with deeper themes about hope, consumerism, and humanity's future."
      },
    ],
    posterLink: 'assets/images/movies/17.jpg',
  ),
];
