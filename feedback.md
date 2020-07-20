Overall Assessment: 2.9/5

Additional Comments: Some small mistakes that are important even though I get the sense that you do understand the material:

- `author.books` method is only returning a list of `publish` instances

- `book.authors` method should return a list of authors. Instead it's returning a list of author names. Remember that the attribute is not the same as the "thing". You should only return an attribute if that is what is asked. For example, if they specifically said they wanted a list of authors' names
