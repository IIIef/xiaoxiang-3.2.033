.class public final enum Lu/aly/au$e;
.super Ljava/lang/Enum;
.source "DeviceInfo.java"

# interfaces
.implements Lu/aly/cg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu/aly/au$e;",
        ">;",
        "Lu/aly/cg;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/au$e;

.field public static final enum b:Lu/aly/au$e;

.field public static final enum c:Lu/aly/au$e;

.field public static final enum d:Lu/aly/au$e;

.field public static final enum e:Lu/aly/au$e;

.field public static final enum f:Lu/aly/au$e;

.field public static final enum g:Lu/aly/au$e;

.field public static final enum h:Lu/aly/au$e;

.field public static final enum i:Lu/aly/au$e;

.field public static final enum j:Lu/aly/au$e;

.field public static final enum k:Lu/aly/au$e;

.field public static final enum l:Lu/aly/au$e;

.field public static final enum m:Lu/aly/au$e;

.field public static final enum n:Lu/aly/au$e;

.field public static final enum o:Lu/aly/au$e;

.field public static final enum p:Lu/aly/au$e;

.field public static final enum q:Lu/aly/au$e;

.field public static final enum r:Lu/aly/au$e;

.field private static final s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lu/aly/au$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic v:[Lu/aly/au$e;


# instance fields
.field private final t:S

.field private final u:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 96
    new-instance v0, Lu/aly/au$e;

    const-string v1, "DEVICE_ID"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "device_id"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/au$e;->a:Lu/aly/au$e;

    new-instance v1, Lu/aly/au$e;

    const-string v4, "IDMD5"

    const/4 v5, 0x2

    const-string v6, "idmd5"

    invoke-direct {v1, v4, v3, v5, v6}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v1, Lu/aly/au$e;->b:Lu/aly/au$e;

    new-instance v4, Lu/aly/au$e;

    const-string v6, "MAC_ADDRESS"

    const/4 v7, 0x3

    const-string v8, "mac_address"

    invoke-direct {v4, v6, v5, v7, v8}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v4, Lu/aly/au$e;->c:Lu/aly/au$e;

    .line 97
    new-instance v6, Lu/aly/au$e;

    const-string v8, "OPEN_UDID"

    const/4 v9, 0x4

    const-string v10, "open_udid"

    invoke-direct {v6, v8, v7, v9, v10}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v6, Lu/aly/au$e;->d:Lu/aly/au$e;

    new-instance v8, Lu/aly/au$e;

    const-string v10, "MODEL"

    const/4 v11, 0x5

    const-string v12, "model"

    invoke-direct {v8, v10, v9, v11, v12}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v8, Lu/aly/au$e;->e:Lu/aly/au$e;

    new-instance v10, Lu/aly/au$e;

    const-string v12, "CPU"

    const/4 v13, 0x6

    const-string v14, "cpu"

    invoke-direct {v10, v12, v11, v13, v14}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v10, Lu/aly/au$e;->f:Lu/aly/au$e;

    .line 98
    new-instance v12, Lu/aly/au$e;

    const-string v14, "OS"

    const/4 v15, 0x7

    const-string v11, "os"

    invoke-direct {v12, v14, v13, v15, v11}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v12, Lu/aly/au$e;->g:Lu/aly/au$e;

    new-instance v11, Lu/aly/au$e;

    const-string v14, "OS_VERSION"

    const/16 v13, 0x8

    const-string v9, "os_version"

    invoke-direct {v11, v14, v15, v13, v9}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v11, Lu/aly/au$e;->h:Lu/aly/au$e;

    new-instance v9, Lu/aly/au$e;

    const-string v14, "RESOLUTION"

    const/16 v15, 0x9

    const-string v7, "resolution"

    invoke-direct {v9, v14, v13, v15, v7}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v9, Lu/aly/au$e;->i:Lu/aly/au$e;

    .line 99
    new-instance v7, Lu/aly/au$e;

    const-string v14, "IS_JAILBROKEN"

    const/16 v13, 0xa

    const-string v5, "is_jailbroken"

    invoke-direct {v7, v14, v15, v13, v5}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v7, Lu/aly/au$e;->j:Lu/aly/au$e;

    new-instance v5, Lu/aly/au$e;

    const-string v14, "IS_PIRATED"

    const/16 v15, 0xb

    const-string v3, "is_pirated"

    invoke-direct {v5, v14, v13, v15, v3}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v5, Lu/aly/au$e;->k:Lu/aly/au$e;

    .line 100
    new-instance v3, Lu/aly/au$e;

    const-string v14, "DEVICE_BOARD"

    const/16 v13, 0xc

    const-string v2, "device_board"

    invoke-direct {v3, v14, v15, v13, v2}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v3, Lu/aly/au$e;->l:Lu/aly/au$e;

    new-instance v2, Lu/aly/au$e;

    const-string v14, "DEVICE_BRAND"

    const/16 v15, 0xd

    move-object/from16 v16, v3

    const-string v3, "device_brand"

    invoke-direct {v2, v14, v13, v15, v3}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v2, Lu/aly/au$e;->m:Lu/aly/au$e;

    .line 101
    new-instance v3, Lu/aly/au$e;

    const-string v14, "DEVICE_MANUTIME"

    const/16 v13, 0xe

    move-object/from16 v17, v2

    const-string v2, "device_manutime"

    invoke-direct {v3, v14, v15, v13, v2}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v3, Lu/aly/au$e;->n:Lu/aly/au$e;

    .line 102
    new-instance v2, Lu/aly/au$e;

    const-string v14, "DEVICE_MANUFACTURER"

    const/16 v15, 0xf

    move-object/from16 v18, v3

    const-string v3, "device_manufacturer"

    invoke-direct {v2, v14, v13, v15, v3}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v2, Lu/aly/au$e;->o:Lu/aly/au$e;

    .line 103
    new-instance v3, Lu/aly/au$e;

    const-string v14, "DEVICE_MANUID"

    const/16 v13, 0x10

    move-object/from16 v19, v2

    const-string v2, "device_manuid"

    invoke-direct {v3, v14, v15, v13, v2}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v3, Lu/aly/au$e;->p:Lu/aly/au$e;

    .line 104
    new-instance v2, Lu/aly/au$e;

    const-string v14, "DEVICE_NAME"

    const/16 v15, 0x11

    move-object/from16 v20, v3

    const-string v3, "device_name"

    invoke-direct {v2, v14, v13, v15, v3}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v2, Lu/aly/au$e;->q:Lu/aly/au$e;

    .line 105
    new-instance v3, Lu/aly/au$e;

    const-string v14, "WP_DEVICE"

    const/16 v13, 0x12

    move-object/from16 v21, v2

    const-string v2, "wp_device"

    invoke-direct {v3, v14, v15, v13, v2}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v3, Lu/aly/au$e;->r:Lu/aly/au$e;

    new-array v2, v13, [Lu/aly/au$e;

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

    const/16 v0, 0xb

    aput-object v16, v2, v0

    const/16 v0, 0xc

    aput-object v17, v2, v0

    const/16 v0, 0xd

    aput-object v18, v2, v0

    const/16 v0, 0xe

    aput-object v19, v2, v0

    const/16 v0, 0xf

    aput-object v20, v2, v0

    const/16 v0, 0x10

    aput-object v21, v2, v0

    aput-object v3, v2, v15

    .line 95
    sput-object v2, Lu/aly/au$e;->v:[Lu/aly/au$e;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/au$e;->s:Ljava/util/Map;

    .line 111
    const-class v0, Lu/aly/au$e;

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

    check-cast v1, Lu/aly/au$e;

    .line 112
    sget-object v2, Lu/aly/au$e;->s:Ljava/util/Map;

    invoke-virtual {v1}, Lu/aly/au$e;->b()Ljava/lang/String;

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

    .line 185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 186
    iput-short p3, p0, Lu/aly/au$e;->t:S

    .line 187
    iput-object p4, p0, Lu/aly/au$e;->u:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lu/aly/au$e;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 157
    :pswitch_0
    sget-object p0, Lu/aly/au$e;->r:Lu/aly/au$e;

    return-object p0

    .line 155
    :pswitch_1
    sget-object p0, Lu/aly/au$e;->q:Lu/aly/au$e;

    return-object p0

    .line 153
    :pswitch_2
    sget-object p0, Lu/aly/au$e;->p:Lu/aly/au$e;

    return-object p0

    .line 151
    :pswitch_3
    sget-object p0, Lu/aly/au$e;->o:Lu/aly/au$e;

    return-object p0

    .line 149
    :pswitch_4
    sget-object p0, Lu/aly/au$e;->n:Lu/aly/au$e;

    return-object p0

    .line 147
    :pswitch_5
    sget-object p0, Lu/aly/au$e;->m:Lu/aly/au$e;

    return-object p0

    .line 145
    :pswitch_6
    sget-object p0, Lu/aly/au$e;->l:Lu/aly/au$e;

    return-object p0

    .line 143
    :pswitch_7
    sget-object p0, Lu/aly/au$e;->k:Lu/aly/au$e;

    return-object p0

    .line 141
    :pswitch_8
    sget-object p0, Lu/aly/au$e;->j:Lu/aly/au$e;

    return-object p0

    .line 139
    :pswitch_9
    sget-object p0, Lu/aly/au$e;->i:Lu/aly/au$e;

    return-object p0

    .line 137
    :pswitch_a
    sget-object p0, Lu/aly/au$e;->h:Lu/aly/au$e;

    return-object p0

    .line 135
    :pswitch_b
    sget-object p0, Lu/aly/au$e;->g:Lu/aly/au$e;

    return-object p0

    .line 133
    :pswitch_c
    sget-object p0, Lu/aly/au$e;->f:Lu/aly/au$e;

    return-object p0

    .line 131
    :pswitch_d
    sget-object p0, Lu/aly/au$e;->e:Lu/aly/au$e;

    return-object p0

    .line 129
    :pswitch_e
    sget-object p0, Lu/aly/au$e;->d:Lu/aly/au$e;

    return-object p0

    .line 127
    :pswitch_f
    sget-object p0, Lu/aly/au$e;->c:Lu/aly/au$e;

    return-object p0

    .line 125
    :pswitch_10
    sget-object p0, Lu/aly/au$e;->b:Lu/aly/au$e;

    return-object p0

    .line 123
    :pswitch_11
    sget-object p0, Lu/aly/au$e;->a:Lu/aly/au$e;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method public static a(Ljava/lang/String;)Lu/aly/au$e;
    .locals 1

    .line 179
    sget-object v0, Lu/aly/au$e;->s:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu/aly/au$e;

    return-object p0
.end method

.method public static b(I)Lu/aly/au$e;
    .locals 3

    .line 168
    invoke-static {p0}, Lu/aly/au$e;->a(I)Lu/aly/au$e;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 170
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

.method public static valueOf(Ljava/lang/String;)Lu/aly/au$e;
    .locals 1

    .line 95
    const-class v0, Lu/aly/au$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/aly/au$e;

    return-object p0
.end method

.method public static values()[Lu/aly/au$e;
    .locals 1

    .line 95
    sget-object v0, Lu/aly/au$e;->v:[Lu/aly/au$e;

    invoke-virtual {v0}, [Lu/aly/au$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/au$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .line 191
    iget-short v0, p0, Lu/aly/au$e;->t:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lu/aly/au$e;->u:Ljava/lang/String;

    return-object v0
.end method
