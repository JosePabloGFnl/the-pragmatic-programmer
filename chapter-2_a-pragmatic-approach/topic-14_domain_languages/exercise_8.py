import re

# Regex translation of exercise_7.bnf
TIME_RE = r"^(?!\d+$)(?P<hours>[0-2]?[0-9])(?::(?P<minutes>[0-5][0-9]))?(?P<suffix>am|pm)?$"


def parse_time(time):
    """Return minutes past midnight for a time string valid under exercise_7.bnf, or None if invalid."""
    match = re.match(TIME_RE, time)
    if not match:
        return None

    hours = int(match.group("hours"))
    minutes = int(match.group("minutes") or 0)
    suffix = match.group("suffix")

    if suffix == "am" and hours == 12:
        hours = 0
    elif suffix == "pm" and hours != 12:
        hours += 12

    return hours * 60 + minutes


if __name__ == "__main__":
    print(parse_time("4pm"))     # 960
    print(parse_time("7:38pm"))  # 1178
    print(parse_time("23:42"))   # 1422
    print(parse_time("3:16"))    # 196
    print(parse_time("3:16am"))  # 196
    print(parse_time("12am"))    # 0
    print(parse_time("12pm"))    # 720
    print(parse_time("4"))       # None
    print(parse_time("14:"))     # None
