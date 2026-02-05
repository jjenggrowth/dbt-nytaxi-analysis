{#
    Renders limit command with proper number if environment is either default or dev
#}

{% macro cond_limit_rows() %}

    {% if target.name in ['default', 'dev'] %}
    limit {{ var('record_limit', 100) }}
    {% endif %}

{% endmacro %}
