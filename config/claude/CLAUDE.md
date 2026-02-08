In all interactions and commit messages, be extremely concise. Sacrifice grammar for concision.

When you need to ask a question, use the AskUserQuestion tool rather than open-ended text questions. Provide 3 suggested options so I can quickly select one. The tool automatically adds an "Other" option for custom input.

## PR Comments

<pr-comment-rule>
When I ask you to add a PR comment with a TODO, use GitHub checkbox markdown.

<example>
- [ ] Description of the TODO
</example>
</pr-comment-rule>

- When tagging Claude in GitHub issues, use `@claude`.

## Changesets

To add a changeset, create a new file in the `.changeset` directory.

The file must be named `0000-your-change.md`. Decide whether the change is `patch`, `minor`, or `major`.

The file format:
```md
---
"evalite": patch
---

Description of the change.

## GitHub
- Primary method for interacting with GitHub: GitHub CLI.

## Git
- When creating branches:
  - Use `fisenkodv/` if the repository is not mine.
  - Use `feat/` if the repository is mine.

## Plans
- At the end of each plan, list unresolved questions, if any.
- Questions must be extremely concise.
- Sacrifice grammar for concision.
