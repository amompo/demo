Danrent.Property = DS.Model.extend

  # description
  title:            DS.attr 'string'
  description:      DS.attr 'string'
  
  # size
  sqm:              DS.attr 'integer'
  sqfeet:           DS.attr 'integer'

  # type
  type:             DS.attr 'string'

  # furnishment
  furnishment:      DS.attr 'string'

  # rooms
  rooms:            DS.attr 'integer'
  bathrooms:        DS.attr 'integer'

  # cost
  rent:             DS.attr 'integer'
  deposit:          DS.attr 'integer'
  utilities:        DS.attr 'integer'
  media:            DS.attr 'integer'

  # period
  start_date:       DS.attr 'date'
  end_date:         DS.attr 'date'

  # TODO: Use http://momentjs.com/
  # Also see my own duration calculation from "old_rent_property project"
  # days: ( ->
  #   from = @get('start_date')
  #   to   = @get('end_date')

  #   # moment(from).diff(to, 'days')
  #   6
  # ).property('start_date', 'end_date')

  # total_rent: ( ->
  #   @get('rent') + @get('utilities') + @get('media')
  # ).property('rent', 'utilities', 'media')

  # total_upfront: ( ->
  #   @get('deposit') + @get('rent')
  # ).property('rent', 'deposit')

  # size: ->
  #   # TODO: Use User.preferences.sizeUnit
  #   switch 'sqm'
  #   when 'sqfeet'
  #     @get('sqfeet')
  #   else 
  #     @get('sqfeet')
