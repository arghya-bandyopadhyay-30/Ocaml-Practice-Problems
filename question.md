# Functional Programming Practice Questions (OCaml Style)

**Constraints:**

* Use **only recursion** (no loops).
* **No mutation** allowed.
* Rely on **pattern matching**, **tuples**, and **records**.
* Prefer **pure functional style**.

---

## List Operations

### 1. Concatenate Two Lists

**Problem:**
Write a function `concat : 'a list -> 'a list -> 'a list` that recursively concatenates two lists.

### 2. Reverse a List

**Problem:**
Write a function `reverse : 'a list -> 'a list` that returns a new list with elements in reverse order.

### 3. Check if a List is a Palindrome

**Problem:**
Write a function `is_palindrome : 'a list -> bool` that checks if a list reads the same forward and backward.

### 4. Double the Elements of a List

**Problem:**
Write a function `double : int list -> int list` that returns a list where each element is doubled.

### 5. Implement `map` from Scratch

**Problem:**
Write a recursive function `my_map : ('a -> 'b) -> 'a list -> 'b list` that behaves like the built-in `List.map`.

### 6. Sum All Numbers in a List

**Problem:**
Write a function `sum_list : int list -> int` that returns the sum of all integers in the list.

### 7. Find the Maximum Number in a List

**Problem:**
Write a function `max_list : int list -> int option` that returns the maximum number, or `None` for an empty list.

---

## Nested List Operations

### 8. Flatten a List (Shallow and Deep)

**a. Shallow Flatten:**
Write a function `flatten_shallow : 'a list list -> 'a list` that flattens one level of nested lists.
Example: `[[1;2]; [3;4]] -> [1;2;3;4]`

**b. Deep Flatten:**
Write a function `flatten_deep : nested list -> int list`
Where:

```ocaml
type nested = 
  | Elem of int 
  | List of nested list
```

Example: `List [Elem 1; List [Elem 2; List [Elem 3]]] -> [1;2;3]`

---

## Map (Dictionary) Implementation using List

### 9. Implement a Simple Map using List of Pairs

**Problem:**
Implement a dictionary-like structure using a list of key-value pairs.

```ocaml
type ('k, 'v) my_map = ('k * 'v) list
```

* `put : 'k -> 'v -> ('k, 'v) my_map -> ('k, 'v) my_map`
  Adds or updates a key-value pair.

* `get : 'k -> ('k, 'v) my_map -> 'v option`
  Retrieves the value for a given key, or `None` if not found.

