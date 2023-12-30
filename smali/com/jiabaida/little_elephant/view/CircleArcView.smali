.class public Lcom/jiabaida/little_elephant/view/CircleArcView;
.super Landroid/view/View;
.source "CircleArcView.java"


# instance fields
.field private childCount:F

.field private colorArcMax:I

.field private colorArcMin:I

.field private colorArc_RatioText:I

.field private colorArc_TagText:I

.field private decimalFormat:Ljava/text/DecimalFormat;

.field private lineWidth:F

.field private paintMax:Landroid/graphics/Paint;

.field private paintMin:Landroid/graphics/Paint;

.field private paintText1:Landroid/graphics/Paint;

.field private paintText2:Landroid/graphics/Paint;

.field private ratio:F

.field private ratioStr:Ljava/lang/String;

.field private rectf:Landroid/graphics/RectF;

.field private text_RatioSize:F

.field private text_TagSize:F

.field private topTagTxt:Ljava/lang/String;

.field private totalCount:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->totalCount:F

    .line 51
    iput p1, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->childCount:F

    const-string v0, ""

    .line 52
    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->topTagTxt:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##.#%"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->decimalFormat:Ljava/text/DecimalFormat;

    .line 56
    iput p1, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->ratio:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->totalCount:F

    .line 51
    iput v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->childCount:F

    const-string v1, ""

    .line 52
    iput-object v1, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->topTagTxt:Ljava/lang/String;

    .line 54
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.#%"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->decimalFormat:Ljava/text/DecimalFormat;

    .line 56
    iput v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->ratio:F

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/jiabaida/little_elephant/view/CircleArcView;->initPaint(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initPaint(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 59
    sget-object v0, Lcom/jiabaida/little_elephant/R$styleable;->CircleArcView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/high16 v0, 0x41200000    # 10.0f

    .line 60
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->lineWidth:F

    const/4 p2, 0x6

    .line 61
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->text_TagSize:F

    const/4 p2, 0x4

    .line 62
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->text_RatioSize:F

    const/4 p2, 0x1

    const v0, -0xffff01

    .line 63
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->colorArcMax:I

    const/4 v0, 0x2

    const/high16 v1, -0x10000

    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->colorArcMin:I

    const/4 v0, 0x5

    const/high16 v1, -0x1000000

    .line 65
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->colorArc_TagText:I

    const/4 v0, 0x3

    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->colorArc_RatioText:I

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintMax:Landroid/graphics/Paint;

    .line 69
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintMax:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->colorArcMax:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintMax:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->lineWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintMax:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintMax:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintMin:Landroid/graphics/Paint;

    .line 77
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintMin:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->colorArcMin:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintMin:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->lineWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 80
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintMin:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintMin:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintText1:Landroid/graphics/Paint;

    .line 84
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintText1:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->colorArc_TagText:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintText1:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintText1:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->text_TagSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintText2:Landroid/graphics/Paint;

    .line 90
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    iget-object p2, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintText2:Landroid/graphics/Paint;

    iget v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->colorArc_RatioText:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object p2, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintText2:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object p2, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintText2:Landroid/graphics/Paint;

    iget v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->text_RatioSize:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 94
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 175
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 176
    iget-object v5, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintMax:Landroid/graphics/Paint;

    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintMin:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintText1:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintText2:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 177
    iget v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->totalCount:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 178
    iget v1, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->childCount:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->ratio:F

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->rectf:Landroid/graphics/RectF;

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 180
    iget-object v7, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->rectf:Landroid/graphics/RectF;

    const/high16 v8, 0x43340000    # 180.0f

    const/high16 v0, 0x43340000    # 180.0f

    iget v1, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->ratio:F

    mul-float v9, v1, v0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintMin:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 183
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->decimalFormat:Ljava/text/DecimalFormat;

    iget v1, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->ratio:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->ratioStr:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintText2:Landroid/graphics/Paint;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->ratioStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->ratioStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    .line 185
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/CircleArcView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float/2addr v1, v0

    .line 187
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintText2:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 188
    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v6, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 190
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/CircleArcView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    .line 191
    iget-object v6, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->ratioStr:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 193
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->ratioStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintText2:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->topTagTxt:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 197
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintText1:Landroid/graphics/Paint;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->topTagTxt:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->topTagTxt:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v5, v4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    .line 198
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/CircleArcView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    div-float/2addr v1, v3

    sub-float/2addr v4, v1

    .line 200
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintText1:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 201
    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v5, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 203
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/CircleArcView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x3c

    int-to-float v0, v1

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->topTagTxt:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->paintText1:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 149
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 150
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 151
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 153
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 154
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v2, -0x80000000

    const/16 v3, 0xa0

    if-ne p1, v2, :cond_0

    if-ne p2, v2, :cond_0

    .line 157
    invoke-virtual {p0, v3, v3}, Lcom/jiabaida/little_elephant/view/CircleArcView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 159
    invoke-virtual {p0, v3, v1}, Lcom/jiabaida/little_elephant/view/CircleArcView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_1
    if-ne p2, v2, :cond_2

    .line 161
    invoke-virtual {p0, v0, v3}, Lcom/jiabaida/little_elephant/view/CircleArcView;->setMeasuredDimension(II)V

    .line 169
    :cond_2
    :goto_0
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->lineWidth:F

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/CircleArcView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->lineWidth:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/CircleArcView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->lineWidth:F

    sub-float/2addr v1, v2

    invoke-direct {p1, p2, p2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->rectf:Landroid/graphics/RectF;

    return-void
.end method

.method public setMaxCount(F)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->totalCount:F

    return-void
.end method

.method public declared-synchronized setParams(Ljava/lang/String;FFI)V
    .locals 1

    monitor-enter p0

    .line 132
    :try_start_0
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->topTagTxt:Ljava/lang/String;

    .line 133
    invoke-virtual {p0, p3}, Lcom/jiabaida/little_elephant/view/CircleArcView;->setMaxCount(F)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 p3, 0x0

    const/4 v0, 0x0

    aput v0, p1, p3

    const/4 p3, 0x1

    aput p2, p1, p3

    .line 134
    invoke-static {p1}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    mul-int/lit16 p4, p4, 0x3e8

    int-to-long p2, p4

    .line 135
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 136
    new-instance p2, Lcom/jiabaida/little_elephant/view/CircleArcView$1;

    invoke-direct {p2, p0}, Lcom/jiabaida/little_elephant/view/CircleArcView$1;-><init>(Lcom/jiabaida/little_elephant/view/CircleArcView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 143
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProgress(F)V
    .locals 0

    monitor-enter p0

    .line 112
    :try_start_0
    iput p1, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->childCount:F

    .line 113
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/CircleArcView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTopTag(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/CircleArcView;->topTagTxt:Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/CircleArcView;->invalidate()V

    return-void
.end method
