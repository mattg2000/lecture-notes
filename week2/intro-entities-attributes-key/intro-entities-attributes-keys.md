# Data Design, Entities, & Keys

## [Lecture Recording](https://us02web.zoom.us/rec/play/ucF7Ien-rT03H4KUtQSDAqJ8W9XrL6ysh3QY_vQKxB6yWngKY1byb7MQMOsWsycB9CoHvtN6eFeB0NtW)

## Data Design

**data design** - how an application's data is stored and retrieved
- Some data is calculated on demand:
  - total price of an order
  - number of likes
  - number of seats available
-	Some data is rarely or never changed, but must be stored
  - specific line on a specific order
  - user foo liked tweet bar
  - user foo purchased seat R15

## Entities, Attributes, & Relationships
- **entity** - the most general "container" for data within data design
- **attribute** - a property of an entity that contains information about that entity
-	attributes are what compose an entity and contain one specific aspect of an entity
  - Generally 10 or fewer attributes to an entity
- How to identify entities
  - Pull out the nouns from your user story.
  - Nouns will be one of the following
    - HTML/CSS interface - if they look the same for every user
    - Calculated values - if they can be counted or otherwise reached by grouping a bunch of other entities together
    - Entities - Usually everything that's left

## Tweet Entity Example
Example tweet
- Attributes
  - tweetContent: what they wrote
  - tweetDateTime: when they wrote it
- Not number of likes!  That gets calculated on demand.
- Not user!  That's another entity.
- Not responses!  Those are also other entities
- So how do we make sure those other entities can be found?

Class activity: User

## Relationships
- relationship - a link between two entities that symbolizes an interaction between them
  - relationships DO NOT connect to/from attributes
- the most straightforward way of creating a relationship is to read the use case carefully and determine which entities were affected
  - *ownership*: who wrote this tweet? there must be a relation from profile to tweet in order to express this idea
  - *participation*: who is on this train? there must be a relation from profile to trainSchedule in order to express this idea
- three types of relationships:
  - 1-to-1: this relationship occurs 0 or 1 times (e.g., one profile verifies once)
  - 1-to-n: this relationship occurs multiple times, n ≥ 0 (e.g., one profile writes many tweets)
  - m-to-n: this relationship occurs multiple times with multiple actors, m ≥ 0, n ≥ 0 (e.g., many profiles can like many tweets)

## Keys
- primary key -  the unique identifier of an entity
  - cannot be modified once created
  - one immutable way is to increment your keys 1, 2, 3, ..., k
    - opens data up to attackers
  - we use UUIDv4 to generate keys
    - Universally Unique IDentifier
    - mathematically impossible to guess: 2^128 to 1
    - has some information that's verifiable
    - well known algorithm widely used in industry
    - we will use imported PHP code to do the hard work for us

## Placement of Keys in Relationships
- foreign key - a primary key from another table copied to a "foreign" table
  - these are how relationships are implemented
  - prevent the copy of the primary key from ever drifting from the original parent
-	**Every relationship will have one foreign key.**
  - This means that for each relationship in your ERD, you should have one foreign key.
- where do we place the foreign keys?
  - 1-to-1: choose either (not both)
  - 1-to-many: choose the many side
  - many-to-many: create a weak entity with both foreign keys

## Creating a Weak Entity: Cafeteria example

## Strong entities

customer
- customerId
- customerName

dish (ignoring customizations for simplicity's sake)
- dishId
- dishName
- dishPrice

bill
- billId
- billCustomerId
- billDateTime

## relationships
- customers and bills: 1 to many
  - Each bill is for one customer only (no splitting in our example)
  - one customer can come in multiple times to our restaurant
- dishes and bills: many-to-many
  - Each bill can have multiple dishes
  - Each dish can appear on multiple bills
  - We have to create a weak entity to encapsulate this relationship
- customers and dishes
  - we don't need a relationship for this, because we can get relate dishes to bills, and from there to customers.

## Weak ENTITY

billDish (weak entity)
- billDishBillId
- billDishDishId
- billDishQuantity

## Entity Relationship Diagrams and Relational Models
- entity relationship diagram (ERD) - a visual way of representing the entities and relationships that hold an application's data
- Example: http://ddc-web-curriculum.cnm.edu/data-design-project-overview/
- strong entities are represented as rectangles
- attributes are represented as ovals connected to entities
- weak entities have an additional outline around their rectangle
- relationships are represented with different types of crow’s feet that describes the relationship, and indicate what is being represented
- draw.io