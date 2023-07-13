# PairFair
Pair-Programming Sprint Planner
---

![The Honorable Judge Fair Pear](pear.png?raw=true "The Honorable Judge Fair Pear")

FairPair is a Ruby on Rails application designed to automate the process of creating and managing a developer pairing rotation schedule for software engineering projects in a fair and balanced manor that promotes postitive developer relations.

## Core Features

### Project Sprint Planner
- Number of sprints
- Names of all developers
- Any PTO requested by the developers

### Pair Rotation Scheduler
The application generates a pairing rotation schedule based on the inputted project details. The schedule aims to ensure each developer pairs with every other developer an equal number of times, or as close to equal as possible.

## Development

### Prerequisites
- Ruby 3.1.2
- Rails 7.0.4
- PostgreSQL 13.0

### Installation
1. Clone the repository: `git clone https://github.com/username/fairpair.git`
2. Navigate to the project directory: `cd fairpair`
3. Install the dependencies: `bundle install`
4. Set up the database: `rails db:create db:migrate`
5. Start the server: `rails server`

## TO-DO

Integration with External Calendar Services: Integrate with services like Google Calendar or Outlook to automatically add pair programming sessions to developers' calendars.

Slack Integration: Send notifications to a Slack channel when the pair programming schedule is updated.

Analytics Dashboard: Provide insights into pair programming sessions, such as the most and least common pairs, the number of sessions per developer, etc.

Gamification of Pair Programming: Add elements of gamification, such as points or badges, to encourage developers to participate in pair programming sessions.

## License 

FairPair is released under the [GNU GENERAL PUBLIC LICENSE](LICENSE)

![Can't get a dolla outta me](license.jpg?raw=true "Can't get a dolla outta me")

