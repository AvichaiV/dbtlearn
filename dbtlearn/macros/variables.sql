{% macro learn_variables() %}
    {% set your_name_jinja = "matrix" %}
    {{ log ("Hello " ~ your_name_jinja, info=True) }}


    {{ log("Hello dbt user " ~ var("user_name", "NO USER NAME SET") ~ "!", info=True) }}

{% endmacro %}