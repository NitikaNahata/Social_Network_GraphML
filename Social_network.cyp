// Create Users
CREATE (alice:User {name: 'Alice', age: 30})
CREATE (bob:User {name: 'Bob', age: 28})
CREATE (charlie:User {name: 'Charlie', age: 35})

// Create Posts
CREATE (post1:Post {content: 'Hello World!', timestamp: timestamp()})
CREATE (post2:Post {content: 'Cypher is awesome!', timestamp: timestamp()})
CREATE (post3:Post {content: 'Graph databases are powerful!', timestamp: timestamp()})

// Create Topics
CREATE (topic1:Topic {name: 'Technology'})
CREATE (topic2:Topic {name: 'Graph Databases'})
CREATE (topic3:Topic {name: 'Programming'})

// Create Comments
CREATE (comment1:Comment {text: 'I agree!', timestamp: timestamp()})
CREATE (comment2:Comment {text: 'Great post!', timestamp: timestamp()})
CREATE (comment3:Comment {text: 'Interesting topic!', timestamp: timestamp()})

// Create Likes
CREATE (like1:Like {timestamp: timestamp()})
CREATE (like2:Like {timestamp: timestamp()})
CREATE (like3:Like {timestamp: timestamp()})

// Create Messages
CREATE (message1:Message {content: 'Hi there!', timestamp: timestamp()})
CREATE (message2:Message {content: 'How are you?', timestamp: timestamp()})
CREATE (message3:Message {content: 'Let\'s catch up!', timestamp: timestamp()})

// Create Events
CREATE (event1:Event {name: 'Tech Meetup', date: date('2024-02-01')})
CREATE (event2:Event {name: 'Graph Database Workshop', date: date('2024-03-15')})
CREATE (event3:Event {name: 'Programming Hackathon', date: date('2024-04-20')})

// Create Organizations
CREATE (organization1:Organization {name: 'Tech Enthusiasts'})
CREATE (organization2:Organization {name: 'GraphDB Community'})
CREATE (organization3:Organization {name: 'Coder\'s Club'})


// Create Relationships
MATCH (alice:User {name: 'Alice'}), (bob:User {name: 'Bob'}), (charlie:User {name: 'Charlie'}),
      (post1:Post {content: 'Hello World!'}), (post2:Post {content: 'Cypher is awesome!'}), (post3:Post {content: 'Graph databases are powerful!'}),
      (topic1:Topic {name: 'Technology'}), (topic2:Topic {name: 'Graph Databases'}), (topic3:Topic {name: 'Programming'}),
      (comment1:Comment {text: 'I agree!'}), (comment2:Comment {text: 'Great post!'}), (comment3:Comment {text: 'Interesting topic!'}),
      (like1:Like), (like2:Like), (like3:Like),
      (message1:Message {content: 'Hi there!'}), (message2:Message {content: 'How are you?'}), (message3:Message {content: 'Let\'s catch up!'}),
      (event1:Event {name: 'Tech Meetup'}), (event2:Event {name: 'Graph Database Workshop'}), (event3:Event {name: 'Programming Hackathon'}),
      (organization1:Organization {name: 'Tech Enthusiasts'}), (organization2:Organization {name: 'GraphDB Community'}), (organization3:Organization {name: 'Coder\'s Club'})
CREATE
  (alice)-[:POSTED]->(post1),
  (bob)-[:POSTED]->(post2),
  (charlie)-[:POSTED]->(post3),
  (alice)-[:FRIENDS_WITH]->(bob),
  (bob)-[:FRIENDS_WITH]->(charlie),
  (post1)-[:BELONGS_TO]->(topic1),
  (post2)-[:BELONGS_TO]->(topic2),
  (post3)-[:BELONGS_TO]->(topic3),
  (alice)-[:COMMENTED_ON]->(post1),
  (bob)-[:COMMENTED_ON]->(post2),
  (charlie)-[:COMMENTED_ON]->(post3),
  (alice)-[:LIKED]->(post1),
  (bob)-[:LIKED]->(post2),
  (charlie)-[:LIKED]->(post3),
  (alice)-[:SENT]->(message1),
  (bob)-[:SENT]->(message2),
  (charlie)-[:SENT]->(message3),
  (alice)-[:ATTENDING]->(event1),
  (bob)-[:ATTENDING]->(event2),
  (charlie)-[:ATTENDING]->(event3),
  (alice)-[:MEMBER]->(organization1),
  (bob)-[:MEMBER]->(organization2),
  (charlie)-[:MEMBER]->(organization3);


// Delete duplicate relationships based on a specific criterion
MATCH (a)-[r]->(b)
WITH a, b, type(r) AS relType, collect(id(r)) AS relIds
UNWIND tail(relIds) AS relId
MATCH ()-[r]->()
WHERE id(r) = relId
DELETE r;