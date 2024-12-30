{% macro current_timestamp() %}
    {{ modules.datetime.datetime.now() }}
{% endmacro %}