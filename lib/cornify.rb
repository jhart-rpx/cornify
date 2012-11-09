module ActionView
  module Helpers #:nodoc:
    module Cornify
      def cornify_link(content=nil, options = {})

        attributes = {
            :href => "javascript:cornify_add()"
        }

        if content == :rainbow_madness
          attributes[:class] = 'rb-candy'
          options = options.merge(attributes)

          content = 'Rainbow Madness!!'
          hyperlink = content_tag("a", content, options)
          (cornify_javascript + cornify_rainbow_button_style + hyperlink).html_safe
        else
          content ||= 'Click here to Cornify!!'
          options = options.merge(attributes)
          hyperlink = content_tag("a", content, options)
          (cornify_javascript + hyperlink).html_safe
        end
      end

      private

      def cornify_javascript
        '<script type="text/javascript" src="http://www.cornify.com/js/cornify.js"></script>'
      end

      def cornify_rainbow_button_style
        <<CSS
<style type="text/css">
    .rb-candy {
        cursor:pointer;
        font:normal 18px 'Comic Sans MS',Serif;
        background-color:grey;
        background-image:-webkit-linear-gradient(top, rgba(255,255,255,0.7) 0%, rgba(255,255,255,0.4) 50%, rgba(255,255,255,0.2) 50%, rgba(255,255,255,0) 100%);
        background-image:-moz-linear-gradient(top, rgba(255,255,255,0.7) 0%, rgba(255,255,255,0.4) 50%, rgba(255,255,255,0.2) 50%, rgba(255,255,255,0) 100%);
        background-image:-ms-linear-gradient(top, rgba(255,255,255,0.7) 0%, rgba(255,255,255,0.4) 50%, rgba(255,255,255,0.2) 50%, rgba(255,255,255,0) 100%);
        background-image:-o-linear-gradient(top, rgba(255,255,255,0.7) 0%, rgba(255,255,255,0.4) 50%, rgba(255,255,255,0.2) 50%, rgba(255,255,255,0) 100%);
        background-image:linear-gradient(top, rgba(255,255,255,0.7) 0%, rgba(255,255,255,0.4) 50%, rgba(255,255,255,0.2) 50%, rgba(255,255,255,0) 100%);
        border:none;
        padding:10px 18px;
        color:white;
        text-shadow:0px 1px 0px rgba(0,0,0,0.2), 0px 0px 10px white;
        -webkit-box-shadow:inset 0px -1px 10px rgba(255,255,255,0.7),
          0px 1px 3px rgba(0,0,0,0.4);
        -moz-box-shadow:inset 0px -1px 10px rgba(255,255,255,0.7),
          0px 1px 3px rgba(0,0,0,0.4);
        box-shadow:inset 0px -1px 10px rgba(255,255,255,0.7),
          0px 1px 3px rgba(0,0,0,0.4);
        -webkit-border-radius:30px;
        -moz-border-radius:30px;
        border-radius:30px;
        -webkit-transition:top 0.26s ease-out;
        -moz-transition:top 0.26s ease-out;
        -ms-transition:top 0.26s ease-out;
        -o-transition:top 0.26s ease-out;
        transition:top 0.26s ease-out;
        position:relative;
        text-decoration: none;
    }
    .rb-candy:hover {
        background-color:red;
        -webkit-animation:rainbow 0.5s infinite alternate;
        -moz-animation:rainbow 0.5s infinite alternate;
        -ms-animation:rainbow 0.5s infinite alternate;
        -o-animation:rainbow 0.5s infinite alternate;
        animation:rainbow 0.5s infinite alternate;
    }
    .rb-candy:focus {
        -webkit-animation-play-state:paused;
        -moz-animation-play-state:paused;
        -o-animation-play-state:paused;
        animation-play-state:paused;
    }
    @-webkit-keyframes rainbow {
    0%   {background-color:red;top:-2px;       }
    20%  {background-color:gold;top:0px;       }
    40%  {background-color:yellow;top:-2px;    }
    60%  {background-color:yellowgreen;top:0px;}
    80%  {background-color:skyblue;top:-2px;   }
    100% {background-color:indigo;top:0px;     }
    }
    @-moz-keyframes rainbow {
    0%   {background-color:red;top:-2px;       }
    20%  {background-color:gold;top:0px;       }
    40%  {background-color:yellow;top:-2px;    }
    60%  {background-color:yellowgreen;top:0px;}
    80%  {background-color:skyblue;top:-2px;   }
    100% {background-color:indigo;top:0px;     }
    }
    @-ms-keyframes rainbow {
    0%   {background-color:red;top:-2px;       }
    20%  {background-color:gold;top:0px;       }
    40%  {background-color:yellow;top:-2px;    }
    60%  {background-color:yellowgreen;top:0px;}
    80%  {background-color:skyblue;top:-2px;   }
    100% {background-color:indigo;top:0px;     }
    }
    @-o-keyframes rainbow {
    0%   {background-color:red;top:-2px;       }
    20%  {background-color:gold;top:0px;       }
    40%  {background-color:yellow;top:-2px;    }
    60%  {background-color:yellowgreen;top:0px;}
    80%  {background-color:skyblue;top:-2px;   }
    100% {background-color:indigo;top:0px;     }
    }
    @keyframes rainbow {
    0%   {background-color:red;top:-2px;       }
    20%  {background-color:gold;top:0px;       }
    40%  {background-color:yellow;top:-2px;    }
    60%  {background-color:yellowgreen;top:0px;}
    80%  {background-color:skyblue;top:-2px;   }
    100% {background-color:indigo;top:0px;     }
    }
</style>
CSS
      end
    end
  end
end

include ActionView::Helpers::Cornify
