describe "Issue", ->
  beforeEach ->
    @game = new Peacemission.Models.Game()
    @issue = new Peacemission.Models.Issue(title: 'Order new issues', description: 'Bla bla')
  it "should have attributes", ->
    expect(@issue).toHaveAttributes(title: 'Order new issues', description: 'Bla bla')
    expect(@issue.solved()).toEqual false

describe "Issues", ->
  beforeEach ->
    @solved_issue = new Peacemission.Models.Issue(title: 'Solved', solved: true)
    @unsolved_issue = new Peacemission.Models.Issue(title: 'Unsolved', solved: false)
    @issues = new Peacemission.Collections.Issues([@solved_issue, @unsolved_issue])
  it ".solved", ->
    expect(@issues.solved().length).toEqual 1
    expect(@issues.solved()).toContain @solved_issue
    expect(@issues.solved()).not.toContain @unsolved_issue
  