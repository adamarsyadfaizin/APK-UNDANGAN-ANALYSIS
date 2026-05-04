.class Lcom/google/android/material/datepicker/DateStrings;
.super Ljava/lang/Object;
.source "00C0.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDateRangeString(Ljava/lang/Long;Ljava/lang/Long;)Landroidx/core/util/Pair;
    .locals 1
    .param p0, "start"    # Ljava/lang/Long;
    .param p1, "end"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/material/datepicker/DateStrings;->getDateRangeString(Ljava/lang/Long;Ljava/lang/Long;Ljava/text/SimpleDateFormat;)Landroidx/core/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static getDateRangeString(Ljava/lang/Long;Ljava/lang/Long;Ljava/text/SimpleDateFormat;)Landroidx/core/util/Pair;
    .locals 7
    .param p0, "start"    # Ljava/lang/Long;
    .param p1, "end"    # Ljava/lang/Long;
    .param p2, "userDefinedDateFormat"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/text/SimpleDateFormat;",
            ")",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    invoke-static {v0, v0}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v0

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2, p2}, Lcom/google/android/material/datepicker/DateStrings;->getDateString(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v1

    .line 1
    .local v0, "00C0.java:1":V
    invoke-static {v1}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v1}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2, p2}, Lcom/google/android/material/datepicker/DateStrings;->getDateString(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v1

    .line 2
    .local v0, "00C0.java:2":V
    invoke-static {v1}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v1}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    invoke-static {v1, v0}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    if-eqz p2, :cond_3

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    new-instance v4, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    nop

    invoke-virtual {p2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v5

    return-object v5

    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_4

    nop

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/material/datepicker/DateStrings;->getMonthDay(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 3
    .local v0, "00C0.java:3":V
    invoke-static {v3}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v3}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/google/android/material/datepicker/DateStrings;->getMonthDay(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 4
    .local v0, "00C0.java:4":V
    invoke-static {v4}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v4}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    invoke-static {v3, v4}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v3

    return-object v3

    :cond_4
    nop

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/material/datepicker/DateStrings;->getMonthDay(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 5
    .local v0, "00C0.java:5":V
    invoke-static {v3}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v3}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDay(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 6
    .local v0, "00C0.java:6":V
    invoke-static {v4}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v4}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    invoke-static {v3, v4}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v3

    return-object v3

    :cond_5
    nop

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDay(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 7
    .local v0, "00C0.java:7":V
    invoke-static {v3}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v3}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDay(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 8
    .local v0, "00C0.java:8":V
    invoke-static {v4}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v4}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    invoke-static {v3, v4}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method static getDateString(J)Ljava/lang/String;
    .locals 1
    .param p0, "timeInMillis"    # J

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/material/datepicker/DateStrings;->getDateString(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    .line 9
    .local v0, "00C0.java:9":V
    invoke-static {v0}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method static getDateString(JLjava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 2
    .param p0, "timeInMillis"    # J
    .param p2, "userDefinedDateFormat"    # Ljava/text/SimpleDateFormat;

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/DateStrings;->isDateWithinCurrentYear(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/DateStrings;->getMonthDay(J)Ljava/lang/String;

    move-result-object v0

    .line 10
    .local v0, "00C0.java:10":V
    invoke-static {v0}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDay(J)Ljava/lang/String;

    move-result-object v0

    .line 11
    .local v0, "00C0.java:11":V
    invoke-static {v0}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method static getDayContentDescription(Landroid/content/Context;JZZZ)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dayInMillis"    # J
    .param p3, "isToday"    # Z
    .param p4, "isStartOfRange"    # Z
    .param p5, "isEndOfRange"    # Z

    invoke-static {p1, p2}, Lcom/google/android/material/datepicker/DateStrings;->getOptionalYearMonthDayOfWeekDay(J)Ljava/lang/String;

    move-result-object v0

    .line 12
    .local v0, "00C0.java:12":V
    invoke-static {v0}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_today_description:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 13
    .local v0, "00C0.java:13":V
    invoke-static {v0}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    :cond_0
    if-eqz p4, :cond_1

    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_start_date_description:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 14
    .local v0, "00C0.java:14":V
    invoke-static {v1}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v1}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    return-object v1

    :cond_1
    if-eqz p5, :cond_2

    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_end_date_description:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 15
    .local v0, "00C0.java:15":V
    invoke-static {v1}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v1}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    return-object v1

    :cond_2
    return-object v0
.end method

.method static getMonthDay(J)Ljava/lang/String;
    .locals 1
    .param p0, "timeInMillis"    # J

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/material/datepicker/DateStrings;->getMonthDay(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "00C0.java:16":V
    invoke-static {v0}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method static getMonthDay(JLjava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "timeInMillis"    # J
    .param p2, "locale"    # Ljava/util/Locale;

    nop

    invoke-static {p2}, Lcom/google/android/material/datepicker/UtcDates;->getAbbrMonthDayFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getMonthDayOfWeekDay(J)Ljava/lang/String;
    .locals 1
    .param p0, "timeInMillis"    # J

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/material/datepicker/DateStrings;->getMonthDayOfWeekDay(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "00C0.java:17":V
    invoke-static {v0}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method static getMonthDayOfWeekDay(JLjava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "timeInMillis"    # J
    .param p2, "locale"    # Ljava/util/Locale;

    nop

    invoke-static {p2}, Lcom/google/android/material/datepicker/UtcDates;->getMonthWeekdayDayFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getOptionalYearMonthDayOfWeekDay(J)Ljava/lang/String;
    .locals 1
    .param p0, "timeInMillis"    # J

    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/DateStrings;->isDateWithinCurrentYear(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/DateStrings;->getMonthDayOfWeekDay(J)Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "00C0.java:18":V
    invoke-static {v0}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDayOfWeekDay(J)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "00C0.java:19":V
    invoke-static {v0}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method static getYearContentDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I

    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_navigate_to_current_year_description:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "00C0.java:20":V
    invoke-static {v0}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_navigate_to_year_description:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "00C0.java:21":V
    invoke-static {v0}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method static getYearMonth(J)Ljava/lang/String;
    .locals 2
    .param p0, "timeInMillis"    # J

    nop

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getYearMonthFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getYearMonthDay(J)Ljava/lang/String;
    .locals 1
    .param p0, "timeInMillis"    # J

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDay(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "00C0.java:22":V
    invoke-static {v0}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method static getYearMonthDay(JLjava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "timeInMillis"    # J
    .param p2, "locale"    # Ljava/util/Locale;

    nop

    invoke-static {p2}, Lcom/google/android/material/datepicker/UtcDates;->getYearAbbrMonthDayFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getYearMonthDayOfWeekDay(J)Ljava/lang/String;
    .locals 1
    .param p0, "timeInMillis"    # J

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDayOfWeekDay(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "00C0.java:23":V
    invoke-static {v0}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method static getYearMonthDayOfWeekDay(JLjava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "timeInMillis"    # J
    .param p2, "locale"    # Ljava/util/Locale;

    nop

    invoke-static {p2}, Lcom/google/android/material/datepicker/UtcDates;->getYearMonthWeekdayDayFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isDateWithinCurrentYear(J)Z
    .locals 5
    .param p0, "timeInMillis"    # J

    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
