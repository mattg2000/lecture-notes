# Snap Challenge: User Stories and Entities Answers

## Question 1 Examples:
* As a newsletter owner, I want to upload an image into a text content block.
* As a newsletter author, I want to crop an image using the image editing tool.
* As a newsletter editor, I want to choose which version of an image file to use in the Content Manager. 

## Question 2:

### Conceptual Model

#### Profile
* profileId
* profileEmail
* profilePassword
* profileUsername

#### Address
* addressId
* addressProfileId
* addressCity
* addressState
* addressStreet
* addressZip

#### Relationships
1 profile can ship to many addresses


Click through to see image: 
[ERD For Answer 2](./erd.png)

Both entities are strong entities