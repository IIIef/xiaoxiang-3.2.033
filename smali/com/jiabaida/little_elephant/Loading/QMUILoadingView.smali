.class public Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;
.super Landroid/view/View;
.source "QMUILoadingView.java"


# static fields
.field private static final DEGREE_PER_LINE:I = 0x1e

.field private static final LINE_COUNT:I = 0xc


# instance fields
.field private mAnimateValue:I

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintColor:I

.field private mSize:I

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mAnimateValue:I

    .line 69
    new-instance p1, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView$1;

    invoke-direct {p1, p0}, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView$1;-><init>(Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;)V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 46
    iput p2, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mSize:I

    .line 47
    iput p3, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mPaintColor:I

    .line 48
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->initPaint()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/high16 v0, 0x7f030000

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mAnimateValue:I

    .line 69
    new-instance v0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView$1;-><init>(Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 37
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/jiabaida/little_elephant/R$styleable;->QMUILoadingView:[I

    invoke-virtual {v0, p2, v1, p3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x1

    const/16 v0, 0x10

    .line 38
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mSize:I

    const/4 p3, -0x1

    .line 39
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mPaintColor:I

    .line 40
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->initPaint()V

    return-void
.end method

.method static synthetic access$002(Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mAnimateValue:I

    return p1
.end method

.method private drawLoading(Landroid/graphics/Canvas;I)V
    .locals 11

    .line 101
    iget v0, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mSize:I

    div-int/lit8 v1, v0, 0xc

    div-int/lit8 v0, v0, 0x6

    .line 102
    iget-object v2, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mPaint:Landroid/graphics/Paint;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float p2, p2

    .line 104
    iget v2, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mSize:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, p2, v3, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 105
    iget p2, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mSize:I

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 p2, 0x0

    :goto_0
    const/16 v2, 0xc

    if-ge p2, v2, :cond_0

    const/high16 v2, 0x41f00000    # 30.0f

    .line 108
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 109
    iget-object v2, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    add-int/lit8 p2, p2, 0x1

    int-to-float v4, p2

    mul-float v4, v4, v3

    const/high16 v3, 0x41400000    # 12.0f

    div-float/2addr v4, v3

    float-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 110
    iget v2, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mSize:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    int-to-float v9, v0

    .line 111
    iget-object v10, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 112
    iget v2, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mPaint:Landroid/graphics/Paint;

    .line 53
    iget v1, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mPaintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v0, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    iget-object v0, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 131
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 132
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->start()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 137
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 138
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->stop()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 123
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 124
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 125
    iget v1, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mAnimateValue:I

    mul-int/lit8 v1, v1, 0x1e

    invoke-direct {p0, p1, v1}, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->drawLoading(Landroid/graphics/Canvas;I)V

    .line 126
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 118
    iget p1, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mSize:I

    invoke-virtual {p0, p1, p1}, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 143
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->start()V

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->stop()V

    :goto_0
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 59
    iput p1, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mPaintColor:I

    .line 60
    iget-object v0, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->invalidate()V

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mSize:I

    .line 66
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->requestLayout()V

    return-void
.end method

.method public start()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 79
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 80
    iget-object v1, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 81
    iget-object v0, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 82
    iget-object v0, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 83
    iget-object v0, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 84
    iget-object v0, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 85
    iget-object v0, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0xb
    .end array-data
.end method

.method public stop()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 94
    iget-object v0, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 95
    iget-object v0, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->mAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method
