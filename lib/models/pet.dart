class Pet {
  final String id;
  final String name;
  final String breed;
  final int age;
  final String imageUrl;
  final String description;

  const Pet({
    required this.id,
    required this.name,
    required this.breed,
    required this.age,
    required this.imageUrl,
    required this.description,
  });
}

const mockPets = <Pet>[
  Pet(
    id: '1',
    name: 'Luna',
    breed: 'Golden Retriever',
    age: 2,
    imageUrl:
        'https://images.unsplash.com/photo-1535930749574-1399327ce78f?q=80&w=1336&auto=format&fit=crop',
    description: 'Friendly and energetic. Loves playing fetch and cuddles.',
  ),
  Pet(
    id: '2',
    name: 'Milo',
    breed: 'Tabby Cat',
    age: 3,
    imageUrl:
        'https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg',
    description: 'Calm, curious, and loves napping in sunny spots.',
  ),
  Pet(
    id: '3',
    name: 'Nala',
    breed: 'Mixed Breed Dog',
    age: 1,
    imageUrl:
        'https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg',
    description: 'Playful puppy, very social and great with kids.',
  ),
  Pet(
    id: '4',
    name: 'Charlie',
    breed: 'Cocker Spaniel',
    age: 4,
    imageUrl:
        'https://images.unsplash.com/photo-1749309734942-04046e01b229?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    description: 'Loyal and affectionate. Loves long walks.',
  ),
  Pet(
    id: '5',
    name: 'Bella',
    breed: 'Persian Cat',
    age: 5,
    imageUrl:
        'https://images.unsplash.com/photo-1653162458829-eadf7df5470d?q=80&w=1288&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    description: 'Majestic and quiet. Prefers cozy corners and gentle pets.',
  ),
  Pet(
    id: '6',
    name: 'Rocky',
    breed: 'Bulldog',
    age: 2,
    imageUrl:
        'https://images.unsplash.com/photo-1731788523178-079a3b9527ba?q=80&w=944&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    description: 'Chill, stubborn, but incredibly lovable.',
  ),
  Pet(
    id: '7',
    name: 'Coco',
    breed: 'Siamese Cat',
    age: 1,
    imageUrl:
        'https://plus.unsplash.com/premium_photo-1664357541544-fb0e6bdc4dd9?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    description: 'Talkative, elegant, highly affectionate.',
  ),
  Pet(
    id: '8',
    name: 'Buddy',
    breed: 'Border Collie',
    age: 3,
    imageUrl:
        'https://plus.unsplash.com/premium_photo-1661963022393-f4b45c5df960?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    description: 'Super smart and energetic. Great for active owners.',
  ),
  Pet(
    id: '9',
    name: 'Snowball',
    breed: 'White Rabbit',
    age: 1,
    imageUrl:
        'https://images.unsplash.com/photo-1638255402906-e838358069ab?q=80&w=2662&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    description: 'Soft, cuddly, and loves carrot snacks.',
  ),
  Pet(
    id: '10',
    name: 'Kiwi',
    breed: 'Parrot',
    age: 2,
    imageUrl:
        'https://images.unsplash.com/photo-1602027439122-724dff5d9bc7?q=80&w=2148&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    description: 'Talkative and cheerful. Loves to mimic sounds.',
  ),
  Pet(
    id: '11',
    name: 'Hammy',
    breed: 'Syrian Hamster',
    age: 1,
    imageUrl:
        'https://images.unsplash.com/photo-1738486310307-d2982bd995e6?q=80&w=1760&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    description: 'Tiny adventurer. Enjoys tunnels and small snacks.',
  ),
  Pet(
    id: '12',
    name: 'Rex',
    breed: 'German Shepherd',
    age: 4,
    imageUrl:
        'https://images.unsplash.com/photo-1610968755695-d7fcb5fd4b92?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    description: 'Strong, loyal, protective. Loves training sessions.',
  ),
];
