"Define linter aspects"

load("@aspect_rules_lint//lint:lint_test.bzl", "lint_test")
load("@aspect_rules_lint//lint:rubocop.bzl", "lint_rubocop_aspect")

rubocop = lint_rubocop_aspect(
    binary = Label("@bundle//bin:rubocop"),
    configs = [Label("//:.rubocop.yml")],
)
