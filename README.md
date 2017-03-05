# ollaollu-grouping
Mini class to help with grouping a list of users.

You pass in an array of names and how many number of people you want per group. If after grouping, there are not enough names to meet the group quota, the remaining name(s) will stand alone in the final group.

##Example

###Initialize the class with the the array of names and the number per group

  `groups = Grouping.new(["Tony", "Timothy", "Tina", "Lois", "Mary"], 2)`

###Call any of the available methods `random_grouping` or `group_by_length_of_name` on your object
`random_grouping` randomnizes everyone and then groups them

  ```
    groups = Grouping.new(["Tony", "Timothy", "Tina", "Lois", "Mary"], 2)
    groups.random_grouping

    #result
    Group 1: Timothy, Tina
    Group 2: Mary, Tony
    Group 3: Lois
  ```

`group_by_length_of_name` checks the length of their names and groups them
  ```
    groups = Grouping.new(["Tony", "Timothy", "Tina", "Lois", "Mary"], 2)
    groups.group_by_length_of_name

    #result
    Group 1: Tony, Tina
    Group 2: Lois, Mary
    Group 3: Timothy
  ```
