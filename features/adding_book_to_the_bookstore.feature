Feature: Adding a book to the bookstore
    In order to enrich our offer
    As a Bookstore Manager
    I want to add new books to the bookstore

    Scenario: Adding a book to the bookstore
        Given there is a book with title "Game of thrones" and ISBN "978-83-7506-830-6"
        When I add it to the bookstore
        Then this book should appear in the bookstore

    Scenario: Adding a book with existing ISBN number
        Given a book with title "Winds of Winter" and ISBN "978-1-56619-909-4" was added to the bookstore
        When I try to add the same book again
        Then I should be notified that the book with the same ISBN is already added to the bookstore
