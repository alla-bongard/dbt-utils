{% macro xdb_deprecation_warning(macro, package, model) %}
    {%- set error_message = "Warning: the `" ~ macro ~"` macro is now provided in dbt Core. It is no longer available in dbt_utils and backwards compatibility will be removed in a future version of the package. Use `" ~ macro ~ "` (no prefix) instead. The " ~ package ~ "." ~ model ~ " model triggered this warning." -%}
    {%- do exceptions.warn(error_message) -%}
{% endmacro %}