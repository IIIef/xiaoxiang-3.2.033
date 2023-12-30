.class public Lcom/jiabaida/little_elephant/util/LinearGradientUtil;
.super Ljava/lang/Object;
.source "LinearGradientUtil.java"


# instance fields
.field private mEndColor:I

.field private mStartColor:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/jiabaida/little_elephant/util/LinearGradientUtil;->mStartColor:I

    .line 15
    iput p2, p0, Lcom/jiabaida/little_elephant/util/LinearGradientUtil;->mEndColor:I

    return-void
.end method


# virtual methods
.method public getColor(F)I
    .locals 10

    .line 27
    iget v0, p0, Lcom/jiabaida/little_elephant/util/LinearGradientUtil;->mStartColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 28
    iget v1, p0, Lcom/jiabaida/little_elephant/util/LinearGradientUtil;->mStartColor:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 29
    iget v2, p0, Lcom/jiabaida/little_elephant/util/LinearGradientUtil;->mStartColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 31
    iget v3, p0, Lcom/jiabaida/little_elephant/util/LinearGradientUtil;->mEndColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 32
    iget v4, p0, Lcom/jiabaida/little_elephant/util/LinearGradientUtil;->mEndColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 33
    iget v5, p0, Lcom/jiabaida/little_elephant/util/LinearGradientUtil;->mEndColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v6, v0

    sub-int/2addr v3, v0

    int-to-float v0, v3

    mul-float v0, v0, p1

    add-float/2addr v6, v0

    float-to-double v6, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v0, v6

    int-to-float v3, v1

    sub-int/2addr v4, v1

    int-to-float v1, v4

    mul-float v1, v1, p1

    add-float/2addr v3, v1

    float-to-double v3, v3

    add-double/2addr v3, v8

    double-to-int v1, v3

    int-to-float v3, v2

    sub-int/2addr v5, v2

    int-to-float v2, v5

    mul-float v2, v2, p1

    add-float/2addr v3, v2

    float-to-double v2, v3

    add-double/2addr v2, v8

    double-to-int p1, v2

    const/16 v2, 0xff

    .line 39
    invoke-static {v2, v0, p1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method public setmEndColor(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/jiabaida/little_elephant/util/LinearGradientUtil;->mEndColor:I

    return-void
.end method

.method public setmStartColor(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/jiabaida/little_elephant/util/LinearGradientUtil;->mStartColor:I

    return-void
.end method
