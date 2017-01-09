# @cjsx React.DOM

@PeopleSearch = React.createClass
  displayName : 'PeopleSearch'
  getInitialState: ->
    searchLength : 0
  _handleOnSubmit: (e) ->
    e.preventDefault()
    searchValue = ReactDOM.findDOMNode(@refs.search).value.trim()
    console.log(searchValue)
    @props.onFormSubmit(searchValue)
  _handleSearchOnKeyup: (e) ->
    @setState
      searchLength : $(e.target).val().length  
  componentDidMount: ->
    @_subscribeToEvents()
  componentWillUnmount: ->
    @_unsubscribeFromEvents()
  _subscribeToEvents: ->
    $(ReactDOM.findDOMNode(@refs.search)).on 'keyup', @_handleSearchOnKeyup
    PubSub.subscribe 'resetButton:onClick', ()=>
      ReactDOM.findDOMNode(@refs.search).value = ''
      @setState
        searchLength : 0 
  _unsubscribeFromEvents: ->
    PubSub.unsubscribe 'resetButton:onClick'
  render: ->
    <div className='filter-wrapper' >
      <div className='form-wrapper'>
        <form onSubmit={@_handleOnSubmit}>
          {
            if @state.searchLength != 0
              <ResetButton text="Reset filter" styleClass="reset"/>
          }
          <input ref='search' name='search' placeholder='Search people...' type="search" />
          }
        </form>
      </div>
    </div> 