.class public final enum Lu/aly/bp$e;
.super Ljava/lang/Enum;
.source "UALogEntry.java"

# interfaces
.implements Lu/aly/cg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu/aly/bp$e;",
        ">;",
        "Lu/aly/cg;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/bp$e;

.field public static final enum b:Lu/aly/bp$e;

.field public static final enum c:Lu/aly/bp$e;

.field public static final enum d:Lu/aly/bp$e;

.field public static final enum e:Lu/aly/bp$e;

.field public static final enum f:Lu/aly/bp$e;

.field public static final enum g:Lu/aly/bp$e;

.field public static final enum h:Lu/aly/bp$e;

.field public static final enum i:Lu/aly/bp$e;

.field public static final enum j:Lu/aly/bp$e;

.field public static final enum k:Lu/aly/bp$e;

.field public static final enum l:Lu/aly/bp$e;

.field private static final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lu/aly/bp$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic p:[Lu/aly/bp$e;


# instance fields
.field private final n:S

.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 79
    new-instance v0, Lu/aly/bp$e;

    const-string v1, "CLIENT_STATS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "client_stats"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/bp$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bp$e;->a:Lu/aly/bp$e;

    new-instance v1, Lu/aly/bp$e;

    const-string v4, "APP_INFO"

    const/4 v5, 0x2

    const-string v6, "app_info"

    invoke-direct {v1, v4, v3, v5, v6}, Lu/aly/bp$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v1, Lu/aly/bp$e;->b:Lu/aly/bp$e;

    new-instance v4, Lu/aly/bp$e;

    const-string v6, "DEVICE_INFO"

    const/4 v7, 0x3

    const-string v8, "device_info"

    invoke-direct {v4, v6, v5, v7, v8}, Lu/aly/bp$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v4, Lu/aly/bp$e;->c:Lu/aly/bp$e;

    .line 80
    new-instance v6, Lu/aly/bp$e;

    const-string v8, "MISC_INFO"

    const/4 v9, 0x4

    const-string v10, "misc_info"

    invoke-direct {v6, v8, v7, v9, v10}, Lu/aly/bp$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v6, Lu/aly/bp$e;->d:Lu/aly/bp$e;

    new-instance v8, Lu/aly/bp$e;

    const-string v10, "ACTIVATE_MSG"

    const/4 v11, 0x5

    const-string v12, "activate_msg"

    invoke-direct {v8, v10, v9, v11, v12}, Lu/aly/bp$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v8, Lu/aly/bp$e;->e:Lu/aly/bp$e;

    .line 81
    new-instance v10, Lu/aly/bp$e;

    const-string v12, "INSTANT_MSGS"

    const/4 v13, 0x6

    const-string v14, "instant_msgs"

    invoke-direct {v10, v12, v11, v13, v14}, Lu/aly/bp$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v10, Lu/aly/bp$e;->f:Lu/aly/bp$e;

    new-instance v12, Lu/aly/bp$e;

    const-string v14, "SESSIONS"

    const/4 v15, 0x7

    const-string v11, "sessions"

    invoke-direct {v12, v14, v13, v15, v11}, Lu/aly/bp$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v12, Lu/aly/bp$e;->g:Lu/aly/bp$e;

    .line 82
    new-instance v11, Lu/aly/bp$e;

    const-string v14, "IMPRINT"

    const/16 v13, 0x8

    const-string v9, "imprint"

    invoke-direct {v11, v14, v15, v13, v9}, Lu/aly/bp$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v11, Lu/aly/bp$e;->h:Lu/aly/bp$e;

    new-instance v9, Lu/aly/bp$e;

    const-string v14, "ID_TRACKING"

    const/16 v15, 0x9

    const-string v7, "id_tracking"

    invoke-direct {v9, v14, v13, v15, v7}, Lu/aly/bp$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v9, Lu/aly/bp$e;->i:Lu/aly/bp$e;

    .line 83
    new-instance v7, Lu/aly/bp$e;

    const-string v14, "ACTIVE_USER"

    const/16 v13, 0xa

    const-string v5, "active_user"

    invoke-direct {v7, v14, v15, v13, v5}, Lu/aly/bp$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v7, Lu/aly/bp$e;->j:Lu/aly/bp$e;

    new-instance v5, Lu/aly/bp$e;

    const-string v14, "CONTROL_POLICY"

    const/16 v15, 0xb

    const-string v3, "control_policy"

    invoke-direct {v5, v14, v13, v15, v3}, Lu/aly/bp$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v5, Lu/aly/bp$e;->k:Lu/aly/bp$e;

    .line 84
    new-instance v3, Lu/aly/bp$e;

    const-string v14, "GROUP_INFO"

    const/16 v13, 0xc

    const-string v2, "group_info"

    invoke-direct {v3, v14, v15, v13, v2}, Lu/aly/bp$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v3, Lu/aly/bp$e;->l:Lu/aly/bp$e;

    new-array v2, v13, [Lu/aly/bp$e;

    const/4 v13, 0x0

    aput-object v0, v2, v13

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v10, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v11, v2, v0

    const/16 v0, 0x8

    aput-object v9, v2, v0

    const/16 v0, 0x9

    aput-object v7, v2, v0

    const/16 v0, 0xa

    aput-object v5, v2, v0

    aput-object v3, v2, v15

    .line 78
    sput-object v2, Lu/aly/bp$e;->p:[Lu/aly/bp$e;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bp$e;->m:Ljava/util/Map;

    .line 89
    const-class v0, Lu/aly/bp$e;

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

    check-cast v1, Lu/aly/bp$e;

    .line 90
    sget-object v2, Lu/aly/bp$e;->m:Ljava/util/Map;

    invoke-virtual {v1}, Lu/aly/bp$e;->b()Ljava/lang/String;

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

    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 152
    iput-short p3, p0, Lu/aly/bp$e;->n:S

    .line 153
    iput-object p4, p0, Lu/aly/bp$e;->o:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lu/aly/bp$e;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 123
    :pswitch_0
    sget-object p0, Lu/aly/bp$e;->l:Lu/aly/bp$e;

    return-object p0

    .line 121
    :pswitch_1
    sget-object p0, Lu/aly/bp$e;->k:Lu/aly/bp$e;

    return-object p0

    .line 119
    :pswitch_2
    sget-object p0, Lu/aly/bp$e;->j:Lu/aly/bp$e;

    return-object p0

    .line 117
    :pswitch_3
    sget-object p0, Lu/aly/bp$e;->i:Lu/aly/bp$e;

    return-object p0

    .line 115
    :pswitch_4
    sget-object p0, Lu/aly/bp$e;->h:Lu/aly/bp$e;

    return-object p0

    .line 113
    :pswitch_5
    sget-object p0, Lu/aly/bp$e;->g:Lu/aly/bp$e;

    return-object p0

    .line 111
    :pswitch_6
    sget-object p0, Lu/aly/bp$e;->f:Lu/aly/bp$e;

    return-object p0

    .line 109
    :pswitch_7
    sget-object p0, Lu/aly/bp$e;->e:Lu/aly/bp$e;

    return-object p0

    .line 107
    :pswitch_8
    sget-object p0, Lu/aly/bp$e;->d:Lu/aly/bp$e;

    return-object p0

    .line 105
    :pswitch_9
    sget-object p0, Lu/aly/bp$e;->c:Lu/aly/bp$e;

    return-object p0

    .line 103
    :pswitch_a
    sget-object p0, Lu/aly/bp$e;->b:Lu/aly/bp$e;

    return-object p0

    .line 101
    :pswitch_b
    sget-object p0, Lu/aly/bp$e;->a:Lu/aly/bp$e;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
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

.method public static a(Ljava/lang/String;)Lu/aly/bp$e;
    .locals 1

    .line 145
    sget-object v0, Lu/aly/bp$e;->m:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu/aly/bp$e;

    return-object p0
.end method

.method public static b(I)Lu/aly/bp$e;
    .locals 3

    .line 134
    invoke-static {p0}, Lu/aly/bp$e;->a(I)Lu/aly/bp$e;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 136
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

.method public static valueOf(Ljava/lang/String;)Lu/aly/bp$e;
    .locals 1

    .line 78
    const-class v0, Lu/aly/bp$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/aly/bp$e;

    return-object p0
.end method

.method public static values()[Lu/aly/bp$e;
    .locals 1

    .line 78
    sget-object v0, Lu/aly/bp$e;->p:[Lu/aly/bp$e;

    invoke-virtual {v0}, [Lu/aly/bp$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/bp$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .line 157
    iget-short v0, p0, Lu/aly/bp$e;->n:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lu/aly/bp$e;->o:Ljava/lang/String;

    return-object v0
.end method
