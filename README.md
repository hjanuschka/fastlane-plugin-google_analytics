# google_analytics plugin

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-google_analytics)

## Getting Started

This project is a [fastlane](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-google_analytics`, add it to your project by running:

```bash
fastlane add_plugin google_analytics
```

## About

Use Google Analytics

<img src='assets/screenshot.png'>

## Example

### Pageview
```ruby
google_analytics(payload: {  path: '/page-path', hostname: 'mysite.com', title: 'A Page!' } )
```

### Exception
```ruby
google_exception(payload: { description: 'RuntimeException', fatal: true })
```

### Timing
```ruby
google_timing(payload: { category: 'runtime', variable: 'db', label: 'query', time: 50 })
```

### Event
```ruby
google_event(payload: { category: 'video', action: 'play', label: 'cars', value: 1 })
```


## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## About `fastlane`

`fastlane` is the easiest way to automate beta deployments and releases for your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).
