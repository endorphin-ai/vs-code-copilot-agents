# Selection Decision Tree

Use input data to determine output path.

```
Input contains:
├─ "keyword_a", "type_a"
│   → path/option_a/
├─ "keyword_b", "type_b"
│   → path/option_b/
├─ "keyword_c", "type_c"
│   → path/option_c/
└─ Unknown
    → Use default or ask user
```

**Output:** `outputPath` variable

## Knowledge Mapping

Once option is identified, read the corresponding knowledge:

```
Option Identified → Read Knowledge:
├─ option_a → .copilot-utils/context/knowledge/knowledge_1.md
├─ option_b → .copilot-utils/context/knowledge/knowledge_2.md
└─ option_c → .copilot-utils/context/knowledge/knowledge_3.md
```
