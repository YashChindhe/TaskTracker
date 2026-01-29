# TaskTracker 

A minimal task tracking application built with Ruby on Rails to demonstrate clean MVC architecture, Rails conventions, and disciplined backend engineering.

This project is intentionally small and focused. The goal is not feature richness, but clarity of design, separation of concerns, and correctness.

---

## Problem Statement

Small teams often need a lightweight way to organize work without the overhead of complex project management tools.
This application allows a user to create projects and manage tasks within them using a simple status workflow.

---

## Tech Stack

- Ruby on Rails
- PostgreSQL
- Devise (authentication)
- RSpec (model tests)
- ERB (server-rendered views)

---

## Core Features

- User authentication
- Project creation and listing
- Tasks scoped under projects
- Task status workflow (open, in_progress, done)
- Ownership-based access control (users only see their own data)

---

## Architecture (MVC)

### Models
- Encapsulate data relationships, validations, and business rules
- Task status workflow implemented using model enums

### Controllers
- Thin controllers responsible only for request flow and authorization
- No business logic inside controllers

### Views
- Presentation-only ERB templates
- Minimal logic, no business rules

---

## Data Model

### User
- has_many :projects

### Project
- belongs_to :user
- has_many :tasks

### Task
- belongs_to :project
- status enum: open, in_progress, done

---

## Setup Instructions

### Prerequisites
- Ruby
- Rails
- PostgreSQL

### Installation

```bash
# 1. Create the Rails application
# PostgreSQL
rails new task_tracker -d postgresql
cd task_tracker

# 2. Install dependencies
bundle install

# 3. Setup database
rails db:create
rails db:migrate

# 4. Start server
rails server

# Open in browser:
# http://localhost:3000
```

---

## Running Tests

bundle exec rspec

---

## Design Decisions

- Followed Rails conventions strictly instead of introducing custom architecture
- Used Devise for authentication to avoid reinventing well-solved problems
- Focused on backend clarity and structure over UI polish

---

## Summary

This project demonstrates clean MVC separation, Rails-first engineering mindset, maintainable backend design, and discipline over feature bloat.
