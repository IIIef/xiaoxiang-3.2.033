.class public final enum Lu/aly/ar$e;
.super Ljava/lang/Enum;
.source "AppInfo.java"

# interfaces
.implements Lu/aly/cg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu/aly/ar$e;",
        ">;",
        "Lu/aly/cg;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/ar$e;

.field public static final enum b:Lu/aly/ar$e;

.field public static final enum c:Lu/aly/ar$e;

.field public static final enum d:Lu/aly/ar$e;

.field public static final enum e:Lu/aly/ar$e;

.field public static final enum f:Lu/aly/ar$e;

.field public static final enum g:Lu/aly/ar$e;

.field public static final enum h:Lu/aly/ar$e;

.field public static final enum i:Lu/aly/ar$e;

.field public static final enum j:Lu/aly/ar$e;

.field public static final enum k:Lu/aly/ar$e;

.field private static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lu/aly/ar$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic o:[Lu/aly/ar$e;


# instance fields
.field private final m:S

.field private final n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 78
    new-instance v0, Lu/aly/ar$e;

    const-string v1, "KEY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "key"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->a:Lu/aly/ar$e;

    new-instance v1, Lu/aly/ar$e;

    const-string v4, "VERSION"

    const/4 v5, 0x2

    const-string v6, "version"

    invoke-direct {v1, v4, v3, v5, v6}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v1, Lu/aly/ar$e;->b:Lu/aly/ar$e;

    new-instance v4, Lu/aly/ar$e;

    const-string v6, "VERSION_INDEX"

    const/4 v7, 0x3

    const-string v8, "version_index"

    invoke-direct {v4, v6, v5, v7, v8}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v4, Lu/aly/ar$e;->c:Lu/aly/ar$e;

    .line 79
    new-instance v6, Lu/aly/ar$e;

    const-string v8, "PACKAGE_NAME"

    const/4 v9, 0x4

    const-string v10, "package_name"

    invoke-direct {v6, v8, v7, v9, v10}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v6, Lu/aly/ar$e;->d:Lu/aly/ar$e;

    .line 84
    new-instance v8, Lu/aly/ar$e;

    const-string v10, "SDK_TYPE"

    const/4 v11, 0x5

    const-string v12, "sdk_type"

    invoke-direct {v8, v10, v9, v11, v12}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v8, Lu/aly/ar$e;->e:Lu/aly/ar$e;

    new-instance v10, Lu/aly/ar$e;

    const-string v12, "SDK_VERSION"

    const/4 v13, 0x6

    const-string v14, "sdk_version"

    invoke-direct {v10, v12, v11, v13, v14}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v10, Lu/aly/ar$e;->f:Lu/aly/ar$e;

    new-instance v12, Lu/aly/ar$e;

    const-string v14, "CHANNEL"

    const/4 v15, 0x7

    const-string v11, "channel"

    invoke-direct {v12, v14, v13, v15, v11}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v12, Lu/aly/ar$e;->g:Lu/aly/ar$e;

    .line 85
    new-instance v11, Lu/aly/ar$e;

    const-string v14, "WRAPPER_TYPE"

    const/16 v13, 0x8

    const-string v9, "wrapper_type"

    invoke-direct {v11, v14, v15, v13, v9}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v11, Lu/aly/ar$e;->h:Lu/aly/ar$e;

    new-instance v9, Lu/aly/ar$e;

    const-string v14, "WRAPPER_VERSION"

    const/16 v15, 0x9

    const-string v7, "wrapper_version"

    invoke-direct {v9, v14, v13, v15, v7}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v9, Lu/aly/ar$e;->i:Lu/aly/ar$e;

    .line 86
    new-instance v7, Lu/aly/ar$e;

    const-string v14, "VERTICAL_TYPE"

    const/16 v13, 0xa

    const-string v5, "vertical_type"

    invoke-direct {v7, v14, v15, v13, v5}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v7, Lu/aly/ar$e;->j:Lu/aly/ar$e;

    new-instance v5, Lu/aly/ar$e;

    const-string v14, "APP_SIGNATURE"

    const/16 v15, 0xb

    const-string v3, "app_signature"

    invoke-direct {v5, v14, v13, v15, v3}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v5, Lu/aly/ar$e;->k:Lu/aly/ar$e;

    new-array v3, v15, [Lu/aly/ar$e;

    aput-object v0, v3, v2

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v6, v3, v0

    const/4 v0, 0x4

    aput-object v8, v3, v0

    const/4 v0, 0x5

    aput-object v10, v3, v0

    const/4 v0, 0x6

    aput-object v12, v3, v0

    const/4 v0, 0x7

    aput-object v11, v3, v0

    const/16 v0, 0x8

    aput-object v9, v3, v0

    const/16 v0, 0x9

    aput-object v7, v3, v0

    aput-object v5, v3, v13

    .line 77
    sput-object v3, Lu/aly/ar$e;->o:[Lu/aly/ar$e;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ar$e;->l:Ljava/util/Map;

    .line 92
    const-class v0, Lu/aly/ar$e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/ar$e;

    .line 93
    sget-object v2, Lu/aly/ar$e;->l:Ljava/util/Map;

    invoke-virtual {v1}, Lu/aly/ar$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 153
    iput-short p3, p0, Lu/aly/ar$e;->m:S

    .line 154
    iput-object p4, p0, Lu/aly/ar$e;->n:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lu/aly/ar$e;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 124
    :pswitch_0
    sget-object p0, Lu/aly/ar$e;->k:Lu/aly/ar$e;

    return-object p0

    .line 122
    :pswitch_1
    sget-object p0, Lu/aly/ar$e;->j:Lu/aly/ar$e;

    return-object p0

    .line 120
    :pswitch_2
    sget-object p0, Lu/aly/ar$e;->i:Lu/aly/ar$e;

    return-object p0

    .line 118
    :pswitch_3
    sget-object p0, Lu/aly/ar$e;->h:Lu/aly/ar$e;

    return-object p0

    .line 116
    :pswitch_4
    sget-object p0, Lu/aly/ar$e;->g:Lu/aly/ar$e;

    return-object p0

    .line 114
    :pswitch_5
    sget-object p0, Lu/aly/ar$e;->f:Lu/aly/ar$e;

    return-object p0

    .line 112
    :pswitch_6
    sget-object p0, Lu/aly/ar$e;->e:Lu/aly/ar$e;

    return-object p0

    .line 110
    :pswitch_7
    sget-object p0, Lu/aly/ar$e;->d:Lu/aly/ar$e;

    return-object p0

    .line 108
    :pswitch_8
    sget-object p0, Lu/aly/ar$e;->c:Lu/aly/ar$e;

    return-object p0

    .line 106
    :pswitch_9
    sget-object p0, Lu/aly/ar$e;->b:Lu/aly/ar$e;

    return-object p0

    .line 104
    :pswitch_a
    sget-object p0, Lu/aly/ar$e;->a:Lu/aly/ar$e;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lu/aly/ar$e;
    .locals 1

    .line 146
    sget-object v0, Lu/aly/ar$e;->l:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu/aly/ar$e;

    return-object p0
.end method

.method public static b(I)Lu/aly/ar$e;
    .locals 3

    .line 135
    invoke-static {p0}, Lu/aly/ar$e;->a(I)Lu/aly/ar$e;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t exist!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/ar$e;
    .locals 1

    .line 77
    const-class v0, Lu/aly/ar$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/aly/ar$e;

    return-object p0
.end method

.method public static values()[Lu/aly/ar$e;
    .locals 1

    .line 77
    sget-object v0, Lu/aly/ar$e;->o:[Lu/aly/ar$e;

    invoke-virtual {v0}, [Lu/aly/ar$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/ar$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .line 158
    iget-short v0, p0, Lu/aly/ar$e;->m:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lu/aly/ar$e;->n:Ljava/lang/String;

    return-object v0
.end method
