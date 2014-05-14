assert = require("assert")

createPlanet = (x,y) ->
  x: x
  y: y

describe "App", ->

  it "should create a planet of 5 by 3", ->
    mars = createPlanet(5, 3)
    assert.equal(5, mars.x)
    assert.equal(3, mars.y)
