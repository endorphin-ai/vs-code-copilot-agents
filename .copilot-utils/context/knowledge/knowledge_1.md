# Anti-Patterns

## Patterns to Identify

1. **Vague verbs** - Look for: "Choose", "Select", "Enter"
   - Should be: "Click", "Fill", "Verify"

2. **Combined actions** - Look for: "and", "then" in single task
   - Should be: Split into separate tasks

3. **Missing quotes** - Look for: unquoted element names
   - Should be: `"element name"` with quotes

4. **Generic identifiers** - Look for: "the button", "the field"
   - Should be: Specific text or locator

5. **Hardcoded values** - Look for: literal strings in code
   - Should be: Use variables or config

## How to Check

1. Read each line of the file
2. Match against patterns above
3. Report line number and issue
4. Suggest fix
