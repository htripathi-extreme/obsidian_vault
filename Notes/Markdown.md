# MarkDown

#Markdown #MD 
## General


- To add line break -> leave 3 spaces after the line.

- To add new paragraph -> leave a blank line.

- Horizontal line -> `---`

- Escape character -> `\`

- link -> [text_here](www.google.com)

- image -> ![border text](https://www.google.com/url?sa=i&url=https%3A%2F%2Fhuggingface.co%2Fblog%2Fmikelabs%2Freverse-thinking-makes-llms-stronger-reasoners&psig=AOvVaw2j-6nM88frVdOC0FZ6fy82&ust=1746551177754000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCNDhmabojI0DFQAAAAAdAAAAABAY)

- email address -> surround with `<>` , eg - <harhshit@gmail.com>
- Highlight text -> ==Text== 

--------

## Styling the text

  
1. Bold -> **text_here**

2. Italic -> *text_here*

3. Bold & Italic -> ***text_here***

4. Strikethrough (supported in git) -> ∼∼The world is flat∼∼

5. Blockquote ->

> Text_here.

  
6. code -> to add any work as code enclose it in **\`** , eg - `asdfad`

7. code block ->

8. are normally indented four spaces or one tab. When they’re in a list, indent them eight spaces or two tabs

		text = input()
		for i in range(int(text)):
		print("hello")
  

9. enclose text with \``` ``` no need to have intendation.

```
text = input()
for i in range(int(text)):
print("hello")

```

3. enclsose text with \```formate text_here```

```python
text = input()
for i in range(int(text)):
	print("hello")

```


---------

  

### List

For unordered list , add `- text_here`
- first item

For ordered list , add `number. text_here`
must start with 1 and does not need to follow order of numbering
1. first item
2. second item

Used indendation for nested list


-------

  

### Table

To add a table, use three or more hyphens (---) to create each column’s header, and

use pipes (|) to separate each column.

| Syntax | Description |

| ----------- | ----------- |
| Header | Title |
| Paragraph | Text |


You can align text in the columns to the left, right, or center by adding a colon (:) to

the left, right, or on both side of the hyphens within the header row.

| Syntax    | Description |   Test Text |
| :-------- | :---------: | ----------: |
| Header    |    Title    | Here's this |
| Paragraph |    Text     |    And more |


---
  

# Task List

  

Task lists allow you to create a list of items with checkboxes.

Supported in github.

- [x] Write the press release
- [ ] Update the website
- [ ] Contact the media