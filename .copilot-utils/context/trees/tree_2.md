# Configuration Decision Tree

Determine which configuration to use based on input.

```
Input type:
├─ "config_dev", "development"
│   → Use development settings
│   → Enable debug mode
├─ "config_prod", "production"
│   → Use production settings
│   → Disable debug mode
├─ "config_test", "testing"
│   → Use test settings
│   → Enable mock data
└─ Unknown
    → Default to development
```

**Output:** `configType` variable

## Settings per Config

```
configType → Settings:
├─ development → { debug: true, mock: false, verbose: true }
├─ production → { debug: false, mock: false, verbose: false }
└─ testing → { debug: true, mock: true, verbose: true }
```
