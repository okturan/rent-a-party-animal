# Rent a Party Animal

> **Status:** completed collaborative Rails bootcamp project from 2021. The application is preserved as team and learning evidence; its historical dependency graph has known security advisories and must not be exposed or deployed without a dedicated modernization.

A tongue-in-cheek marketplace for browsing party personalities, publishing a listing, booking a time and address, and reviewing owned listings and reservations from an authenticated dashboard.

## What it demonstrates

- Devise registration, sessions, account editing, and password recovery surfaces.
- User-owned party-animal listings with images and descriptive attributes.
- Nested booking creation, duration-based pricing, and owner-scoped deletion.
- Address geocoding and Mapbox dashboard markers.
- Active Storage with Cloudinary-era configuration.
- Server-rendered Rails views with Bootstrap, Flatpickr, and Webpacker assets.

## Ownership and collaboration

This was a three-person Le Wagon project with [Sedef Çakmak](https://github.com/sedcakmak) and [Ege Çakmak](https://github.com/Egecak). Okan's authored merged pull requests cover seed data, the home page, navigation, the animal collection, booking price calculation and views, avatars, dashboard partials, and final integration fixes; [GitHub's merged-PR history](https://github.com/okturan/rent-a-party-animal/pulls?q=is%3Apr+is%3Amerged+author%3Aokturan) is the attribution source.

## Historical local setup

The lockfile targets Ruby 2.7.3 and Rails 6.0.4 with PostgreSQL. This is a preserved historical toolchain, not a current support claim. If inspected, use an isolated local environment only and do not connect it to production credentials, real user data, or a public network.

```bash
bundle install
bin/rails db:setup
bin/rails server
```

The seed login is fictional local sample data. Map and media integrations require local environment/credential configuration; no provider secrets are stored in the repository.

## Security boundary

The current source scopes listing updates and booking deletion through `current_user` and prevents listing deletion from cascading into owner deletion. Run the dependency-free source contract without installing the legacy Rails stack:

```bash
ruby script/verify_archive_contract.rb
```

This static contract does not make the historical dependencies safe. The repository should remain unpinned and undeployed until the owner chooses either GitHub archival or a supported Ruby/Rails modernization with real model, request, and system tests plus zero critical/high dependency alerts.

## Origin

Generated from [Le Wagon's Rails template](https://github.com/lewagon/rails-templates) during the [Le Wagon coding bootcamp](https://www.lewagon.com).
