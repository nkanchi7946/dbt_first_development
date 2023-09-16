{%-  set my_cool_string='WoW' -%}
{%- set mycoolnumber=1 -%}
{{ my_cool_string }}
{{mycoolnumber}}
I want to write jina for {{mycoolnumber}} times which is {{my_cool_string}}
{#- done -#}
{%- set my_animals=['lemur','wolf','panther'] -%}
{% for animals in my_animals %}
my favourite animal is the {{animals}} 
{%- endfor -%}
{%- set temperature = 90 -%}
{% if temperature  <100 %}
time for coffee
{%else %}
time for cold brew
{%-endif-%}

{% set foods = ['Carrot','hotdog','bell pepper','cucumber']%}
{% for food in foods %}
{% if food=='hotdog'%}
{% set food_type='snack'%}
{% else%}
{% set food_type='vegtable'%}
{% endif%}
the humble {{food}} is my favourite {{food_type}}
{% endfor %}
{%set webstr_diction={ 'word':'data','speach_part':'noun','definition':'if you know you know'}%}
{{webstr_diction['word']}} ({{webstr_diction['speach_part']}}) : defined as "{{webstr_diction['definition']}}"