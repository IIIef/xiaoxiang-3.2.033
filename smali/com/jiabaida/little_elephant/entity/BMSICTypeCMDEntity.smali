.class public Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;
.super Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
.source "BMSICTypeCMDEntity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.entity.BMSICTypeCMDEntity"

.field private static final cmd:C = '\u0000'

.field private static final content:Ljava/lang/String; = "00 00"

.field private static final rwMode:I = 0xa5


# instance fields
.field private TI_hardDISOCArray_0:[I

.field private TI_hardDISOCArray_1:[I

.field private TI_hardDISOCDelayArray:[F

.field private TI_scArray_0:[I

.field private TI_scArray_1:[I

.field private TI_scDelayArray:[F

.field private icType:I

.field public ocArray:[I

.field public ocDelayArray:[F

.field public scArray:[I

.field public scDelayArray:[F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "00 00"

    .line 49
    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->hexStr2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xa5

    invoke-direct {p0, v1, v0, v2}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>(C[BI)V

    .line 28
    iput v1, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->icType:I

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 38
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->TI_hardDISOCDelayArray:[F

    const/16 v1, 0x10

    new-array v2, v1, [I

    .line 39
    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->TI_hardDISOCArray_0:[I

    new-array v1, v1, [I

    .line 41
    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->TI_hardDISOCArray_1:[I

    const/4 v1, 0x4

    new-array v1, v1, [F

    .line 43
    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->TI_scDelayArray:[F

    new-array v1, v0, [I

    .line 44
    fill-array-data v1, :array_4

    iput-object v1, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->TI_scArray_0:[I

    new-array v0, v0, [I

    .line 45
    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->TI_scArray_1:[I

    return-void

    :array_0
    .array-data 4
        0x41000000    # 8.0f
        0x41a00000    # 20.0f
        0x42200000    # 40.0f
        0x42a00000    # 80.0f
        0x43200000    # 160.0f
        0x43a00000    # 320.0f
        0x44200000    # 640.0f
        0x44a00000    # 1280.0f
    .end array-data

    :array_1
    .array-data 4
        0x8
        0xb
        0xe
        0x11
        0x13
        0x16
        0x19
        0x1c
        0x1f
        0x21
        0x24
        0x27
        0x2a
        0x2c
        0x2f
        0x32
    .end array-data

    :array_2
    .array-data 4
        0x10
        0x16
        0x1c
        0x22
        0x26
        0x2c
        0x32
        0x38
        0x3e
        0x42
        0x48
        0x4e
        0x54
        0x58
        0x5e
        0x64
    .end array-data

    :array_3
    .array-data 4
        0x428c0000    # 70.0f
        0x42c80000    # 100.0f
        0x43480000    # 200.0f
        0x43c80000    # 400.0f
    .end array-data

    :array_4
    .array-data 4
        0x16
        0x21
        0x2c
        0x38
        0x43
        0x4e
        0x59
        0x64
    .end array-data

    :array_5
    .array-data 4
        0x2c
        0x42
        0x58
        0x70
        0x86
        0x9c
        0xb2
        0xc8
    .end array-data
.end method

.method private getCurrentUnit([IF)[I
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 211
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 212
    aget v1, p1, v0

    int-to-float v1, v1

    div-float/2addr v1, p2

    float-to-int v1, v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public formatParams([B)Z
    .locals 2

    .line 54
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->getContent([B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 55
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v0, p1

    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->icType:I

    return v1
.end method

.method public getIcType()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->icType:I

    return v0
.end method

.method public setCurrentInfo(FZ)V
    .locals 9

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 61
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->TI_hardDISOCDelayArray:[F

    const/16 v1, 0x10

    new-array v2, v1, [I

    .line 62
    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->TI_hardDISOCArray_0:[I

    new-array v3, v1, [I

    .line 63
    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->TI_hardDISOCArray_1:[I

    new-array v4, v0, [I

    .line 64
    fill-array-data v4, :array_3

    iput-object v4, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->TI_scArray_0:[I

    new-array v4, v0, [I

    .line 65
    fill-array-data v4, :array_4

    iput-object v4, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->TI_scArray_1:[I

    .line 66
    iget v4, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->icType:I

    if-nez v4, :cond_2

    if-eqz p2, :cond_0

    move-object v2, v3

    .line 68
    :cond_0
    iput-object v2, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocArray:[I

    .line 69
    invoke-direct {p0, v2, p1}, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->getCurrentUnit([IF)[I

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocArray:[I

    .line 71
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->TI_hardDISOCDelayArray:[F

    iput-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocDelayArray:[F

    if-eqz p2, :cond_1

    .line 73
    iget-object p2, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->TI_scArray_1:[I

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->TI_scArray_0:[I

    :goto_0
    iput-object p2, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scArray:[I

    .line 74
    invoke-direct {p0, p2, p1}, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->getCurrentUnit([IF)[I

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scArray:[I

    .line 76
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->TI_scDelayArray:[F

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scDelayArray:[F

    goto/16 :goto_f

    :cond_2
    const/high16 p2, 0x427a0000    # 62.5f

    const/4 v2, 0x0

    const/16 v3, 0xf

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v7, :cond_8

    new-array v0, v1, [I

    .line 78
    iput-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocArray:[I

    const/4 v0, 0x0

    :goto_1
    if-gt v0, v3, :cond_4

    cmpl-float v4, p1, v2

    if-lez v4, :cond_3

    .line 81
    iget-object v4, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocArray:[I

    mul-int/lit8 v7, v0, 0xa

    add-int/2addr v7, v5

    int-to-float v7, v7

    div-float/2addr v7, p1

    float-to-int v7, v7

    aput v7, v4, v0

    goto :goto_2

    .line 83
    :cond_3
    iget-object v4, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocArray:[I

    mul-int/lit8 v7, v0, 0xa

    add-int/2addr v7, v5

    aput v7, v4, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    new-array v0, v5, [F

    .line 87
    iput-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocDelayArray:[F

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v5, :cond_5

    .line 89
    iget-object v4, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocDelayArray:[F

    add-int/lit8 v7, v0, 0x1

    mul-int/lit16 v8, v7, 0x1f4

    int-to-float v8, v8

    aput v8, v4, v0

    move v0, v7

    goto :goto_3

    :cond_5
    new-array v0, v1, [I

    .line 92
    iput-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scArray:[I

    const/4 v0, 0x0

    :goto_4
    if-gt v0, v3, :cond_7

    cmpl-float v4, p1, v2

    if-lez v4, :cond_6

    .line 95
    iget-object v4, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scArray:[I

    add-int/lit8 v5, v0, 0x1

    mul-int/lit8 v5, v5, 0x14

    int-to-float v5, v5

    div-float/2addr v5, p1

    float-to-int v5, v5

    aput v5, v4, v0

    goto :goto_5

    .line 97
    :cond_6
    iget-object v4, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scArray:[I

    add-int/lit8 v5, v0, 0x1

    mul-int/lit8 v5, v5, 0x14

    aput v5, v4, v0

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    new-array p1, v1, [F

    .line 101
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scDelayArray:[F

    :goto_6
    if-ge v6, v1, :cond_11

    .line 103
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scDelayArray:[F

    add-int/lit8 v0, v6, 0x1

    int-to-float v2, v0

    mul-float v2, v2, p2

    aput v2, p1, v6

    move v6, v0

    goto :goto_6

    :cond_8
    const/4 v8, 0x2

    if-ne v4, v8, :cond_e

    new-array v0, v1, [I

    .line 113
    iput-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocArray:[I

    const/4 v0, 0x0

    :goto_7
    if-gt v0, v3, :cond_a

    cmpl-float v4, p1, v2

    if-lez v4, :cond_9

    .line 116
    iget-object v4, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocArray:[I

    mul-int/lit8 v5, v0, 0x14

    add-int/lit8 v5, v5, 0xa

    int-to-float v5, v5

    div-float/2addr v5, p1

    float-to-int v5, v5

    aput v5, v4, v0

    goto :goto_8

    .line 118
    :cond_9
    iget-object v4, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocArray:[I

    mul-int/lit8 v5, v0, 0x14

    add-int/lit8 v5, v5, 0xa

    aput v5, v4, v0

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    new-array v0, v1, [F

    .line 122
    iput-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocDelayArray:[F

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_b

    .line 124
    iget-object v4, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocDelayArray:[F

    mul-int/lit8 v5, v0, 0x14

    add-int/lit8 v5, v5, 0xa

    int-to-float v5, v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_b
    new-array v0, v1, [I

    .line 127
    iput-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scArray:[I

    const/4 v0, 0x0

    :goto_a
    if-gt v0, v3, :cond_d

    cmpl-float v4, p1, v2

    if-lez v4, :cond_c

    .line 130
    iget-object v4, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scArray:[I

    mul-int/lit8 v5, v0, 0x28

    add-int/lit8 v5, v5, 0x14

    int-to-float v5, v5

    div-float/2addr v5, p1

    float-to-int v5, v5

    aput v5, v4, v0

    goto :goto_b

    .line 132
    :cond_c
    iget-object v4, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scArray:[I

    mul-int/lit8 v5, v0, 0x28

    add-int/lit8 v5, v5, 0x14

    aput v5, v4, v0

    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_d
    new-array p1, v1, [F

    .line 136
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scDelayArray:[F

    :goto_c
    if-ge v6, v1, :cond_11

    .line 138
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scDelayArray:[F

    int-to-float v0, v6

    mul-float v0, v0, p2

    const/high16 v2, 0x41fa0000    # 31.25f

    add-float/2addr v0, v2

    aput v0, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_e
    const/4 v2, 0x3

    if-ne v4, v2, :cond_f

    new-array p2, v1, [I

    .line 155
    fill-array-data p2, :array_5

    iput-object p2, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocArray:[I

    .line 156
    invoke-direct {p0, p2, p1}, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->getCurrentUnit([IF)[I

    move-result-object p2

    iput-object p2, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocArray:[I

    new-array p2, v1, [F

    .line 157
    fill-array-data p2, :array_6

    iput-object p2, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocDelayArray:[F

    new-array p2, v1, [I

    .line 159
    fill-array-data p2, :array_7

    iput-object p2, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scArray:[I

    .line 160
    invoke-direct {p0, p2, p1}, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->getCurrentUnit([IF)[I

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scArray:[I

    new-array p1, v1, [F

    .line 161
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scDelayArray:[F

    :goto_d
    if-ge v7, v1, :cond_11

    .line 163
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scDelayArray:[F

    const/high16 p2, 0x42800000    # 64.0f

    int-to-float v0, v7

    mul-float v0, v0, p2

    aput v0, p1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_f
    if-ne v4, v5, :cond_10

    new-array p2, v1, [I

    .line 174
    fill-array-data p2, :array_8

    iput-object p2, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocArray:[I

    .line 175
    invoke-direct {p0, p2, p1}, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->getCurrentUnit([IF)[I

    move-result-object p2

    iput-object p2, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocArray:[I

    new-array p2, v0, [F

    .line 176
    fill-array-data p2, :array_9

    iput-object p2, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocDelayArray:[F

    new-array p2, v1, [I

    .line 178
    fill-array-data p2, :array_a

    iput-object p2, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scArray:[I

    .line 179
    invoke-direct {p0, p2, p1}, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->getCurrentUnit([IF)[I

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scArray:[I

    const/4 p1, 0x4

    new-array p1, p1, [F

    .line 181
    fill-array-data p1, :array_b

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scDelayArray:[F

    goto :goto_f

    :cond_10
    new-array v0, v1, [I

    .line 192
    fill-array-data v0, :array_c

    iput-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocArray:[I

    .line 193
    invoke-direct {p0, v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->getCurrentUnit([IF)[I

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocArray:[I

    new-array v0, v1, [F

    .line 194
    fill-array-data v0, :array_d

    iput-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocDelayArray:[F

    new-array v0, v1, [I

    .line 195
    fill-array-data v0, :array_e

    iput-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scArray:[I

    .line 196
    invoke-direct {p0, v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->getCurrentUnit([IF)[I

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scArray:[I

    new-array p1, v1, [F

    .line 197
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scDelayArray:[F

    :goto_e
    if-ge v7, v1, :cond_11

    .line 200
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scDelayArray:[F

    int-to-float v0, v7

    mul-float v0, v0, p2

    aput v0, p1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_11
    :goto_f
    return-void

    nop

    :array_0
    .array-data 4
        0x41000000    # 8.0f
        0x41a00000    # 20.0f
        0x42200000    # 40.0f
        0x42a00000    # 80.0f
        0x43200000    # 160.0f
        0x43a00000    # 320.0f
        0x44200000    # 640.0f
        0x44a00000    # 1280.0f
    .end array-data

    :array_1
    .array-data 4
        0x8
        0xb
        0xe
        0x11
        0x13
        0x16
        0x19
        0x1c
        0x1f
        0x21
        0x24
        0x27
        0x2a
        0x2c
        0x2f
        0x32
    .end array-data

    :array_2
    .array-data 4
        0x10
        0x16
        0x1c
        0x22
        0x26
        0x2c
        0x32
        0x38
        0x3e
        0x42
        0x48
        0x4e
        0x54
        0x58
        0x5e
        0x64
    .end array-data

    :array_3
    .array-data 4
        0x16
        0x21
        0x2c
        0x38
        0x43
        0x4e
        0x59
        0x64
    .end array-data

    :array_4
    .array-data 4
        0x2c
        0x42
        0x58
        0x70
        0x86
        0x9c
        0xb2
        0xc8
    .end array-data

    :array_5
    .array-data 4
        0x14
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x50
        0x5a
        0x64
        0x6e
        0x78
        0x82
        0x8c
        0xa0
        0xb4
        0xc8
    .end array-data

    :array_6
    .array-data 4
        0x42480000    # 50.0f
        0x42c80000    # 100.0f
        0x43480000    # 200.0f
        0x43c80000    # 400.0f
        0x44160000    # 600.0f
        0x44480000    # 800.0f
        0x447a0000    # 1000.0f
        0x44fa0000    # 2000.0f
        0x457a0000    # 4000.0f
        0x45bb8000    # 6000.0f
        0x45fa0000    # 8000.0f
        0x461c4000    # 10000.0f
        0x466a6000    # 15000.0f
        0x469c4000    # 20000.0f
        0x46ea6000    # 30000.0f
        0x471c4000    # 40000.0f
    .end array-data

    :array_7
    .array-data 4
        0x32
        0x50
        0x6e
        0x8c
        0xaa
        0xc8
        0xe6
        0x104
        0x122
        0x140
        0x15e
        0x190
        0x1f4
        0x258
        0x320
        0x3e8
    .end array-data

    :array_8
    .array-data 4
        0x4
        0xa
        0x10
        0x15
        0x1c
        0x21
        0x26
        0x2c
        0x32
        0x37
        0x3d
        0x43
        0x49
        0x4e
        0x54
        0x5a
    .end array-data

    :array_9
    .array-data 4
        0x42000000    # 32.0f
        0x42a00000    # 80.0f
        0x43200000    # 160.0f
        0x43a00000    # 320.0f
        0x44200000    # 640.0f
        0x44a00000    # 1280.0f
        0x45200000    # 2560.0f
        0x47480000    # 51200.0f
    .end array-data

    :array_a
    .array-data 4
        0x13
        0x1e
        0x29
        0x35
        0x40
        0x4b
        0x57
        0x62
        0x6e
        0x78
        0x84
        0x8f
        0x9b
        0xa6
        0xb1
        0xbe
    .end array-data

    :array_b
    .array-data 4
        0x440c0000    # 560.0f
        0x44480000    # 800.0f
        0x44c80000    # 1600.0f
        0x45480000    # 3200.0f
    .end array-data

    :array_c
    .array-data 4
        0xa
        0x14
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x50
        0x5a
        0x64
        0x6e
        0x78
        0x82
        0x8c
        0x96
        0xa0
    .end array-data

    :array_d
    .array-data 4
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x40c00000    # 6.0f
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41800000    # 16.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41b00000    # 22.0f
        0x41c00000    # 24.0f
        0x41d00000    # 26.0f
        0x41e00000    # 28.0f
        0x41f00000    # 30.0f
        0x42000000    # 32.0f
    .end array-data

    :array_e
    .array-data 4
        0x28
        0x50
        0x78
        0xa0
        0xc8
        0xf0
        0x118
        0x140
        0x168
        0x190
        0x1b8
        0x1e0
        0x208
        0x230
        0x258
        0x280
    .end array-data
.end method

.method public setIcType(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->icType:I

    return-void
.end method
