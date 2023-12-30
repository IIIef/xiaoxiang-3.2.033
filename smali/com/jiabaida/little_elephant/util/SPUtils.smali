.class public final Lcom/jiabaida/little_elephant/util/SPUtils;
.super Ljava/lang/Object;
.source "SPUtils.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "com.telink.bluetooth.light.SharedPreferences"

.field private static final KEY_FILE:Ljava/lang/String; = "com.telink.bluetooth.light.KEY_FILE"

.field private static final SP_UTILS_MAP:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/jiabaida/little_elephant/util/SPUtils;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mSp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    sput-object v0, Lcom/jiabaida/little_elephant/util/SPUtils;->SP_UTILS_MAP:Landroidx/collection/SimpleArrayMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mSp:Landroid/content/SharedPreferences;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mSp:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.telink.bluetooth.light.SharedPreferences"

    const/4 v1, 0x0

    .line 481
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "com.telink.bluetooth.light.KEY_FILE"

    const/4 v1, 0x0

    .line 482
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance(Landroid/content/Context;)Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/jiabaida/little_elephant/util/SPUtils;
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    .line 64
    invoke-static {p0, v0, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/jiabaida/little_elephant/util/SPUtils;
    .locals 1

    const-string v0, ""

    .line 74
    invoke-static {p0, v0, p1}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/jiabaida/little_elephant/util/SPUtils;
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-static {p0, p1, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/jiabaida/little_elephant/util/SPUtils;
    .locals 2

    .line 95
    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/SPUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "MySpUtils"

    .line 96
    :cond_0
    sget-object v0, Lcom/jiabaida/little_elephant/util/SPUtils;->SP_UTILS_MAP:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/util/SPUtils;

    if-nez v1, :cond_4

    if-nez p0, :cond_2

    .line 98
    sget-object v1, Lcom/jiabaida/little_elephant/util/SPUtils;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "SharedPreferences\u5de5\u5177\u4f7f\u7528\u7684Context\u4e3anull\uff0c\u8bf7\u5148\u8c03\u7528init()\u521d\u59cb\u5316"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    .line 102
    sput-object p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mContext:Landroid/content/Context;

    .line 103
    :cond_3
    new-instance v1, Lcom/jiabaida/little_elephant/util/SPUtils;

    sget-object p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, p1, p2}, Lcom/jiabaida/little_elephant/util/SPUtils;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 104
    invoke-virtual {v0, p1, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 46
    sput-object p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static isSpace(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 469
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 470
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 450
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->clear(Z)V

    return-void
.end method

.method public clear(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 461
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 463
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 338
    invoke-virtual {p0, p1, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 291
    invoke-virtual {p0, p1, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    .line 197
    invoke-virtual {p0, p1, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, -0x1

    .line 244
    invoke-virtual {p0, p1, v0, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 150
    invoke-virtual {p0, p1, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 388
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;F)V
    .locals 1

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0, p1, p2, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;FZ)V

    return-void
.end method

.method public put(Ljava/lang/String;FZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 278
    iget-object p3, p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 280
    :cond_0
    iget-object p3, p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, p1, p2, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;IZ)V

    return-void
.end method

.method public put(Ljava/lang/String;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 184
    iget-object p3, p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 186
    :cond_0
    iget-object p3, p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;JZ)V

    return-void
.end method

.method public put(Ljava/lang/String;JZ)V
    .locals 0

    if-eqz p4, :cond_0

    .line 231
    iget-object p4, p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p4

    invoke-interface {p4, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 233
    :cond_0
    iget-object p4, p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p4

    invoke-interface {p4, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, p1, p2, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 137
    iget-object p3, p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 139
    :cond_0
    iget-object p3, p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 359
    invoke-virtual {p0, p1, p2, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Ljava/util/Set;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 374
    iget-object p3, p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 376
    :cond_0
    iget-object p3, p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 312
    invoke-virtual {p0, p1, p2, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public put(Ljava/lang/String;ZZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 325
    iget-object p3, p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 327
    :cond_0
    iget-object p3, p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 428
    invoke-virtual {p0, p1, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->remove(Ljava/lang/String;Z)V

    return-void
.end method

.method public remove(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 440
    iget-object p2, p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 442
    :cond_0
    iget-object p2, p0, Lcom/jiabaida/little_elephant/util/SPUtils;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method
