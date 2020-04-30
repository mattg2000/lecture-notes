# Conceptual Model For Medium

## Conceptual Model

### author
* authorId
* authorAvatar
* authorBio
* authorJoinDate
* authorSocialAuthToken
* authorUsername


### publication
* publicationId
* publicationName
* publicationBio
* publicationBirthday
* publicationImage


### tag
* tagId
* tagDate
* tagName

### Story
* storyId
* storyAuthorId
* storyContent
* storyLandingImage

### storyImage
* storyImageId
* storyImageStoryId
* storyImageCaption
* storyImagePath

### authorPublication
* authorPublicationAuthorId
* authorPublicationPublicationId
* authorPublicationRole


### PublicationStory
* publicationStoryPublicationId
* publicationStoryStoryId 
* publicationStoryApproved
* publicationStoryDateApproved

### storyTag 
* storyTagTagId
* storyTagStoryId
* storyTagDate

### viewCount
* viewCountId
* viewCountStoryId
* viewCountDate

### storyComment
* storyCommentId
* storyCommentStoryId
* storyCommentCommentId
* storyCommentContent 
* storyCommentDate

### Clap
* clapProfileId
* clapStoryId
* clapCount 
* clapDate

### subscribe
* subscribeId
* subscribeAuthorId
* subscriberAuthorId
* subscribePublicationId
* subscribeDate

### bookmark
* bookmarkProfileId
* bookmarkStoryId 
* bookmarkArchived 
* bookmarkDate

## Relationships
many authors can belong to many publications
1 author can write many stories
many stories can have many tags
1 story can have many viewCounts
1 story can have many storyComments
1 storyComments can have many storyComments
many many can clap for many articles
many authors can subscribe to many authors
many authors can subscribe to many publications 
many authors can bookmark many stories
