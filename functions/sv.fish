function sv --wraps='source venv/bin/activate' --wraps='source venv/bin/activate.fish' --description 'alias sv source venv/bin/activate.fish'
  source venv/bin/activate.fish $argv
        
end
