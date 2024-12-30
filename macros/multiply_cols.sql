{% macro multiply_columns_and_round(column1, column2, decimal_places=2) -%}
    round({{ column1 }} * {{ column2 }}, {{decimal_places}})
{% endmacro %}