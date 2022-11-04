# Phoenix LiveView checkbox `phx-feedback-for` issue

## Problem

1. `<.input type="checkbox" />` is added to a form with a `phx-change` for changeset
2. On page load the `phx-no-feedback` class is applied (as it should)
3. When the checkbox is checked, the `phx-no-feedback` class is removed (as it should)
4. Upon interacting with any another element in the form the `phx-no-feedback` class is reapplied for the checkbox (**this is the problematic behavior**)

## Reproduce

1. Clone `gh repo clone benregn/repro_liveview_checkbox` or `https://github.com/benregn/repro_liveview_checkbox.git`
1. `mix phx.server`
1. Go to <http://localhost:4004/users/new>

### Steps

1. Inspect the checkbox element (it has the `phx-no-feedback` class)
1. Check the "Accept T&C" checkbox (`phx-no-feedback` class is removed)
1. Type into one of the text inputs (the `phx-no-feedback` class is added back to the checkbox element)
