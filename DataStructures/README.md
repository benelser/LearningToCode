# Data Structures
Defined: *is a data organization, management, and storage format that enables efficient access and modification. More precisely, a data structure is a collection of data values, the relationships among them, and the functions or operations that can be applied to the data.*

In other words: *Data structures are what we use to store data that we want our program/script to consume.*

## Array
Defined: *An array is an aggregate data structure that is designed to store a group of objects of the same or different types. The array is the most efficient data structure for storing and accessing a sequence of objects.*

Think of am array as a list of something. As you can see in the example below we create an array || "list" of strings representing some arbirtrary names. We save that array in a variable that can be used later.

### Array of strings in PowerShell
```powershell
$listOfStrings = @("Benjamin", "Bob", "Andrew")
```
### Array of ints in PowerShell
```powershell
$listOfInts = @(1, 2, 3)
```
### Array of Processes in PowerShell
```powershell
$processes = Get-Process
```

### Defining an ArrayList using .net in PowerShell (My prefered way)
```powershell
[System.Collections.ArrayList]$Names = @("Ben", "Bob")
```
Now that we created our array using the ArrayListe we get the awesome ArrayList methods. If this is confusing stay tuned for a object oriented programming intro. For now take my word for it. 
```powershell
$Names.Add("Andrew")
$Names.Remove("Bob")
```
What we did there was add Andrew to the $Names array along with removing Bob. We did that by calling the ArrayList's (which is an object) methods ADD && Remove. Arrays are unavoidable. Learn to love them.

## Hashtables / Maps / Dictionaries 
Defined: A hashtable || map || dictionary is a type of fast key lookup data structure that offers a flexible means of indexing into its individual elements.

What you need to know: *they all store data in (Key, Value) pairs. All keys are unique there cannot be duplicates* 
```go
// inititalize map with (string, int) types
People := make(map[string]int)
// Add (key, value)
People["Benjamin"] = 32
People["Andrew"] = 19
People["Bob"] = 20
// Remove (key, value)
delete(People, "Benjamin")
```
```powershell
# initialize
$People = @{
    "Benjamin" = 32
    "Andrew" = 19
    "Bob" = 20
}
# Add (key, value)
$People.Add("Joe", 44)
# Remove (key, value)
$People.Remove("Benjamin")
```
```python
# initialize dictionary
People =	{
  "Benjamin": 32,
  "Andrew": 19,
  "Bob": 20
}
# Add (key, value)
People["joe"] = 44
# Remove (key, value)
People.pop("Benjamin", None)
```
```bash
# initialize BASH 4 syntax
declare -A People=(["Benjamin"]=32 ["Andrew"]=19 ["Benjamin"]=20 )
```
Then use them just like normal arrays. Use 
```bash
People["key"]="value" # to set value
```
```bash
"${People[@]}" # to expand the values
```
```bash
"${!People[@]}" # (notice the !) to expand the keys
```
```bash
echo "${People[Benjamin]}"

# Loop through each (k) getting its value
for person in "${!People[@]}"; do echo "$person - ${People[$person]}"; done
```