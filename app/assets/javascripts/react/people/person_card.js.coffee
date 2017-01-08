# @cjsx React.DOM

@PersonCard = React.createClass
  displayName : 'PersonCard'
  render: ->
#    cx = React.addons.classSet
#    classNames = require 'classnames'
    cardClasses = classNames
      'card' : true
      'female' : @props.data.gender == 'female'
      'male' : @props.data.gender == 'male'
#    cardClasses = 'card female' 
    <div className={cardClasses}>
      <header>
        <div className="avatar-wrapper">
          &nbsp;
          <img className="avatar" src={@props.data.picture} />
        </div>
        <div className="info-wrapper">
          <h4>{@props.data.first_name} {@props.data.last_name}</h4>
          <ul className="meta">
            <li>
              <i className="fa fa-map-marker"></i> {@props.data.location}
            </li>
            <li>
              <i className="fa fa-birthday-cake"></i> {@props.data.birth_date}
            </li>
          </ul>
        </div>  
      </header>
      <div className="card-body">
        <div className="headline">
          <p>{@props.data.headline}</p>
        </div>
        <ul className="contact-info">
          <li><i className="fa fa-phone"></i> {@props.data.phone_number}</li>
          <li><i className="fa fa-envelope"></i> {@props.data.email}</li>
        </ul>
      </div>
    </div> 