.class public Lcom/jiabaida/little_elephant/util/RxTimeTool;
.super Ljava/lang/Object;
.source "RxTimeTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;
    }
.end annotation


# static fields
.field public static final DAY:I = 0x5265c00

.field public static final DEFAULT_SDF:Ljava/text/SimpleDateFormat;

.field public static final HOUR:I = 0x36ee80

.field public static final MIN:I = 0xea60

.field public static final MSEC:I = 0x1

.field public static final SEC:I = 0x3e8

.field private static formatDate:Ljava/text/SimpleDateFormat;

.field private static formatDateTime:Ljava/text/SimpleDateFormat;

.field public static final formatDateTime_HHMM:Ljava/text/SimpleDateFormat;

.field public static final formatDate_HHMM:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 178
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/jiabaida/little_elephant/util/RxTimeTool;->DEFAULT_SDF:Ljava/text/SimpleDateFormat;

    .line 179
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/jiabaida/little_elephant/util/RxTimeTool;->formatDate:Ljava/text/SimpleDateFormat;

    .line 180
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/jiabaida/little_elephant/util/RxTimeTool;->formatDateTime:Ljava/text/SimpleDateFormat;

    .line 181
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "HH:mm"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/jiabaida/little_elephant/util/RxTimeTool;->formatDateTime_HHMM:Ljava/text/SimpleDateFormat;

    .line 182
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyyMMddHHmm"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/jiabaida/little_elephant/util/RxTimeTool;->formatDate_HHMM:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Date2Timestamp(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 602
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static date2Milliseconds(Ljava/util/Date;)J
    .locals 2

    .line 310
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static date2String(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 288
    sget-object v0, Lcom/jiabaida/little_elephant/util/RxTimeTool;->DEFAULT_SDF:Ljava/text/SimpleDateFormat;

    invoke-static {p0, v0}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->date2String(Ljava/util/Date;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static date2String(Ljava/util/Date;Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 0

    .line 300
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatSeconds(Ljava/lang/String;)J
    .locals 4

    .line 714
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT+0"

    .line 715
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const-wide/16 v1, 0x0

    .line 719
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 720
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-string p0, "\u65f6\u95f4\u6233"

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jiabaida/little_elephant/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 724
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    return-wide v1
.end method

.method public static formatTime(J)Ljava/lang/String;
    .locals 2

    .line 699
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT+0"

    .line 700
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 701
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static friendlyTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    .line 797
    invoke-static/range {p0 .. p0}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->parseDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Unknown"

    return-object v0

    .line 802
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 805
    sget-object v2, Lcom/jiabaida/little_elephant/util/RxTimeTool;->formatDate:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 806
    sget-object v3, Lcom/jiabaida/little_elephant/util/RxTimeTool;->formatDate:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 807
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "\u5206\u949f\u524d"

    const-wide/16 v4, 0x1

    const-wide/32 v6, 0xea60

    const-string v8, "\u5c0f\u65f6\u524d"

    const-wide/32 v9, 0x36ee80

    if-eqz v2, :cond_2

    .line 808
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    sub-long/2addr v11, v13

    div-long/2addr v11, v9

    long-to-int v2, v11

    if-nez v2, :cond_1

    .line 810
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 811
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v8, v0

    div-long/2addr v8, v6

    .line 810
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 814
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 819
    :cond_2
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    const-wide/32 v13, 0x5265c00

    div-long/2addr v11, v13

    .line 820
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    div-long/2addr v15, v13

    sub-long v11, v15, v11

    long-to-int v2, v11

    if-nez v2, :cond_4

    .line 823
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    sub-long/2addr v11, v13

    div-long/2addr v11, v9

    long-to-int v2, v11

    if-nez v2, :cond_3

    .line 825
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 826
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v8, v0

    div-long/2addr v8, v6

    .line 825
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 829
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    if-ne v2, v1, :cond_5

    const-string v0, "\u6628\u5929"

    goto :goto_1

    :cond_5
    const/4 v1, 0x2

    if-ne v2, v1, :cond_6

    const-string v0, "\u524d\u5929"

    goto :goto_1

    :cond_6
    const/4 v3, 0x5

    if-le v2, v1, :cond_7

    if-gt v2, v3, :cond_7

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u5929\u524d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    if-le v2, v3, :cond_8

    .line 838
    sget-object v1, Lcom/jiabaida/little_elephant/util/RxTimeTool;->formatDate:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public static generateTime(JZ)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x3e8

    .line 869
    div-long/2addr p0, v0

    long-to-int p1, p0

    .line 871
    rem-int/lit8 p0, p1, 0x3c

    .line 872
    div-int/lit8 v0, p1, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    .line 873
    div-int/lit16 p1, p1, 0xe10

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p2, :cond_0

    .line 876
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v3

    const-string p0, "%02d:%02d:%02d"

    invoke-static {p2, p0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 878
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v1

    const-string p0, "%02d:%02d"

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateTimeDuration(Ljava/lang/String;)I
    .locals 5

    .line 889
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "\uff1a"

    if-nez v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 890
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 891
    array-length v2, v0

    if-nez v2, :cond_2

    .line 892
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_7

    .line 894
    array-length p0, v0

    if-nez p0, :cond_3

    goto :goto_2

    .line 900
    :cond_3
    array-length p0, v0

    if-lez p0, :cond_4

    .line 901
    aget-object p0, v0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    .line 902
    :goto_0
    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    .line 903
    aget-object v2, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 904
    :goto_1
    array-length v3, v0

    const/4 v4, 0x2

    if-le v3, v4, :cond_6

    .line 905
    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_6
    mul-int/lit16 p0, p0, 0xe10

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr p0, v2

    add-int/2addr v1, p0

    goto :goto_3

    :cond_7
    :goto_2
    return v1

    :cond_8
    const-string p0, "---rxTimeTool:"

    const-string v0, "\u65f6\u95f4\u683c\u5f0f\u6709\u8bef"

    .line 908
    invoke-static {p0, v0}, Lcom/jiabaida/little_elephant/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return v1
.end method

.method public static getCurTimeDate()Ljava/util/Date;
    .locals 1

    .line 472
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method public static getCurTimeMills()J
    .locals 2

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurTimeString()Ljava/lang/String;
    .locals 1

    .line 451
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->date2String(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurTimeString(Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 1

    .line 462
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0, p0}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->date2String(Ljava/util/Date;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentDateTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 645
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p0, v0}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->simpleDateFormat(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 658
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->stringToInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v1, p0

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->simpleDateFormat(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDaysByYearMonth(II)I
    .locals 2

    .line 733
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 734
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr p1, v1

    const/4 p0, 0x2

    .line 735
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x5

    .line 736
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, -0x1

    .line 737
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->roll(II)V

    .line 738
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static getIntervalByNow(Ljava/lang/String;Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;)J
    .locals 1

    .line 490
    sget-object v0, Lcom/jiabaida/little_elephant/util/RxTimeTool;->DEFAULT_SDF:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1, v0}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->getIntervalByNow(Ljava/lang/String;Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;Ljava/text/SimpleDateFormat;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getIntervalByNow(Ljava/lang/String;Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;Ljava/text/SimpleDateFormat;)J
    .locals 1

    .line 509
    invoke-static {}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->getCurTimeString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->getIntervalTime(Ljava/lang/String;Ljava/lang/String;Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;Ljava/text/SimpleDateFormat;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getIntervalByNow(Ljava/util/Date;Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;)J
    .locals 1

    .line 565
    invoke-static {}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->getCurTimeDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->getIntervalTime(Ljava/util/Date;Ljava/util/Date;Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getIntervalByNow_NO_ABS(Ljava/lang/String;Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;)J
    .locals 1

    .line 527
    sget-object v0, Lcom/jiabaida/little_elephant/util/RxTimeTool;->DEFAULT_SDF:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1, v0}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->getIntervalByNow_NO_ABS(Ljava/lang/String;Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;Ljava/text/SimpleDateFormat;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getIntervalByNow_NO_ABS(Ljava/lang/String;Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;Ljava/text/SimpleDateFormat;)J
    .locals 4

    .line 546
    invoke-static {p0, p2}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->string2Milliseconds(Ljava/lang/String;Ljava/text/SimpleDateFormat;)J

    move-result-wide v0

    .line 547
    invoke-static {}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->getCurTimeString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->string2Milliseconds(Ljava/lang/String;Ljava/text/SimpleDateFormat;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 546
    invoke-static {v0, v1, p1}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->milliseconds2Unit(JLcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getIntervalTime(Ljava/lang/String;Ljava/lang/String;Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;)J
    .locals 1

    .line 391
    sget-object v0, Lcom/jiabaida/little_elephant/util/RxTimeTool;->DEFAULT_SDF:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1, p2, v0}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->getIntervalTime(Ljava/lang/String;Ljava/lang/String;Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;Ljava/text/SimpleDateFormat;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getIntervalTime(Ljava/lang/String;Ljava/lang/String;Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;Ljava/text/SimpleDateFormat;)J
    .locals 2

    .line 411
    invoke-static {p0, p3}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->string2Milliseconds(Ljava/lang/String;Ljava/text/SimpleDateFormat;)J

    move-result-wide v0

    .line 412
    invoke-static {p1, p3}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->string2Milliseconds(Ljava/lang/String;Ljava/text/SimpleDateFormat;)J

    move-result-wide p0

    sub-long/2addr v0, p0

    .line 411
    invoke-static {v0, v1, p2}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->milliseconds2Unit(JLcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getIntervalTime(Ljava/util/Date;Ljava/util/Date;Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;)J
    .locals 2

    .line 431
    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->date2Milliseconds(Ljava/util/Date;)J

    move-result-wide v0

    .line 432
    invoke-static {p0}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->date2Milliseconds(Ljava/util/Date;)J

    move-result-wide p0

    sub-long/2addr v0, p0

    .line 431
    invoke-static {v0, v1, p2}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->milliseconds2Unit(JLcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getWeek(Ljava/util/Date;)Ljava/lang/String;
    .locals 7

    const-string v0, "\u5468\u65e5"

    const-string v1, "\u5468\u4e00"

    const-string v2, "\u5468\u4e8c"

    const-string v3, "\u5468\u4e09"

    const-string v4, "\u5468\u56db"

    const-string v5, "\u5468\u4e94"

    const-string v6, "\u5468\u516d"

    .line 851
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 852
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 853
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x7

    .line 854
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-gez p0, :cond_0

    const/4 p0, 0x0

    .line 858
    :cond_0
    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getYestoryDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 686
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, -0x1

    .line 687
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 688
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->simpleDateFormat(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isLeapYear(I)Z
    .locals 1

    .line 575
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static milliseconds2Date(J)Ljava/util/Date;
    .locals 1

    .line 320
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static milliseconds2String(J)Ljava/lang/String;
    .locals 1

    .line 214
    sget-object v0, Lcom/jiabaida/little_elephant/util/RxTimeTool;->DEFAULT_SDF:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1, v0}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->milliseconds2String(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static milliseconds2String(JLjava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 1

    .line 226
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static milliseconds2Unit(JLcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;)J
    .locals 2

    .line 337
    sget-object v0, Lcom/jiabaida/little_elephant/util/RxTimeTool$1;->$SwitchMap$com$jiabaida$little_elephant$util$RxTimeTool$TimeUnit:[I

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    const-wide/32 v0, 0x5265c00

    .line 347
    div-long/2addr p0, v0

    return-wide p0

    :cond_1
    const-wide/32 v0, 0x36ee80

    .line 345
    div-long/2addr p0, v0

    return-wide p0

    :cond_2
    const-wide/32 v0, 0xea60

    .line 343
    div-long/2addr p0, v0

    return-wide p0

    :cond_3
    const-wide/16 v0, 0x3e8

    .line 341
    div-long/2addr p0, v0

    return-wide p0

    :cond_4
    const-wide/16 v0, 0x1

    .line 339
    div-long/2addr p0, v0

    return-wide p0
.end method

.method private static parseDateTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 784
    :try_start_0
    sget-object v0, Lcom/jiabaida/little_elephant/util/RxTimeTool;->formatDateTime:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 786
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static simpleDateFormat(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 586
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "yyyy-MM-dd HH:mm:ss"

    .line 589
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static string2Date(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 265
    sget-object v0, Lcom/jiabaida/little_elephant/util/RxTimeTool;->DEFAULT_SDF:Ljava/text/SimpleDateFormat;

    invoke-static {p0, v0}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->string2Date(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 614
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 617
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 619
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static string2Date(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;
    .locals 1

    .line 277
    new-instance v0, Ljava/util/Date;

    invoke-static {p0, p1}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->string2Milliseconds(Ljava/lang/String;Ljava/text/SimpleDateFormat;)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static string2Milliseconds(Ljava/lang/String;)J
    .locals 2

    .line 237
    sget-object v0, Lcom/jiabaida/little_elephant/util/RxTimeTool;->DEFAULT_SDF:Ljava/text/SimpleDateFormat;

    invoke-static {p0, v0}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->string2Milliseconds(Ljava/lang/String;Ljava/text/SimpleDateFormat;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static string2Milliseconds(Ljava/lang/String;Ljava/text/SimpleDateFormat;)J
    .locals 0

    .line 250
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 252
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static string2Timestamp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 632
    invoke-static {p0, p1}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 633
    invoke-static {p0}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->Date2Timestamp(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringForWeek(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 750
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 751
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 752
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x7

    .line 753
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return p0

    .line 756
    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr p0, v2

    return p0
.end method

.method public static stringForWeek(Ljava/lang/String;Ljava/text/SimpleDateFormat;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 768
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 769
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x7

    .line 770
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    return p0

    .line 773
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr p0, v1

    return p0
.end method

.method public static stringToInt(Ljava/lang/String;)I
    .locals 2

    .line 668
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 672
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method
