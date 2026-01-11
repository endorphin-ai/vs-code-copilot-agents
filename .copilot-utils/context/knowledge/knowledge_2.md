# Code Patterns

## Setup Function Pattern

```python
async def setup() -> dict[str, str]:
    # 1. Enable flags first
    await enable_flags(flags)

    # 2. Configure settings
    await configure_settings(settings)

    # 3. Create required data
    entity = await create_entity(options)

    # 4. Return placeholders
    return {
        "entityName": entity.name,
        "entityId": entity.id
    }
```

## Teardown Function Pattern

```python
async def teardown() -> None:
    # Disable flags (use setup with value=False)
    await enable_flags(flags, value=False)
```

## Task Pattern

```python
Task(
    description="Action on element",
    element="element name",
    value="value if needed"
)
```

## Key Rules

- Setup runs before tasks
- Teardown runs after tasks
- Return dict with placeholder keys
- Use placeholders in tasks: `{entityName}`
