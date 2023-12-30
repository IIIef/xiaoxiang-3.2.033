.class public Lcom/jiabaida/little_elephant/view/CircleTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "CircleTextView.java"


# instance fields
.field private colorArcMax:I

.field private lineWidth:F

.field private paintMax:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/jiabaida/little_elephant/view/CircleTextView;->initPaint(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initPaint(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 37
    sget-object v0, Lcom/jiabaida/little_elephant/R$styleable;->CircleTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 38
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/jiabaida/little_elephant/view/CircleTextView;->lineWidth:F

    const/4 v0, 0x0

    const v1, -0xffff01

    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jiabaida/little_elephant/view/CircleTextView;->colorArcMax:I

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleTextView;->paintMax:Landroid/graphics/Paint;

    .line 42
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    iget-object p2, p0, Lcom/jiabaida/little_elephant/view/CircleTextView;->paintMax:Landroid/graphics/Paint;

    iget v0, p0, Lcom/jiabaida/little_elephant/view/CircleTextView;->colorArcMax:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object p2, p0, Lcom/jiabaida/little_elephant/view/CircleTextView;->paintMax:Landroid/graphics/Paint;

    iget v0, p0, Lcom/jiabaida/little_elephant/view/CircleTextView;->lineWidth:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    iget-object p2, p0, Lcom/jiabaida/little_elephant/view/CircleTextView;->paintMax:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    iget-object p2, p0, Lcom/jiabaida/little_elephant/view/CircleTextView;->paintMax:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 47
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 88
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 89
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/CircleTextView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/CircleTextView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/CircleTextView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/CircleTextView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/jiabaida/little_elephant/view/CircleTextView;->lineWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/jiabaida/little_elephant/view/CircleTextView;->paintMax:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setCircle(II)V
    .locals 1

    int-to-float p2, p2

    .line 79
    iput p2, p0, Lcom/jiabaida/little_elephant/view/CircleTextView;->lineWidth:F

    .line 80
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleTextView;->paintMax:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    iput p1, p0, Lcom/jiabaida/little_elephant/view/CircleTextView;->colorArcMax:I

    .line 82
    iget-object p2, p0, Lcom/jiabaida/little_elephant/view/CircleTextView;->paintMax:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/CircleTextView;->invalidate()V

    return-void
.end method

.method public setCircleLineColor(I)V
    .locals 1

    .line 56
    iput p1, p0, Lcom/jiabaida/little_elephant/view/CircleTextView;->colorArcMax:I

    .line 57
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleTextView;->paintMax:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/CircleTextView;->invalidate()V

    return-void
.end method

.method public setCircleLineWidth(I)V
    .locals 1

    int-to-float p1, p1

    .line 67
    iput p1, p0, Lcom/jiabaida/little_elephant/view/CircleTextView;->lineWidth:F

    .line 68
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleTextView;->paintMax:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/CircleTextView;->invalidate()V

    return-void
.end method
