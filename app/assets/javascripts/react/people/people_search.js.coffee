# @cjsx React.DOM

@PeopleSearch = React.createClass
  displayName : 'PeopleSearch'
  _handleOnSubmit: (e) ->
    e.preventDefault()
    searchValue = ReactDOM.findDOMNode(@refs.search).value.trim()
    console.log(searchValue)
    @props.onFormSubmit(searchValue)
  render: ->
    <div className='filter-wrapper' >
      <div className='form-wrapper'>
        <form onSubmit={@_handleOnSubmit}>
          <input ref='search' name='search' placeholder='Search people...' type="search" />
        </form>
      </div>
    </div> 