def validate_age(value)
    validate_type(value, :integer)
    validate_min_integer(value, 0)
end

def validate_quantity(value)
    validate_type(value, :integer)
    validate_min_integer(value, 0)
end

=begin

despite having the same code, these functions manage two very distinct type of data.
a future change applied to age won't be the same as a change applied to quantity.
it's a coincidence.

=end
