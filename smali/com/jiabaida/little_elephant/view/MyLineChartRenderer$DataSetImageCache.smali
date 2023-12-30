.class Lcom/jiabaida/little_elephant/view/MyLineChartRenderer$DataSetImageCache;
.super Ljava/lang/Object;
.source "MyLineChartRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataSetImageCache"
.end annotation


# instance fields
.field private circleBitmaps:[Landroid/graphics/Bitmap;

.field private mCirclePathBuffer:Landroid/graphics/Path;

.field final synthetic this$0:Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;


# direct methods
.method private constructor <init>(Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer$DataSetImageCache;->this$0:Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer$DataSetImageCache;->mCirclePathBuffer:Landroid/graphics/Path;

    return-void
.end method

.method synthetic constructor <init>(Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;Lcom/jiabaida/little_elephant/view/MyLineChartRenderer$1;)V
    .locals 0

    .line 285
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer$DataSetImageCache;-><init>(Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;)V

    return-void
.end method


# virtual methods
.method protected fill(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;ZZ)V
    .locals 9

    .line 322
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleColorCount()I

    move-result v0

    .line 323
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleRadius()F

    move-result v1

    .line 324
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleHoleRadius()F

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 328
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    float-to-double v5, v1

    const-wide v7, 0x4000cccccccccccdL    # 2.1

    mul-double v5, v5, v7

    double-to-int v5, v5

    .line 329
    invoke-static {v5, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 331
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 332
    iget-object v6, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer$DataSetImageCache;->circleBitmaps:[Landroid/graphics/Bitmap;

    aput-object v4, v6, v3

    .line 333
    iget-object v4, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer$DataSetImageCache;->this$0:Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;

    invoke-static {v4}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->access$100(Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-interface {p1, v3}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p3, :cond_0

    .line 337
    iget-object v4, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer$DataSetImageCache;->mCirclePathBuffer:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 339
    iget-object v4, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer$DataSetImageCache;->mCirclePathBuffer:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v1, v1, v1, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 346
    iget-object v4, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer$DataSetImageCache;->mCirclePathBuffer:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v1, v1, v2, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 353
    iget-object v4, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer$DataSetImageCache;->mCirclePathBuffer:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer$DataSetImageCache;->this$0:Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;

    invoke-static {v6}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->access$200(Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 356
    :cond_0
    iget-object v4, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer$DataSetImageCache;->this$0:Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;

    .line 360
    invoke-static {v4}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->access$300(Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;)Landroid/graphics/Paint;

    move-result-object v4

    .line 356
    invoke-virtual {v5, v1, v1, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_1

    .line 363
    iget-object v4, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer$DataSetImageCache;->this$0:Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;

    .line 367
    invoke-static {v4}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->access$400(Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;)Landroid/graphics/Paint;

    move-result-object v4

    .line 363
    invoke-virtual {v5, v1, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected getBitmap(I)Landroid/graphics/Bitmap;
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer$DataSetImageCache;->circleBitmaps:[Landroid/graphics/Bitmap;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected init(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)Z
    .locals 2

    .line 299
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleColorCount()I

    move-result p1

    .line 302
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer$DataSetImageCache;->circleBitmaps:[Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 303
    new-array p1, p1, [Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer$DataSetImageCache;->circleBitmaps:[Landroid/graphics/Bitmap;

    goto :goto_0

    .line 305
    :cond_0
    array-length v0, v0

    if-eq v0, p1, :cond_1

    .line 306
    new-array p1, p1, [Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer$DataSetImageCache;->circleBitmaps:[Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
