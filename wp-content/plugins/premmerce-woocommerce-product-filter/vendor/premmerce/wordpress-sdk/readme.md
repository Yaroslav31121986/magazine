# Premmerce Wordpress SDK

Premmerce wordpress SDK used in plugins generated by premmerce-dev-tools plugin.

## FileManager

File manager is responsible for plugin resources(assets, views, paths) management.
Class should be initialized with plugin main file full path as parameter.


params:
* string $mainFile - main plugin file path
* string $templatePath - theme directory to override plugin templates located in `frontend` directory
   
```php
    $fileManager = new FileManager($mainFile);
    
    //V2
    $fileManager = new FileManager($mainFile, $templatePath);
```

### includeTemplate

includeTemplate(string $template, array $variables = [])


params:  
* string $template - relative path to file
* array $variables - array of variables used in template file
    
Includes template located in plugin `views` folder with passed variables in scope

Each template located in `views/forntend` directory can be overridden in theme in `/plugin_name/` directory

```php

$fileManager->includeTemplate('admin/index.php',['title' => 'My title']);
```

### renderTemplate

renderTemplate(string $template, array $variables = [])

params:
* string $template - relative path to file
* array $variables - array of variables used in template file
    
Returns rendered template located in plugin `views` folder with passed variables in scope

Each template located in `views/forntend` directory can be overridden in theme in `/plugin_name/` directory

```php

$rendered = $fileManager->includeTemplate('admin/index.php',['title' => 'My title']);

```

### locateAsset

locateAsset(string $file)

Returns asset url located in plugin `assets` folder 

params:
* string $template - relative path to file
    

```php

$url = $fileManager->locateAsset('admin/css/style.css');

wp_enqueue_style('my_style', $fileManager->locateAsset('front/css/style.css'));

```

## AdminNotifier

Class is responsible for displaying messages in admin area. AdminNotifier should be instantiated, before `admin_notices` action

### push

Show message on admin_notices action

push(string $message, string $type = self::SUCCESS, bool $isDismissible = false)

params:
* string $message - message text
* string $type  - message type, one of predefined constants: AdminNotifier::SUCCESS|AdminNotifier::ERROR|AdminNotifier::WARNING|AdminNotifier::INFO
* bool $isDismissible - can user dismiss message

```php

$notifier->push('Message text', AdminNotifier::SUCCESS, true)

```
### flash

Save flash message to show during next request

flash(string $message, string $type = self::SUCCESS, bool $isDismissible = false)

params:
* string $message - message text
* string $type  - message type, one of predefined constants: AdminNotifier::SUCCESS|AdminNotifier::ERROR|AdminNotifier::WARNING|AdminNotifier::INFO
* bool $isDismissible - can user dismiss message
    

```php

$notifier->flash('Message text', AdminNotifier::SUCCESS, true)

```

## PluginInterface

The Interface that should be implemented by plugin main file

### Changelog

#### V2

* Added second parameter to FileManager `__construct()`
* Added `flash` method to AdminNotifier
