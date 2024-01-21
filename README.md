# Social_Network_GraphML
![WhatsApp Image 2024-01-21 at 02 05 39_0dcb8b8f](https://github.com/NitikaNahata/Social_Network_GraphML/assets/149837825/413d665e-f6e6-4124-b75e-4ef959d9a10e)

![WhatsApp Image 2024-01-21 at 02 05 39_9e4e2970](https://github.com/NitikaNahata/Social_Network_GraphML/assets/149837825/7c6b447e-bb87-4e5f-9264-14e8fc11cf05)

#Ontology


#Overview:
In this social network graph, users can create posts, comment on posts, like posts, send messages to each other, attend events, and be members of organizations. The relationships capture various interactions and connections between users, posts, topics, comments, likes, messages, events, and organizations.

For example, a user might post a message, and other users can like or comment on that post. Users can be friends, attend events, or be members of organizations. The graph structure allows for querying and analyzing social interactions, exploring friendships, identifying popular topics, and understanding the overall social network dynamics.


#Nodes and Relationships

Cypher code creates a small ontology within a graph database (e.g., Neo4j) representing a social network scenario. Here's a brief description of the key entities and relationships:

Users:

Nodes representing individuals in the social network.
Properties include the user's name and age.
Posts:

Nodes representing content shared by users.
Properties include the content of the post and a timestamp.
Topics:

Nodes representing categories or topics to which posts belong.
Properties include the name of the topic.
Comments:

Nodes representing comments made by users on posts.
Properties include the text of the comment and a timestamp.
Likes:

Nodes representing likes given by users to posts.
Properties include a timestamp.
Messages:

Nodes representing messages sent between users.
Properties include the content of the message and a timestamp.
Events:

Nodes representing events that users can attend.
Properties include the name of the event and its date.
Organizations:

Nodes representing organizations that users can be members of.
Properties include the name of the organization.
Relationships:

POSTED: Connects users to posts they have created.
FRIENDS_WITH: Connects users who are friends.
BELONGS_TO: Connects posts to the topics they belong to.
COMMENTED_ON: Connects users to comments they have made on posts.
LIKED: Connects users to posts they have liked.
SENT: Connects users to messages they have sent.
ATTENDING: Connects users to events they are attending.
MEMBER: Connects users to organizations they are members of.
