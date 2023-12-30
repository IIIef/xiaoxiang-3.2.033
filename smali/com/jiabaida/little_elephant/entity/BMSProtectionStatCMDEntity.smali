.class public Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;
.super Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
.source "BMSProtectionStatCMDEntity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.entity.BMSProtectionStatCMDEntity"

.field private static final cmd:C = '\u00aa'

.field private static final cmdContent:[B

.field private static final rwMode:I = 0xa5


# instance fields
.field private protectItems:[Ljava/lang/String;

.field private protectItems_2:[Ljava/lang/String;

.field private protectionStatList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/KeyValEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 21
    sput-object v0, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->cmdContent:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 25

    move-object/from16 v0, p0

    .line 38
    sget-object v1, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->cmdContent:[B

    const/16 v2, 0xaa

    const/16 v3, 0xa5

    invoke-direct {v0, v2, v1, v3}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>(C[BI)V

    const/16 v1, 0xb

    new-array v2, v1, [Ljava/lang/String;

    const v3, 0x7f0d00b7

    .line 23
    invoke-static {v3}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const v4, 0x7f0d0050

    .line 24
    invoke-static {v4}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v2, v7

    const v6, 0x7f0d005f

    invoke-static {v6}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v2, v9

    const v8, 0x7f0d0042

    .line 25
    invoke-static {v8}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v2, v11

    const v10, 0x7f0d0045

    invoke-static {v10}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x4

    aput-object v12, v2, v13

    const v12, 0x7f0d004f

    .line 26
    invoke-static {v12}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x5

    aput-object v14, v2, v15

    const v14, 0x7f0d0051

    invoke-static {v14}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x6

    aput-object v16, v2, v17

    const v16, 0x7f0d005e

    .line 27
    invoke-static/range {v16 .. v16}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x7

    aput-object v18, v2, v19

    const v18, 0x7f0d0060

    invoke-static/range {v18 .. v18}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x8

    aput-object v20, v2, v21

    const v20, 0x7f0d009a

    .line 28
    invoke-static/range {v20 .. v20}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x9

    aput-object v22, v2, v23

    const v22, 0x7f0d009c

    invoke-static/range {v22 .. v22}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0xa

    aput-object v22, v2, v24

    iput-object v2, v0, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->protectItems:[Ljava/lang/String;

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    .line 29
    invoke-static {v3}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 30
    invoke-static {v4}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v6}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    .line 31
    invoke-static {v8}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v10}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    .line 32
    invoke-static {v12}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v15

    invoke-static {v14}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v17

    .line 33
    invoke-static/range {v16 .. v16}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v19

    invoke-static/range {v18 .. v18}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v21

    .line 34
    invoke-static/range {v20 .. v20}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v23

    const v3, 0x7f0d009c

    invoke-static {v3}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v24

    const v3, 0x7f0d00bc

    .line 35
    invoke-static {v3}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iput-object v2, v0, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->protectItems_2:[Ljava/lang/String;

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->protectionStatList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public formatDatas([B)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/KeyValEntity;",
            ">;"
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->getContent([B)[B

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->protectionStatList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x16

    if-le v0, v2, :cond_0

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->protectItems_2:[Ljava/lang/String;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    if-ge v1, v0, :cond_1

    .line 57
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    .line 58
    new-instance v2, Lcom/jiabaida/little_elephant/entity/KeyValEntity;

    iget-object v3, p0, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->protectItems_2:[Ljava/lang/String;

    div-int/lit8 v4, v1, 0x2

    aget-object v3, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/jiabaida/little_elephant/entity/KeyValEntity;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->protectionStatList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 62
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->protectItems:[Ljava/lang/String;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    if-ge v1, v0, :cond_1

    .line 63
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    .line 64
    new-instance v2, Lcom/jiabaida/little_elephant/entity/KeyValEntity;

    iget-object v3, p0, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->protectItems:[Ljava/lang/String;

    div-int/lit8 v4, v1, 0x2

    aget-object v3, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/jiabaida/little_elephant/entity/KeyValEntity;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->protectionStatList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->protectionStatList:Ljava/util/List;

    return-object p1
.end method

.method public formatParams([B)Z
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->formatDatas([B)Ljava/util/List;

    const/4 p1, 0x1

    return p1
.end method

.method public getProtectionStatList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/KeyValEntity;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->protectionStatList:Ljava/util/List;

    return-object v0
.end method

.method public setProtectItems([Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->protectItems:[Ljava/lang/String;

    return-void
.end method
